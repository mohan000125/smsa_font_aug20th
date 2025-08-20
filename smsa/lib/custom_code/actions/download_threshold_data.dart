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

Future downloadThresholdData(
  String? downloadType,
  String? apiBaseURL,
) async {
  // Add your function code here!
  final String url =
      '$apiBaseURL/high-value-alerts-api/download/thresholdDownload?downloadType=$downloadType';

  final userId = FFAppState().userID;

  String downloadFileName;
  switch (downloadType) {
    case 'TTCSV':
      downloadFileName = 'SMSA_Threshold_Report_${userId}.csv';
      break;
    case 'TTXLS':
      downloadFileName = 'SMSA_Threshold_Report_${userId}.xls';
      break;
    case 'TMCSV':
      downloadFileName = 'SMSA_ThresholdMaster_Report_${userId}.csv';
      break;
    case 'TMXLS':
      downloadFileName = 'SMSA_ThresholdMaster_Report_${userId}.xls';
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
