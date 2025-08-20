// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class RangeAmountSliderWidget extends StatefulWidget {
  const RangeAmountSliderWidget({
    super.key,
    this.width,
    this.height,
    this.onRangeChanged,
    this.onResetPressed,
  });

  final double? width;
  final double? height;
  final Future Function(double? start, double? end)? onRangeChanged;
  final Future Function()? onResetPressed;

  @override
  State<RangeAmountSliderWidget> createState() =>
      _RangeAmountSliderWidgetState();
}

class _RangeAmountSliderWidgetState extends State<RangeAmountSliderWidget> {
  RangeValues _currentRange = const RangeValues(0, 100000); // in rupees
  final RangeValues _defaultRange = const RangeValues(0, 100000);

  String _formatValue(double value) {
    return "${value.toStringAsFixed(0)}"; // no "Cr"
  }

  void _resetRange() {
    setState(() {
      _currentRange = _defaultRange;
    });

    // Trigger FlutterFlow reset action with null values
    if (widget.onResetPressed != null) {
      widget.onResetPressed!();
    }

    // For FlutterFlow onRangeChanged, send NULL values instead of defaults
    if (widget.onRangeChanged != null) {
      widget.onRangeChanged!(null, null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Value labels above the slider
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(_formatValue(_currentRange.start),
                  style: FlutterFlowTheme.of(context).bodyMedium),
              Text(_formatValue(_currentRange.end),
                  style: FlutterFlowTheme.of(context).bodyMedium),
            ],
          ),
          RangeSlider(
            values: _currentRange,
            min: 0,
            max: 100000, // 1 lakh max
            divisions: 100000, // 1 step = ₹1
            activeColor: Colors.teal,
            inactiveColor: Colors.grey.shade400,
            onChanged: (RangeValues values) {
              setState(() {
                _currentRange = values;
              });

              // Send updated range back to FlutterFlow
              if (widget.onRangeChanged != null) {
                widget.onRangeChanged!(values.start, values.end);
              }
            },
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: _resetRange,
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffe3530f),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              "Reset Range",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
