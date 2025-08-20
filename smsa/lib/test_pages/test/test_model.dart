import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'test_widget.dart' show TestWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class TestModel extends FlutterFlowModel<TestWidget> {
  ///  Local state fields for this page.

  List<double> charts = [1.0, 2.0, 3.0, 4.0, 5.0];
  void addToCharts(double item) => charts.add(item);
  void removeFromCharts(double item) => charts.remove(item);
  void removeAtIndexFromCharts(int index) => charts.removeAt(index);
  void insertAtIndexInCharts(int index, double item) =>
      charts.insert(index, item);
  void updateChartsAtIndex(int index, Function(double) updateFn) =>
      charts[index] = updateFn(charts[index]);

  List<int> vls = [5, 3, 7, 9, 1];
  void addToVls(int item) => vls.add(item);
  void removeFromVls(int item) => vls.remove(item);
  void removeAtIndexFromVls(int index) => vls.removeAt(index);
  void insertAtIndexInVls(int index, int item) => vls.insert(index, item);
  void updateVlsAtIndex(int index, Function(int) updateFn) =>
      vls[index] = updateFn(vls[index]);

  List<dynamic> chart = [];
  void addToChart(dynamic item) => chart.add(item);
  void removeFromChart(dynamic item) => chart.remove(item);
  void removeAtIndexFromChart(int index) => chart.removeAt(index);
  void insertAtIndexInChart(int index, dynamic item) =>
      chart.insert(index, item);
  void updateChartAtIndex(int index, Function(dynamic) updateFn) =>
      chart[index] = updateFn(chart[index]);

  List<TestDataStruct> dataDummyOne = [];
  void addToDataDummyOne(TestDataStruct item) => dataDummyOne.add(item);
  void removeFromDataDummyOne(TestDataStruct item) => dataDummyOne.remove(item);
  void removeAtIndexFromDataDummyOne(int index) => dataDummyOne.removeAt(index);
  void insertAtIndexInDataDummyOne(int index, TestDataStruct item) =>
      dataDummyOne.insert(index, item);
  void updateDataDummyOneAtIndex(
          int index, Function(TestDataStruct) updateFn) =>
      dataDummyOne[index] = updateFn(dataDummyOne[index]);

  bool checlOrder = false;

  List<String> dummy = [];
  void addToDummy(String item) => dummy.add(item);
  void removeFromDummy(String item) => dummy.remove(item);
  void removeAtIndexFromDummy(int index) => dummy.removeAt(index);
  void insertAtIndexInDummy(int index, String item) =>
      dummy.insert(index, item);
  void updateDummyAtIndex(int index, Function(String) updateFn) =>
      dummy[index] = updateFn(dummy[index]);

  double? from;

  double? to;

  ///  State fields for stateful widgets in this page.

  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
