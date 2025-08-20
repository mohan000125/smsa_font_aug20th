class FaceIDVerificator {
  appConfig;

  // Helper function to decode base64Url to string
  base64UrlDecode(str) {
    // Convert base64url to base64
    let base64 = str.replace(/-/g, "+").replace(/_/g, "/");
    // Add padding if needed
    while (base64.length % 4) {
      base64 += "=";
    }
    // Decode base64 to string
    return atob(base64);
  }

  // Helper function to convert base64Url to Uint8Array
  base64UrlToUint8Array(base64Url) {
    const base64 = base64Url.replace(/-/g, "+").replace(/_/g, "/");
    const padding = "=".repeat((4 - (base64.length % 4)) % 4);
    const base64Padded = base64 + padding;
    const rawData = atob(base64Padded);
    const outputArray = new Uint8Array(rawData.length);

    for (let i = 0; i < rawData.length; ++i) {
      outputArray[i] = rawData.charCodeAt(i);
    }
    return outputArray;
  }

  // Helper function to verify RS256 JWT signature using Web Crypto API
  async verifyRs256JwtSignature(token, publicKeyPem) {
    try {
      // Split the token into parts
      const parts = token.split(".");
      if (parts.length !== 3) {
        return false;
      }

      const [headerB64, payloadB64, signatureB64] = parts;

      // Parse the header
      const header = JSON.parse(this.base64UrlDecode(headerB64));

      // Ensure algorithm is RS256
      if (header.alg !== "RS256") {
        return false;
      }

      // Prepare the message to verify (header.payload)
      const messageToVerify = new TextEncoder().encode(
        `${headerB64}.${payloadB64}`
      );

      // Convert signature from base64url to Uint8Array
      const signature = this.base64UrlToUint8Array(signatureB64);

      // Import the public key
      // You need to strip PEM headers and convert to binary form
      let pemContents = publicKeyPem
        .replace("-----BEGIN PUBLIC KEY-----", "")
        .replace("-----END PUBLIC KEY-----", "")
        .replace(/\s/g, "");

      const binaryDer = this.base64UrlToUint8Array(pemContents);

      const publicKey = await window.crypto.subtle.importKey(
        "spki",
        binaryDer,
        {
          name: "RSASSA-PKCS1-v1_5",
          hash: { name: "SHA-256" },
        },
        false,
        ["verify"]
      );

      // Verify the signature
      const isValid = await window.crypto.subtle.verify(
        {
          name: "RSASSA-PKCS1-v1_5",
          hash: { name: "SHA-256" },
        },
        publicKey,
        signature,
        messageToVerify
      );

      return isValid;
    } catch (error) {
      return false;
    }
  }

  async decodeAndVerifyJWT(token, user) {
    // Decode and parse JSON
    const base64Url = token.split(".")[1]; // Get the payload part
    const base64 = base64Url.replace(/-/g, "+").replace(/_/g, "/"); // Convert to base64 format
    const decoded = JSON.parse(atob(base64)); // Decode base64
    // Decode and parse JSON
    if (decoded.username.toUpperCase() === user.toUpperCase()) {
      return true;
    } else {
      return false;
    }
  }

  async generateRandomString(length) {
    var characters =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    var result = "";
    var charactersLength = characters.length;
    for (var i = 0; i < length; i++) {
      result += characters.charAt(Math.floor(Math.random() * charactersLength));
    }
    return result;
  }
  async generateApplicationSecret(applicationSecretPlainText) {
    var randomSalt = await this.generateRandomString(20);
    var applicationSecretPlainTextWithSalt =
      applicationSecretPlainText + randomSalt;
    var hash = CryptoJS.SHA256(applicationSecretPlainTextWithSalt).toString(
      CryptoJS.enc.Base64
    );
    var applicationSecret = randomSalt + hash;
    return applicationSecret;
  }

  async encryptData(data, secret) {
    let key = secret || "";
    const alphabet = "abcdefghijklmnopqrstuvwxyz";

    // Ensure key is exactly 16 characters
    if (key.length < 16) {
      key += alphabet.slice(0, 16 - key.length);
    } else {
      key = key.substring(0, 16);
    }
    return CryptoJS.AES.encrypt(data, key).toString();
  }

  // Generate RID API function
  async initializeFaceID(config) {
    // Setting the config details (Username, application Id and application secret in session storage)
    sessionStorage.setItem("appConfig", JSON.stringify(config));

    // Setting the config data from the index1.js in appconfig
    this.appConfig = config;

    //Generate RID API call
    try {
      // Encrypt the username
      const generatedApplicationSecret = await this.generateApplicationSecret(
        this.appConfig.applicationSecret
      );

      const encryptedUsername = await this.encryptData(
        this.appConfig.username,
        generatedApplicationSecret
      );

      //Setting user ID payload with encrypted username
      const payload = {
        searchAttributes: [
          {
            attributeName: "USER_ID",
            attributeValue: encryptedUsername,
          },
        ],
      };
      const initialiseAPIURL =
        this.appConfig.initializeFaceIDURL + "v4/users/generate-faceid_token";
      // Storing Response of Generate RID API call.
      const response = await fetch(initialiseAPIURL, {
        method: "POST",
        headers: {
          "Application-Id": this.appConfig.applicationId,
          "Application-Secret": generatedApplicationSecret,
          "Content-Type": "application/json",
          // [this.appConfig.headerName]: this.appConfig.headerValue, // Uncomment when sending for build.
        },
        body: JSON.stringify(payload),
      });
      // Redirect the page, if RID sent successfully. The Application ID, secret, username and redirect url for validate page will be sent to the url
      if (response.ok) {
        const data = await response.json(); // Response of the Generate RID API.

        const baseUrl = data.redirectUrl;
        if (
          this.decodeAndVerifyJWT(data.bearerToken, this.appConfig.username)
        ) {
          const bearerToken = data.bearerToken;

          //Redirect URL for the face ID verification page - Modify this based on the requirement (Base URL should be same as the Generate and Validate OTP API URL)
          const redirectUrl = `${baseUrl}&rid=${data.rid}&srURL=${this.appConfig.srURL}&erURL=${this.appConfig.erURL}&rtn=${bearerToken}&authType=FACE_ID&appId=${this.appConfig.applicationId}&appSecret=${generatedApplicationSecret}`;

          // Redirect the page after 3 sec delay - this can be changed as per requirement.
          setTimeout(() => {
            window.location.href = redirectUrl;
          }, 1000);

          // Show success message on the Generate RID page for success
          return {
            success: true,
            data: data,
            message: "Success",
            redirectUrl: redirectUrl,
          };
        } else {
          return {
            success: false,
            data: errorData,
            message: `Failed: Token username does not match`,
          };
        }
      } else {
        // Error response data.
        const errorData = await response.text();

        // Show error message on the Generate RID page for Error
        return {
          success: false,
          data: errorData,
          message: `Failed: ${errorData}`,
        };
      }
    } catch (error) {
      // Show error message on the Generate RID page for API fail errors.
      return {
        success: false,
        data: error,
        message: "RID Generation Failed",
      };
    }
  }

  // Validate RID function with RS256 JWT verification
  async validateFaceID(ridToken, authToken) {
    // Getting the (Username, application ID, application Name from the session storage)
    const appConfig = JSON.parse(sessionStorage.getItem("appConfig"));

    // Clearing session storage data, after storing in appConfig
    sessionStorage.clear("appConfig");

    // Public key for RS256 verification - Replace with your actual public key
    const publicKeyPem = `-----BEGIN PUBLIC KEY-----
    MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA16DR41QYSrKx4lJPz1YW
    EcjUVj2gCPWqCCmwllQAHBKrQLZyyBbeKhShYqPQx5A+4dYDYh8I7yqRsJrVRMyj
    DSz0zuvkw7whJtRVPbR41QzD/S3GslecsTR1ItmAT6OnUfebLtlkbpmX6PpcSAYp
    qGtqJuRuReNFKjWab7wVX9Z5n2oqsQjd6CMjbfDdRtcbyMr7Z9X210KNHPkBXDju
    e+wsJGTIICNx3keYhix4y22+Uclmrinplj8sSuijuAQ76i9eE4LmotPLeZCvNUfs
    fWKfYnTevvwUrKsWVlrLgAFB1ehLswX/5kn/TuOT+qcdHlN6H2FocijE1fY3snAi
    IwIDAQAB
    -----END PUBLIC KEY-----`;

    // const testToken = "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxMjM0NTYiLCJpYXQiOjE2ODAwMDAwMDAsImV4cCI6MTcwMDAwMDAwMH0.INVALID_SIGNATURE"

    // Verify JWT token signature before proceeding
    const isTokenValid = await this.verifyRs256JwtSignature(
      authToken,
      publicKeyPem
    );
    const isUserValid = await this.decodeAndVerifyJWT(
      authToken,
      appConfig.username
    );

    if (!isTokenValid) {
      return {
        success: false,
        data: null,
        message: "Invalid JWT token signature",
      };
    }
    if (!isUserValid) {
      return {
        success: false,
        data: null,
        message: "Invalid JWT token user",
      };
    }

    // Validate RID API call
    try {
      // User name set in payload
      const payload = {
        // searchAttributes: [
        //     {
        //         attributeName: "USER_ID",
        //         attributeValue: appConfig.username
        //     }
        // ],
        rid: ridToken,
      };

      const validateFaceIDURL =
        appConfig.validateFaceIDURL + "v4/users/validate-faceid_token";

      // Validate API called and response stored.
      const response = await fetch(validateFaceIDURL, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: "Bearer " + authToken,
          [appConfig.headerName]: appConfig.headerValue,
        },
        body: JSON.stringify(payload),
      });

      // If Validate API call is success, RID verification can be success or failed.
      if (response.ok) {
        const data = await response.json();
        return {
          success: true,
          data: data,
          message: "Success",
        };
      } else {
        const errorData = await response.text();
        return {
          success: false,
          data: errorData,
          message: `Failure: ${errorData}`,
        };
      }
    } catch (error) {
      return {
        success: false,
        data: error,
        message: "Failed",
      };
    }
  }
  // Function to verify JWT token signature and user validation
  async verifyJwtToken(authToken, expectedUsername = null) {
    try {
      sessionStorage.removeItem("rtn");

      // First, decode the token to get the username
      let tokenUsername = null;
      let tokenPayload = null;

      try {
        tokenPayload = JSON.parse(
          this.base64UrlDecode(authToken.split(".")[1])
        );
        tokenUsername = tokenPayload.username;
      } catch (decodeError) {
        return {
          success: false,
          data: null,
          message: "Failed to decode JWT token payload",
        };
      }

      // Determine which username to validate against
      let userToValidate = expectedUsername;

      // If no expected username provided, try to get from session storage
      if (!userToValidate) {
        try {
          const appConfig = JSON.parse(sessionStorage.getItem("appConfig"));
          sessionStorage.clear();
          userToValidate = appConfig ? appConfig.username : null;
        } catch (e) {
          console.log("No session storage config found");
        }
      }

      // If still no username to validate against, use the token's username
      if (!userToValidate) {
        userToValidate = tokenUsername;
      }

      // Public key for RS256 verification
      const publicKeyPem = `-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA16DR41QYSrKx4lJPz1YW
EcjUVj2gCPWqCCmwllQAHBKrQLZyyBbeKhShYqPQx5A+4dYDYh8I7yqRsJrVRMyj
DSz0zuvkw7whJtRVPbR41QzD/S3GslecsTR1ItmAT6OnUfebLtlkbpmX6PpcSAYp
qGtqJuRuReNFKjWab7wVX9Z5n2oqsQjd6CMjbfDdRtcbyMr7Z9X210KNHPkBXDju
e+wsJGTIICNx3keYhix4y22+Uclmrinplj8sSuijuAQ76i9eE4LmotPLeZCvNUfs
fWKfYnTevvwUrKsWVlrLgAFB1ehLswX/5kn/TuOT+qcdHlN6H2FocijE1fY3snAi
IwIDAQAB
-----END PUBLIC KEY-----`;

      // Verify JWT token signature
      const isTokenValid = await this.verifyRs256JwtSignature(
        authToken,
        publicKeyPem
      );

      if (!isTokenValid) {
        return {
          success: false,
          data: {
            username: tokenUsername || "Unknown",
            status: "FAILED",
            errorMessage: "Invalid JWT token signature",
          },
          message: "Invalid JWT token signature",
        };
      }

      // Verify username matches (case-insensitive comparison)
      const isUserValid =
        tokenUsername &&
        userToValidate &&
        tokenUsername.toUpperCase() === userToValidate.toUpperCase();

      if (!isUserValid) {
        return {
          success: false,
          data: {
            username: tokenUsername || "Unknown",
            status: "FAILED",
            errorMessage: `Username mismatch: token has '${tokenUsername}', expected '${userToValidate}'`,
          },
          message: `JWT token username (${tokenUsername}) does not match expected user (${userToValidate})`,
        };
      }

      // Return only username, status, and errorMessage
      const encoded = btoa(tokenUsername || "");
      if (
        tokenPayload.Status &&
        (tokenPayload.Status === "S2FA" || tokenPayload.Status === "SUCCESS"||tokenPayload.status === "S")
      ) {
        return {
          success: true,
          data: {
            username: encoded,
            token: authToken,
            status: tokenPayload.Status || "SUCCESS",
            errorMessage: null,
          },
          message: "Authentication Successful",
        };
      } else {
        return {
          success: false,
          data: {
            username: encoded,
            token: authToken,
            status: "Failed",
            errorMessage: tokenPayload.errorMessage || null,
          },
          message: "Authentication failed.please try again after some time.",
        };
      }
    } catch (error) {
      console.error("Error during JWT token verification:", error);
      return {
        success: false,
        data: {
          username: "Unknown",
          status: "FAILED",
          errorMessage: "Error during JWT token verification",
        },
        message: "Error during JWT token verification",
      };
    }
  }
}

// Create a single instance of FaceIDVerificator
const faceIDVerificatorInstance = new FaceIDVerificator();

// Expose methods globally
window.FaceID = {
  initializeFaceID: (config) =>
    faceIDVerificatorInstance.initializeFaceID(config),
  validateFaceID: (otpToken, config) =>
    faceIDVerificatorInstance.validateFaceID(otpToken, config),
  verifyJwtToken: (authToken, username) =>
    faceIDVerificatorInstance.verifyJwtToken(authToken, username),
};

window.FaceID_initializeFaceID = async function (config) {
  try {
    const result = await window.FaceID.initializeFaceID(config);
    console.log("FaceID initialized:", result);
  } catch (err) {
    console.error("FaceID init error:", err);
  }
};
