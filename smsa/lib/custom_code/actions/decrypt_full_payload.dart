// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:encrypt/encrypt.dart' as encrypt;

Future<dynamic> decryptFullPayload(String encryptedPayload) async {
  // Add your function code here!
  // try {
  //   // Handle if payload is JSON string or direct base64
  //   String base64Encrypted;
  //   print("encryptedPayload $encryptedPayload");
  //   if (encryptedPayload is String && encryptedPayload.trim().startsWith('{')) {
  //     // It's a JSON string, extract 'payload'
  //     final parsed = jsonDecode(encryptedPayload);
  //     base64Encrypted = parsed['encryptedPayload'];
  //   } else if (encryptedPayload is Map &&
  //       encryptedPayload.containsKey('encryptedPayload')) {
  //     // It's already a Map
  //     base64Encrypted = encryptedPayload['encryptedPayload'];
  //   } else if (encryptedPayload is String) {
  //     // It's just a plain base64 string
  //     base64Encrypted = encryptedPayload;
  //   } else {
  //     throw FormatException("Invalid input format for payload");
  //   }

  //   final key = encrypt.Key.fromUtf8('1836204826394192');
  //   final iv = encrypt.IV.fromUtf8('1234567890abcdef');
  //   final encrypter = encrypt.Encrypter(
  //     encrypt.AES(key, mode: encrypt.AESMode.cbc, padding: 'PKCS7'),
  //   );

  //   final decrypted = encrypter.decrypt64(base64Encrypted, iv: iv);
  //   final decoded = jsonDecode(decrypted);
  //   print("decodedSearchData: $decoded");

  //   return decoded;
  // } catch (e) {
  //   return {
  //     'error': 'Decryption failed',
  //     'details': e.toString(),
  //   };
  // }
  // Define encryption key and IV
  final key = encrypt.Key.fromUtf8('1836204826394192');
  final iv = encrypt.IV.fromUtf8('1234567890abcdef');
  final encrypter = encrypt.Encrypter(
    encrypt.AES(key, mode: encrypt.AESMode.cbc, padding: 'PKCS7'),
  );

  try {
    print("encryptedPayload: $encryptedPayload");
    // Decrypt the encrypted message (base64)
    final decryptedString = encrypter.decrypt64(encryptedPayload, iv: iv);

    // Parse the decrypted string as JSON
    final decodedJson = jsonDecode(decryptedString);
    print("decodedJson: $decodedJson");

    // Return the decoded JSON (Map or List depending on structure)
    return decodedJson;
  } catch (e) {
    // Return error message or empty object if decryption fails
    return {'error': e.toString()};
  }
}
