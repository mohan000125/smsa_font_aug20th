import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/drawer_widget.dart';
import '/components/earth_left_widget.dart';
import '/components/earth_right_widget.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'add_edit_threshold_widget.dart' show AddEditThresholdWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddEditThresholdModel extends FlutterFlowModel<AddEditThresholdWidget> {
  ///  Local state fields for this page.

  List<ThresholdMasterDataModelStruct> thresholdMasterData = [];
  void addToThresholdMasterData(ThresholdMasterDataModelStruct item) =>
      thresholdMasterData.add(item);
  void removeFromThresholdMasterData(ThresholdMasterDataModelStruct item) =>
      thresholdMasterData.remove(item);
  void removeAtIndexFromThresholdMasterData(int index) =>
      thresholdMasterData.removeAt(index);
  void insertAtIndexInThresholdMasterData(
          int index, ThresholdMasterDataModelStruct item) =>
      thresholdMasterData.insert(index, item);
  void updateThresholdMasterDataAtIndex(
          int index, Function(ThresholdMasterDataModelStruct) updateFn) =>
      thresholdMasterData[index] = updateFn(thresholdMasterData[index]);

  bool editCheck = false;

  bool deleteCheck = false;

  bool? isXLSDownload = false;

  bool? isCsvDownload = false;

  int? thresholdID;

  String? createdBy;

  String? createdDate;

  bool? mtTypeCheck = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for drawer component.
  late DrawerModel drawerModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Earth_Left component.
  late EarthLeftModel earthLeftModel;
  // State field(s) for CurrencyTextField widget.
  FocusNode? currencyTextFieldFocusNode;
  TextEditingController? currencyTextFieldTextController;
  String? Function(BuildContext, String?)?
      currencyTextFieldTextControllerValidator;
  String? _currencyTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Currency is required';
    }

    return null;
  }

  // State field(s) for SenderBICTextField widget.
  FocusNode? senderBICTextFieldFocusNode;
  TextEditingController? senderBICTextFieldTextController;
  String? Function(BuildContext, String?)?
      senderBICTextFieldTextControllerValidator;
  String? _senderBICTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'SenderBic is required';
    }

    return null;
  }

  // State field(s) for MTCodeDropDown widget.
  String? mTCodeDropDownValue;
  FormFieldController<String>? mTCodeDropDownValueController;
  // State field(s) for CatAFromAmountTextField widget.
  FocusNode? catAFromAmountTextFieldFocusNode;
  TextEditingController? catAFromAmountTextFieldTextController;
  String? Function(BuildContext, String?)?
      catAFromAmountTextFieldTextControllerValidator;
  String? _catAFromAmountTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'From Amount is required';
    }

    return null;
  }

  // State field(s) for CatAToAmountTextField widget.
  FocusNode? catAToAmountTextFieldFocusNode;
  TextEditingController? catAToAmountTextFieldTextController;
  String? Function(BuildContext, String?)?
      catAToAmountTextFieldTextControllerValidator;
  String? _catAToAmountTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'To Amount is required';
    }

    return null;
  }

  // State field(s) for CatBFromAmountTextField widget.
  FocusNode? catBFromAmountTextFieldFocusNode;
  TextEditingController? catBFromAmountTextFieldTextController;
  String? Function(BuildContext, String?)?
      catBFromAmountTextFieldTextControllerValidator;
  String? _catBFromAmountTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'From Amount is required';
    }

    return null;
  }

  // State field(s) for CatBToAmountTextField widget.
  FocusNode? catBToAmountTextFieldFocusNode;
  TextEditingController? catBToAmountTextFieldTextController;
  String? Function(BuildContext, String?)?
      catBToAmountTextFieldTextControllerValidator;
  String? _catBToAmountTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'To Amount is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (ThresholdDataUpdate)] action in ButtonUpdate widget.
  ApiCallResponse? thresholdupdateres;
  // Stores action output result for [Backend Call - API (ThresholdDataDelete)] action in Buttondelete widget.
  ApiCallResponse? thresholdDeleteRes;
  // Stores action output result for [Validate Form] action in ButtonAdd widget.
  bool? isThresholdFormCheck;
  // Stores action output result for [Backend Call - API (ThresholdDataAdd)] action in ButtonAdd widget.
  ApiCallResponse? thresholdaddres;
  // Stores action output result for [Backend Call - API (ThresholdDataApprove)] action in ButtonApprove widget.
  ApiCallResponse? thresholdApproved;
  // Stores action output result for [Backend Call - API (ThresholdDataReject)] action in ButtonReject widget.
  ApiCallResponse? thresholdReject;
  // Model for Earth_Right component.
  late EarthRightModel earthRightModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
    headerModel = createModel(context, () => HeaderModel());
    earthLeftModel = createModel(context, () => EarthLeftModel());
    currencyTextFieldTextControllerValidator =
        _currencyTextFieldTextControllerValidator;
    senderBICTextFieldTextControllerValidator =
        _senderBICTextFieldTextControllerValidator;
    catAFromAmountTextFieldTextControllerValidator =
        _catAFromAmountTextFieldTextControllerValidator;
    catAToAmountTextFieldTextControllerValidator =
        _catAToAmountTextFieldTextControllerValidator;
    catBFromAmountTextFieldTextControllerValidator =
        _catBFromAmountTextFieldTextControllerValidator;
    catBToAmountTextFieldTextControllerValidator =
        _catBToAmountTextFieldTextControllerValidator;
    earthRightModel = createModel(context, () => EarthRightModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
    headerModel.dispose();
    earthLeftModel.dispose();
    currencyTextFieldFocusNode?.dispose();
    currencyTextFieldTextController?.dispose();

    senderBICTextFieldFocusNode?.dispose();
    senderBICTextFieldTextController?.dispose();

    catAFromAmountTextFieldFocusNode?.dispose();
    catAFromAmountTextFieldTextController?.dispose();

    catAToAmountTextFieldFocusNode?.dispose();
    catAToAmountTextFieldTextController?.dispose();

    catBFromAmountTextFieldFocusNode?.dispose();
    catBFromAmountTextFieldTextController?.dispose();

    catBToAmountTextFieldFocusNode?.dispose();
    catBToAmountTextFieldTextController?.dispose();

    earthRightModel.dispose();
  }
}
