import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'header_widget.dart' show HeaderWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class HeaderModel extends FlutterFlowModel<HeaderWidget> {
  ///  Local state fields for this component.

  String? lastLoginText;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (LastLogin)] action in Header widget.
  ApiCallResponse? lastLogin;
  // Stores action output result for [Custom Action - decryptText] action in Header widget.
  String? decrypted;
  // Stores action output result for [Backend Call - API (logoutApi)] action in Container widget.
  ApiCallResponse? logOut;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
