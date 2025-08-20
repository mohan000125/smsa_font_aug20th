import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'filters_dashboard_widget.dart' show FiltersDashboardWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class FiltersDashboardModel extends FlutterFlowModel<FiltersDashboardWidget> {
  ///  Local state fields for this component.

  FiltersStruct? identifierSent;
  void updateIdentifierSentStruct(Function(FiltersStruct) updateFn) {
    updateFn(identifierSent ??= FiltersStruct());
  }

  FiltersStruct? identifierReceived;
  void updateIdentifierReceivedStruct(Function(FiltersStruct) updateFn) {
    updateFn(identifierReceived ??= FiltersStruct());
  }

  String? senderBic;

  String? receiverBic;

  bool sendRecvIcon = false;

  FiltersStruct? fileTypeNack;
  void updateFileTypeNackStruct(Function(FiltersStruct) updateFn) {
    updateFn(fileTypeNack ??= FiltersStruct());
  }

  FiltersStruct? fileTypeACK;
  void updateFileTypeACKStruct(Function(FiltersStruct) updateFn) {
    updateFn(fileTypeACK ??= FiltersStruct());
  }

  bool msgsearch = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
