import '/backend/schema/structs/index.dart';
import '/components/b_i_c_rows_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'b_i_c_received_counts_widget.dart' show BICReceivedCountsWidget;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BICReceivedCountsModel extends FlutterFlowModel<BICReceivedCountsWidget> {
  ///  Local state fields for this component.

  List<BicCodesStruct> recCount = [];
  void addToRecCount(BicCodesStruct item) => recCount.add(item);
  void removeFromRecCount(BicCodesStruct item) => recCount.remove(item);
  void removeAtIndexFromRecCount(int index) => recCount.removeAt(index);
  void insertAtIndexInRecCount(int index, BicCodesStruct item) =>
      recCount.insert(index, item);
  void updateRecCountAtIndex(int index, Function(BicCodesStruct) updateFn) =>
      recCount[index] = updateFn(recCount[index]);

  String rec = 'recv';

  ///  State fields for stateful widgets in this component.

  // Models for BIC_Rows dynamic component.
  late FlutterFlowDynamicModels<BICRowsModel> bICRowsModels;

  @override
  void initState(BuildContext context) {
    bICRowsModels = FlutterFlowDynamicModels(() => BICRowsModel());
  }

  @override
  void dispose() {
    bICRowsModels.dispose();
  }
}
