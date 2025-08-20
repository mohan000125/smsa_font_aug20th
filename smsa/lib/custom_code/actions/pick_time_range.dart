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
import 'package:time_range_picker/time_range_picker.dart';

Future<dynamic> pickTimeRange(BuildContext context) async {
  // Add your function code here!
  //
  TimeOfDay start = const TimeOfDay(hour: 8, minute: 0);
  TimeOfDay end = const TimeOfDay(hour: 17, minute: 0);

  return showDialog<Map<String, String>?>(
    context: context,
    builder: (ctx) {
      return Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          width: 360, // custom width
          //height: 450,
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 300,
                height: 400,
                child: TimeRangePicker(
                  start: start,
                  end: end,
                  ticks: 24,
                  ticksColor: Colors.grey,
                  labels: [
                    ClockLabel.fromIndex(idx: 0, length: 8, text: "0h"),
                    ClockLabel.fromIndex(idx: 1, length: 8, text: "3h"),
                    ClockLabel.fromIndex(idx: 2, length: 8, text: "6h"),
                    ClockLabel.fromIndex(idx: 3, length: 8, text: "9h"),
                    ClockLabel.fromIndex(idx: 4, length: 8, text: "12h"),
                    ClockLabel.fromIndex(idx: 5, length: 8, text: "15h"),
                    ClockLabel.fromIndex(idx: 6, length: 8, text: "18h"),
                    ClockLabel.fromIndex(idx: 7, length: 8, text: "21h"),
                  ],
                  labelStyle: TextStyle(color: Colors.orange),
                  strokeColor: Colors.blue,
                  handlerColor: Colors.blue,
                  selectedColor: Colors.blue.withOpacity(0.5),
                  backgroundColor: Colors.white,
                  labelOffset: 15,
                  rotateLabels: false,
                  hideButtons: true, // hides internal buttons
                  onStartChange: (newStart) => start = newStart,
                  onEndChange: (newEnd) => end = newEnd,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(ctx, {
                      "from": "",
                      "to": "",
                    }),
                    child: const Text("Cancel"),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(ctx, {
                        "from":
                            "${start.hour.toString().padLeft(2, '0')}:${start.minute.toString().padLeft(2, '0')}",
                        "to":
                            "${end.hour.toString().padLeft(2, '0')}:${end.minute.toString().padLeft(2, '0')}",
                      });
                    },
                    child: const Text("OK"),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
