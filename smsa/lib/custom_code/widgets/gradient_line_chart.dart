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

import 'package:fl_chart/fl_chart.dart';

class GradientLineChart extends StatefulWidget {
  const GradientLineChart({
    super.key,
    this.width,
    this.height,
    required this.last7Dates,
    required this.last7SentCounts,
    required this.last7ReceivedCounts,
  });

  final double? width;
  final double? height;
  final List<String> last7Dates;
  final List<int> last7SentCounts;
  final List<int> last7ReceivedCounts;

  @override
  State<GradientLineChart> createState() => _GradientLineChartState();
}

class _GradientLineChartState extends State<GradientLineChart> {
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 300,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          minY: 0,
          maxY: _calculateMaxY(),
          lineTouchData: LineTouchData(
            enabled: true,
            getTouchedSpotIndicator: (barData, spotIndexes) {
              return spotIndexes.map((index) {
                return TouchedSpotIndicatorData(
                  FlLine(
                    color: const Color(0xFFF06321),
                    strokeWidth: 1,
                    dashArray: [4, 4],
                  ),
                  FlDotData(
                    show: true,
                    getDotPainter: (spot, percent, bar, index) {
                      return FlDotCirclePainter(
                        radius: 5,
                        color: const Color(0xFFFE6633),
                        strokeWidth: 3,
                        strokeColor:
                            isDark ? const Color(0xFF1E2428) : Colors.white,
                      );
                    },
                  ),
                );
              }).toList();
            },
            touchTooltipData: LineTouchTooltipData(
              //    tooltipRoundedRadius: 4,
              tooltipPadding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              tooltipMargin: 12,
              getTooltipItems: (touchedSpots) {
                return touchedSpots.map((spot) {
                  final label = spot.barIndex == 0 ? 'Sent' : 'Received';
                  return LineTooltipItem(
                    '$label: ${spot.y.toInt()}',
                    const TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                    ),
                  );
                }).toList();
              },
            ),
          ),
          lineBarsData: [
            _buildLineData(
              widget.last7SentCounts,
              const Color(0xFFFE6633),
              const Color(0x3AFF8655),
            )
          ],
        ),
      ),
    );
  }

  double _calculateMaxY() {
    final allValues = [
      ...widget.last7SentCounts,
      ...widget.last7ReceivedCounts
    ];
    final maxVal =
        allValues.isNotEmpty ? allValues.reduce((a, b) => a > b ? a : b) : 10;
    return (maxVal * 1.2).ceilToDouble();
  }

  LineChartBarData _buildLineData(
    List<int> values,
    Color lineColor,
    Color gradientColor,
  ) {
    return LineChartBarData(
      spots: List.generate(
        values.length,
        (i) => FlSpot(i.toDouble(), values[i].toDouble()),
      ),
      isCurved: true,
      preventCurveOverShooting: true,
      color: lineColor,
      barWidth: 2,
      dotData: FlDotData(
        show: true,
        getDotPainter: (spot, percent, bar, index) {
          return FlDotCirclePainter(
            radius: 3,
            color: lineColor,
            strokeWidth: 0,
            strokeColor: Colors.transparent,
          );
        },
      ),
      belowBarData: BarAreaData(
        show: true,
        gradient: LinearGradient(
          colors: [
            gradientColor,
            gradientColor.withOpacity(0.0),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
