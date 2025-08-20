import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'indexess_widget.dart' show IndexessWidget;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IndexessModel extends FlutterFlowModel<IndexessWidget> {
  ///  Local state fields for this component.

  int? index = 0;

  List<String> emptyy = [];
  void addToEmptyy(String item) => emptyy.add(item);
  void removeFromEmptyy(String item) => emptyy.remove(item);
  void removeAtIndexFromEmptyy(int index) => emptyy.removeAt(index);
  void insertAtIndexInEmptyy(int index, String item) =>
      emptyy.insert(index, item);
  void updateEmptyyAtIndex(int index, Function(String) updateFn) =>
      emptyy[index] = updateFn(emptyy[index]);

  List<GetSearchModelStruct> check = [];
  void addToCheck(GetSearchModelStruct item) => check.add(item);
  void removeFromCheck(GetSearchModelStruct item) => check.remove(item);
  void removeAtIndexFromCheck(int index) => check.removeAt(index);
  void insertAtIndexInCheck(int index, GetSearchModelStruct item) =>
      check.insert(index, item);
  void updateCheckAtIndex(int index, Function(GetSearchModelStruct) updateFn) =>
      check[index] = updateFn(check[index]);

  List<int> emptyInt = [];
  void addToEmptyInt(int item) => emptyInt.add(item);
  void removeFromEmptyInt(int item) => emptyInt.remove(item);
  void removeAtIndexFromEmptyInt(int index) => emptyInt.removeAt(index);
  void insertAtIndexInEmptyInt(int index, int item) =>
      emptyInt.insert(index, item);
  void updateEmptyIntAtIndex(int index, Function(int) updateFn) =>
      emptyInt[index] = updateFn(emptyInt[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for pageIndex widget.
  ScrollController? pageIndex;

  @override
  void initState(BuildContext context) {
    pageIndex = ScrollController();
  }

  @override
  void dispose() {
    pageIndex?.dispose();
  }
}
