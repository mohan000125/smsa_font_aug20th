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

// on keyboard enter perform the action OnEnter
import 'package:flutter/services.dart';

Future navigateOnEnter(Future Function()? onEnter) async {
  // Create a focus node to listen for keyboard events
  final focusNode = FocusNode();

  // Set up keyboard listener for Enter key
  RawKeyboard.instance.addListener((RawKeyEvent event) async {
    if (event is RawKeyDownEvent) {
      // Check if Enter key was pressed
      if (event.logicalKey == LogicalKeyboardKey.enter ||
          event.logicalKey == LogicalKeyboardKey.numpadEnter) {
        // Execute the onEnter callback if provided
        if (onEnter != null) {
          await onEnter();
        }
      }
    }
  });

  // Clean up the focus node when done
  focusNode.dispose();
}
