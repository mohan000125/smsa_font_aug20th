import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/drawer_widget.dart';
import '/components/earth_left_widget.dart';
import '/components/earth_right_widget.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'add_edit_recipient_widget.dart' show AddEditRecipientWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddEditRecipientModel extends FlutterFlowModel<AddEditRecipientWidget> {
  ///  Local state fields for this page.

  List<RecipientMasterDataModelStruct> recipientMasterData = [];
  void addToRecipientMasterData(RecipientMasterDataModelStruct item) =>
      recipientMasterData.add(item);
  void removeFromRecipientMasterData(RecipientMasterDataModelStruct item) =>
      recipientMasterData.remove(item);
  void removeAtIndexFromRecipientMasterData(int index) =>
      recipientMasterData.removeAt(index);
  void insertAtIndexInRecipientMasterData(
          int index, RecipientMasterDataModelStruct item) =>
      recipientMasterData.insert(index, item);
  void updateRecipientMasterDataAtIndex(
          int index, Function(RecipientMasterDataModelStruct) updateFn) =>
      recipientMasterData[index] = updateFn(recipientMasterData[index]);

  bool editValue = false;

  bool deleteValue = false;

  bool? xlsDownload = false;

  bool? csvDownload = false;

  int? recipientID;

  String? createdBy;

  String? createdDate;

  bool locationCheck = false;

  bool categoryCheck = false;

  bool mtTypeCheck = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for drawer component.
  late DrawerModel drawerModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Earth_Left component.
  late EarthLeftModel earthLeftModel;
  // State field(s) for LocationDropDown widget.
  String? locationDropDownValue;
  FormFieldController<String>? locationDropDownValueController;
  // State field(s) for SenderBICTextField widget.
  FocusNode? senderBICTextFieldFocusNode;
  TextEditingController? senderBICTextFieldTextController;
  String? Function(BuildContext, String?)?
      senderBICTextFieldTextControllerValidator;
  String? _senderBICTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'SenderBIC is required';
    }

    return null;
  }

  // State field(s) for MTCodeDropDownn widget.
  String? mTCodeDropDownnValue;
  FormFieldController<String>? mTCodeDropDownnValueController;
  // State field(s) for RecipientEMPIDTextField widget.
  FocusNode? recipientEMPIDTextFieldFocusNode;
  TextEditingController? recipientEMPIDTextFieldTextController;
  String? Function(BuildContext, String?)?
      recipientEMPIDTextFieldTextControllerValidator;
  String? _recipientEMPIDTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Employee ID is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (searchByID)] action in AddButton widget.
  ApiCallResponse? searchIDResponse;
  // State field(s) for RecipientNameTextField widget.
  FocusNode? recipientNameTextFieldFocusNode;
  TextEditingController? recipientNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      recipientNameTextFieldTextControllerValidator;
  String? _recipientNameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Recipient Name is required';
    }

    return null;
  }

  // State field(s) for RecEmailIDTextField widget.
  FocusNode? recEmailIDTextFieldFocusNode;
  TextEditingController? recEmailIDTextFieldTextController;
  String? Function(BuildContext, String?)?
      recEmailIDTextFieldTextControllerValidator;
  String? _recEmailIDTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Recipient Mail ID is required';
    }

    return null;
  }

  // State field(s) for RecipientMovileNoTextField widget.
  FocusNode? recipientMovileNoTextFieldFocusNode;
  TextEditingController? recipientMovileNoTextFieldTextController;
  String? Function(BuildContext, String?)?
      recipientMovileNoTextFieldTextControllerValidator;
  // State field(s) for RecipientGradeTextField widget.
  FocusNode? recipientGradeTextFieldFocusNode;
  TextEditingController? recipientGradeTextFieldTextController;
  String? Function(BuildContext, String?)?
      recipientGradeTextFieldTextControllerValidator;
  String? _recipientGradeTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Recipient Grade is required';
    }

    return null;
  }

  // State field(s) for catDropDown widget.
  String? catDropDownValue;
  FormFieldController<String>? catDropDownValueController;
  // State field(s) for CCEmployerIDTextField widget.
  FocusNode? cCEmployerIDTextFieldFocusNode;
  TextEditingController? cCEmployerIDTextFieldTextController;
  String? Function(BuildContext, String?)?
      cCEmployerIDTextFieldTextControllerValidator;
  // State field(s) for CCMailIDTextField widget.
  FocusNode? cCMailIDTextFieldFocusNode;
  TextEditingController? cCMailIDTextFieldTextController;
  String? Function(BuildContext, String?)?
      cCMailIDTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (RecipientDataUpdate)] action in update widget.
  ApiCallResponse? recipientUpdateRes;
  // Stores action output result for [Backend Call - API (RecipientDataDelete)] action in deleted widget.
  ApiCallResponse? recipientDeleteRes;
  // Stores action output result for [Validate Form] action in AddButton widget.
  bool? isValidaterecipientForm;
  // Stores action output result for [Backend Call - API (RecipientDataAdd)] action in AddButton widget.
  ApiCallResponse? recAddRes;
  // Stores action output result for [Backend Call - API (RecipientDataApprove)] action in ButtonApprove widget.
  ApiCallResponse? recipientApproved;
  // Stores action output result for [Backend Call - API (RecipientDataReject)] action in ButtonReject widget.
  ApiCallResponse? recipientReject;
  // State field(s) for DataTablee widget.
  final dataTableeController =
      FlutterFlowDataTableController<RecipientMasterDataModelStruct>();
  // Model for Earth_Right component.
  late EarthRightModel earthRightModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
    headerModel = createModel(context, () => HeaderModel());
    earthLeftModel = createModel(context, () => EarthLeftModel());
    senderBICTextFieldTextControllerValidator =
        _senderBICTextFieldTextControllerValidator;
    recipientEMPIDTextFieldTextControllerValidator =
        _recipientEMPIDTextFieldTextControllerValidator;
    recipientNameTextFieldTextControllerValidator =
        _recipientNameTextFieldTextControllerValidator;
    recEmailIDTextFieldTextControllerValidator =
        _recEmailIDTextFieldTextControllerValidator;
    recipientGradeTextFieldTextControllerValidator =
        _recipientGradeTextFieldTextControllerValidator;
    earthRightModel = createModel(context, () => EarthRightModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
    headerModel.dispose();
    earthLeftModel.dispose();
    senderBICTextFieldFocusNode?.dispose();
    senderBICTextFieldTextController?.dispose();

    recipientEMPIDTextFieldFocusNode?.dispose();
    recipientEMPIDTextFieldTextController?.dispose();

    recipientNameTextFieldFocusNode?.dispose();
    recipientNameTextFieldTextController?.dispose();

    recEmailIDTextFieldFocusNode?.dispose();
    recEmailIDTextFieldTextController?.dispose();

    recipientMovileNoTextFieldFocusNode?.dispose();
    recipientMovileNoTextFieldTextController?.dispose();

    recipientGradeTextFieldFocusNode?.dispose();
    recipientGradeTextFieldTextController?.dispose();

    cCEmployerIDTextFieldFocusNode?.dispose();
    cCEmployerIDTextFieldTextController?.dispose();

    cCMailIDTextFieldFocusNode?.dispose();
    cCMailIDTextFieldTextController?.dispose();

    dataTableeController.dispose();
    earthRightModel.dispose();
  }
}
