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

//
import 'package:http/http.dart' as http;
import 'dart:html' as html;
import 'dart:convert';
import 'package:encrypt/encrypt.dart' as encrypt;

Future downloadSwiftZipFile(
  String? downloadType,
  List<GetSearchModelStruct>? seletedRowData,
) async {
  // Add your function code here!

  final String url = (downloadType == 'XLSX')
      ? 'https://icmsuat.icicibank.com/smsa-search-api/download/XLSX?downloadType=XLSX'
      : 'https://icmsuat.icicibank.com/smsa-search-api/download?downloadType=$downloadType';

  // Determine the appropriate download file name
  final userId = FFAppState().userID;

  String downloadFileName;
  switch (downloadType) {
    case 'XLSX':
      downloadFileName = 'General_search_Report_${userId}.zip';
      break;
    case 'CSV':
      downloadFileName = 'General_search_Report_${userId}.zip';
      break;
    case 'TXT':
      downloadFileName = 'General_search_Report_${userId}.zip';
      break;
    case 'PDF':
      downloadFileName = 'General_search_Report.pdf';
      break;
    case 'CTXT':
      downloadFileName = 'General_search_Report.txt';
      break;
    case 'CCSV':
      downloadFileName = 'General_search_Report.csv';
      break;
    case 'CXLSX':
      downloadFileName = 'General_search_Report.xls';
      break;
    default:
      print('Unsupported download type: $downloadType');
      //FFAppState().isDownloaded = false; // Hide loader
      return;
  }

  print('Senders List: $seletedRowData');

  // Payload (without downloadType inside)
  final Map<String, dynamic> payload = {
    "tokenRequest": {
      "token": FFAppState().AccessToken,
      "DeviceHash": FFAppState().DeviceHash
    },
    "filter": {
      "messageId":
          (seletedRowData ?? []).map((item) => item.messageId).toList(),
      "senderBic": [FFAppState().senderSearch],
      "receiverBic": [FFAppState().receiverSearch],
      "inputRefNo": [],
      "inpOut": FFAppState().identifiersDownload,
      "fileName": [],
      "mtCode": [],
      "transactionRef": [],
      "fileType": FFAppState().fileTypeDownload,
      "msgType": []
    }
  };

  try {
    // final response = await http.post(
    //   Uri.parse(url),
    //   headers: {
    //     'Content-Type': 'application/json',
    //   },
    //   body: jsonEncode(payload),
    // );

    // Encrypt the payload
    final key = encrypt.Key.fromUtf8('1836204826394192');
    final iv = encrypt.IV.fromUtf8('1234567890abcdef');
    final encrypter = encrypt.Encrypter(
      encrypt.AES(key, mode: encrypt.AESMode.cbc, padding: 'PKCS7'),
    );

    final encrypted = encrypter.encrypt(jsonEncode(payload), iv: iv);

    final Map<String, dynamic> encryptedPayload = {
      'encryptedPayload': encrypted.base64,
    };

    final response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(encryptedPayload),
    );

    if (response.statusCode == 200) {
      final blob = html.Blob([response.bodyBytes]);
      final urlObject = html.Url.createObjectUrlFromBlob(blob);
      final anchor = html.AnchorElement(href: urlObject)
        ..setAttribute("download", downloadFileName)
        ..click();
      html.Url.revokeObjectUrl(urlObject);
      print("Download successful: $downloadFileName");

      // Update success status
      FFAppState().update(() {
        FFAppState().downloadSuccess = true;
      });
    } else {
      print("Failed to download $downloadType: ${response.statusCode}");
      //  Update failure status
      FFAppState().update(() {
        FFAppState().downloadSuccess = false;
      });
    }
  } catch (e) {
    print("Error downloading $downloadType file: $e");
    //  Update failure status
    FFAppState().update(() {
      FFAppState().downloadSuccess = false;
    });
  }
  // FFAppState().isDownloaded = false;
}
