import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_manager.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future downloadApi(BuildContext context) async {
  ApiCallResponse? apiResult2r8;

  apiResult2r8 = await DashBoardandSearchGroup.downloadCheckCall.call(
    token: FFAppState().AccessToken,
    deviceHash: FFAppState().DeviceHash,
    senderBicList: (String var1) {
      return [var1];
    }(FFAppState().sendRecv.sender),
    receiverList: (String var1) {
      return [var1];
    }(FFAppState().sendRecv.receiver),
  );

  if ((apiResult2r8?.succeeded ?? true)) {
    return;
  }

  return;
}
