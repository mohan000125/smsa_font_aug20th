import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/data_loader_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'details_widget.dart' show DetailsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class DetailsModel extends FlutterFlowModel<DetailsWidget> {
  ///  Local state fields for this component.

  List<String> emptyListDetails = [];
  void addToEmptyListDetails(String item) => emptyListDetails.add(item);
  void removeFromEmptyListDetails(String item) => emptyListDetails.remove(item);
  void removeAtIndexFromEmptyListDetails(int index) =>
      emptyListDetails.removeAt(index);
  void insertAtIndexInEmptyListDetails(int index, String item) =>
      emptyListDetails.insert(index, item);
  void updateEmptyListDetailsAtIndex(int index, Function(String) updateFn) =>
      emptyListDetails[index] = updateFn(emptyListDetails[index]);

  GetSearchModelStruct? detailsDataSet;
  void updateDetailsDataSetStruct(Function(GetSearchModelStruct) updateFn) {
    updateFn(detailsDataSet ??= GetSearchModelStruct());
  }

  bool isDetailsLoader = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - encryptFullPayload] action in Details widget.
  dynamic? encryptGetAllDetailssss;
  // Stores action output result for [Backend Call - API (searchApi)] action in Details widget.
  ApiCallResponse? detailsDataa;
  // Stores action output result for [Custom Action - decryptFullPayload] action in Details widget.
  dynamic? decryptedGetAllDetails;
  // Model for dataLoader component.
  late DataLoaderModel dataLoaderModel;

  @override
  void initState(BuildContext context) {
    dataLoaderModel = createModel(context, () => DataLoaderModel());
  }

  @override
  void dispose() {
    dataLoaderModel.dispose();
  }
}
