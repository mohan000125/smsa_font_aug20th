import '/backend/schema/structs/index.dart';
import '/components/b_i_c_rows_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'b_i_c_sent_counts_widget.dart' show BICSentCountsWidget;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BICSentCountsModel extends FlutterFlowModel<BICSentCountsWidget> {
  ///  Local state fields for this component.

  List<BicCodesStruct> sendCodes = [];
  void addToSendCodes(BicCodesStruct item) => sendCodes.add(item);
  void removeFromSendCodes(BicCodesStruct item) => sendCodes.remove(item);
  void removeAtIndexFromSendCodes(int index) => sendCodes.removeAt(index);
  void insertAtIndexInSendCodes(int index, BicCodesStruct item) =>
      sendCodes.insert(index, item);
  void updateSendCodesAtIndex(int index, Function(BicCodesStruct) updateFn) =>
      sendCodes[index] = updateFn(sendCodes[index]);

  String? sent = 'sent';

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
