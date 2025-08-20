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

import 'dart:typed_data';
import 'dart:html' as html;
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:intl/intl.dart';

Future generateAndDownloadPdf(String? detailsData) async {
  if (detailsData == null || detailsData.trim().isEmpty) {
    print('No data to generate PDF.');
    return;
  }

  // Print the passed string to console
  print("Generating PDF with content:\n$detailsData");

  final pdf = pw.Document();

  final today = DateFormat('yyyy-MM-dd').format(DateTime.now());

  pdf.addPage(
    pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      margin: pw.EdgeInsets.all(20),
      build: (pw.Context context) => [
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.Text('Date: $today', style: pw.TextStyle(fontSize: 10)),
            pw.Text('SMSA',
                style:
                    pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold)),
            pw.SizedBox(width: 50),
          ],
        ),
        pw.SizedBox(height: 10),
        pw.Text(detailsData, style: pw.TextStyle(fontSize: 8)),
      ],
    ),
  );

  final Uint8List pdfData = await pdf.save();

  final blob = html.Blob([pdfData], 'application/pdf');
  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.AnchorElement(href: url)
    ..setAttribute("download", "smsa_report.pdf")
    ..style.display = "none";
  html.document.body?.append(anchor);
  anchor.click();
  anchor.remove();
  html.Url.revokeObjectUrl(url);
}
