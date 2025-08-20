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
import 'package:intl/intl.dart';

Future<String> getCurrentFormattedDate() async {
  // Add your function code here!
  //
  final now = DateTime.now();
  final formatted = DateFormat('yyyy-MM-dd').format(now);
  return formatted;
}
