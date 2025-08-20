import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'top_swift_messages_tyoes_widget.dart' show TopSwiftMessagesTyoesWidget;
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class TopSwiftMessagesTyoesModel
    extends FlutterFlowModel<TopSwiftMessagesTyoesWidget> {
  ///  Local state fields for this component.

  MessageTypeCountsStruct? messageTypesList;
  void updateMessageTypesListStruct(
      Function(MessageTypeCountsStruct) updateFn) {
    updateFn(messageTypesList ??= MessageTypeCountsStruct());
  }

  dynamic msgTypesList;

  bool? isLoader;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
