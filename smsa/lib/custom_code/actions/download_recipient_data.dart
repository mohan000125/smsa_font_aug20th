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

Future downloadRecipientData(
  String? downloadType,
  String? apiBaseURL,
) async {
  // Add your function code here!
  final String url =
      '$apiBaseURL/high-value-alerts-api/download/recepientDownload?downloadType=$downloadType';

  final userId = FFAppState().userID;

  String downloadFileName;
  switch (downloadType) {
    case 'RTCSV':
      downloadFileName = 'SMSA_Recipient_Report_${userId}.csv';
      break;
    case 'RTXLS':
      downloadFileName = 'SMSA_Recipient_Report_${userId}.xls';
      break;
    case 'RMCSV':
      downloadFileName = 'SMSA_RecipientMaster_Report_${userId}.csv';
      break;
    case 'RMXLS':
      downloadFileName = 'SMSA_RecipientMaster_Report_${userId}.xls';
      break;
    default:
      print('Unsupported download type: $downloadType');
      return;
  }

  final Map<String, dynamic> payload = {
    "tokenMap": {
      "additionalProp1": "string",
      "additionalProp2": "string",
      "additionalProp3": "string"
    },
    "filter": {}
  };

  try {
    final response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(payload),
    );

    if (response.statusCode == 200) {
      final blob = html.Blob([response.bodyBytes]);
      final urlObject = html.Url.createObjectUrlFromBlob(blob);
      final anchor = html.AnchorElement(href: urlObject)
        ..setAttribute("download", downloadFileName)
        ..click();
      html.Url.revokeObjectUrl(urlObject);
      print("Download successful: $downloadFileName");

      FFAppState().update(() {
        FFAppState().downloadSuccess = true;
      });
    } else {
      print("Failed to download $downloadType: ${response.statusCode}");
      FFAppState().update(() {
        FFAppState().downloadSuccess = false;
      });
    }
  } catch (e) {
    print("Error downloading $downloadType file: $e");
    FFAppState().update(() {
      FFAppState().downloadSuccess = false;
    });
  }
}
