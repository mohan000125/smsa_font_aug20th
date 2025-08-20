import '/backend/api_requests/api_calls.dart';
import '/components/drawer_widget.dart';
import '/components/dropdown_component_widget.dart';
import '/components/earth_left_widget.dart';
import '/components/earth_right_widget.dart';
import '/components/header_widget.dart';
import '/components/text_field_compoennt_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'add_edit_client_widget.dart' show AddEditClientWidget;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddEditClientModel extends FlutterFlowModel<AddEditClientWidget> {
  ///  Local state fields for this page.

  List<String> trigger = ['Auto Mail', 'TOL Service'];
  void addToTrigger(String item) => trigger.add(item);
  void removeFromTrigger(String item) => trigger.remove(item);
  void removeAtIndexFromTrigger(int index) => trigger.removeAt(index);
  void insertAtIndexInTrigger(int index, String item) =>
      trigger.insert(index, item);
  void updateTriggerAtIndex(int index, Function(String) updateFn) =>
      trigger[index] = updateFn(trigger[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for drawer component.
  late DrawerModel drawerModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Earth_Left component.
  late EarthLeftModel earthLeftModel;
  // Model for msgTyp.
  late TextFieldCompoenntModel msgTypModel;
  // Model for fieldName.
  late TextFieldCompoenntModel fieldNameModel;
  // Model for fieldValue.
  late TextFieldCompoenntModel fieldValueModel;
  // Model for Trigger.
  late DropdownComponentModel triggerModel;
  // Model for AcNo.
  late TextFieldCompoenntModel acNoModel;
  // Model for cusID.
  late TextFieldCompoenntModel cusIDModel;
  // Model for NameIdentifi.
  late TextFieldCompoenntModel nameIdentifiModel;
  // Model for mailID.
  late TextFieldCompoenntModel mailIDModel;
  // Stores action output result for [Backend Call - API (UpdateAndDelete)] action in update widget.
  ApiCallResponse? updateClient;
  // Stores action output result for [Backend Call - API (UpdateAndDelete)] action in deleted widget.
  ApiCallResponse? delete;
  // Stores action output result for [Validate Form] action in AddButton widget.
  bool? isClientMasterFormValidated;
  // Stores action output result for [Backend Call - API (AddClient)] action in AddButton widget.
  ApiCallResponse? addClient;
  // Stores action output result for [Backend Call - API (approve and Reject)] action in ButtonApprove widget.
  ApiCallResponse? approved;
  // Stores action output result for [Backend Call - API (approve and Reject)] action in ButtonReject widget.
  ApiCallResponse? rejected;
  // Model for Earth_Right component.
  late EarthRightModel earthRightModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
    headerModel = createModel(context, () => HeaderModel());
    earthLeftModel = createModel(context, () => EarthLeftModel());
    msgTypModel = createModel(context, () => TextFieldCompoenntModel());
    fieldNameModel = createModel(context, () => TextFieldCompoenntModel());
    fieldValueModel = createModel(context, () => TextFieldCompoenntModel());
    triggerModel = createModel(context, () => DropdownComponentModel());
    acNoModel = createModel(context, () => TextFieldCompoenntModel());
    cusIDModel = createModel(context, () => TextFieldCompoenntModel());
    nameIdentifiModel = createModel(context, () => TextFieldCompoenntModel());
    mailIDModel = createModel(context, () => TextFieldCompoenntModel());
    earthRightModel = createModel(context, () => EarthRightModel());
    msgTypModel.textControllerValidator = _formTextFieldValidator1;
    fieldNameModel.textControllerValidator = _formTextFieldValidator2;
    fieldValueModel.textControllerValidator = _formTextFieldValidator3;
    acNoModel.textControllerValidator = _formTextFieldValidator4;
    cusIDModel.textControllerValidator = _formTextFieldValidator5;
    mailIDModel.textControllerValidator = _formTextFieldValidator6;
  }

  @override
  void dispose() {
    drawerModel.dispose();
    headerModel.dispose();
    earthLeftModel.dispose();
    msgTypModel.dispose();
    fieldNameModel.dispose();
    fieldValueModel.dispose();
    triggerModel.dispose();
    acNoModel.dispose();
    cusIDModel.dispose();
    nameIdentifiModel.dispose();
    mailIDModel.dispose();
    earthRightModel.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator1(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Msg Type is required';
    }

    return null;
  }

  String? _formTextFieldValidator2(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field Name is required';
    }

    return null;
  }

  String? _formTextFieldValidator3(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field Value is required';
    }

    return null;
  }

  String? _formTextFieldValidator4(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Account Number is required';
    }

    return null;
  }

  String? _formTextFieldValidator5(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Customer ID is required';
    }

    return null;
  }

  String? _formTextFieldValidator6(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Customer Mail ID is required';
    }

    return null;
  }
}
