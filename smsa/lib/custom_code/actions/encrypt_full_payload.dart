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

Future<dynamic> encryptFullPayload(
    String token,
    String deviceHash,
    String? sortType,
    String? uetr,
    String? userRef,
    String? generalsearch,
    List<String>? senderBic,
    List<String>? receiverBic,
    List<String>? inputRefNo,
    List<String>? inpOut,
    List<String>? fileName,
    List<String>? mtCode,
    List<String>? transactionRef,
    List<String>? fileType,
    List<String>? msgType,
    String? dateFrom,
    String? dateTo,
    String? fromTime,
    String? toTime,
    String? fromAmount,
    String? toAmount,
    String? rawMessageData,
    List<int>? messageId,
    List<String>? transactionAmount,
    List<String>? columnSort,
    List<String>? currency) async {
  // Add your function code here!
  try {
    final filterList = <Map<String, dynamic>>[];

    final payload = {
      'tokenRequest': {
        'token': token,
        'DeviceHash': deviceHash,
      },
      'filter': {
        "messageId": messageId,
        "senderBic": senderBic,
        "receiverBic": receiverBic,
        "inputRefNo": inputRefNo,
        "inpOut": inpOut,
        "fileName": fileName,
        "mtCode": mtCode,
        "dateFrom": dateFrom,
        "dateTo": dateTo,
        "transactionRef": transactionRef,
        "fileType": fileType,
        "msgType": msgType,
        "currency": currency,
        "columnSort": columnSort,
        "sortType": sortType,
        "uetr": uetr,
        "userRef": userRef,
        "fromTime": fromTime,
        "toTime": toTime,
        "fromAmount": fromAmount,
        "toAmount": toAmount,
        "rawMessageData": rawMessageData,
      },
    };

    // AES encryption
    final key = encrypt.Key.fromUtf8('1836204826394192');
    final iv = encrypt.IV.fromUtf8('1234567890abcdef');
    final encrypter = encrypt.Encrypter(
      encrypt.AES(key, mode: encrypt.AESMode.cbc, padding: 'PKCS7'),
    );

    final encrypted = encrypter.encrypt(jsonEncode(payload), iv: iv);

    return encrypted.base64.toString();
  } catch (e) {
    return {
      'encryptedPayload': '',
    };
  }
}
