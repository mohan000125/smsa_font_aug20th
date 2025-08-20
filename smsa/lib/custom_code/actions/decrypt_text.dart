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

import 'package:encrypt/encrypt.dart' as encrypt;

Future<String> decryptText(String encryptedBase64) async {
  // Add your function code here!
  try {
    final key = encrypt.Key.fromUtf8('1836204826394192');
    final iv = encrypt.IV.fromUtf8('1234567890abcdef');

    final encrypter = encrypt.Encrypter(
      encrypt.AES(key, mode: encrypt.AESMode.cbc, padding: 'PKCS7'),
    );

    final decrypted = encrypter.decrypt64(encryptedBase64, iv: iv);
    return decrypted;
  } catch (e) {
    // Optionally log error
    return ''; // Or return 'Error: ${e.toString()}' for debugging
  }
}
