import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loading_widget_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'login_page_old_widget.dart' show LoginPageOldWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class LoginPageOldModel extends FlutterFlowModel<LoginPageOldWidget> {
  ///  Local state fields for this page.

  bool isLoading = false;

  bool module = false;

  bool geo = false;

  List<ModulesStruct> modulesList = [];
  void addToModulesList(ModulesStruct item) => modulesList.add(item);
  void removeFromModulesList(ModulesStruct item) => modulesList.remove(item);
  void removeAtIndexFromModulesList(int index) => modulesList.removeAt(index);
  void insertAtIndexInModulesList(int index, ModulesStruct item) =>
      modulesList.insert(index, item);
  void updateModulesListAtIndex(int index, Function(ModulesStruct) updateFn) =>
      modulesList[index] = updateFn(modulesList[index]);

  List<GeographyStruct> geoList = [];
  void addToGeoList(GeographyStruct item) => geoList.add(item);
  void removeFromGeoList(GeographyStruct item) => geoList.remove(item);
  void removeAtIndexFromGeoList(int index) => geoList.removeAt(index);
  void insertAtIndexInGeoList(int index, GeographyStruct item) =>
      geoList.insert(index, item);
  void updateGeoListAtIndex(int index, Function(GeographyStruct) updateFn) =>
      geoList[index] = updateFn(geoList[index]);

  String? moduleId;

  String? geoId;

  ///  State fields for stateful widgets in this page.

  final shortcutsFocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (getModules)] action in LoginPageOld widget.
  ApiCallResponse? moduless;
  // Stores action output result for [Backend Call - API (GeographyList)] action in LoginPageOld widget.
  ApiCallResponse? geos;
  // Stores action output result for [Custom Action - faceUserCheck] action in LoginPageOld widget.
  FaceUserStruct? faceCheckResponse;
  // Stores action output result for [Validate Form] action in Text widget.
  bool? isValidateddirect;
  // Stores action output result for [Custom Action - generateWebDeviceHashWithTime] action in Text widget.
  String? hashCodeeDirect;
  // Stores action output result for [Custom Action - encrptText] action in Text widget.
  String? encryptedUsernameDirect;
  // Stores action output result for [Custom Action - encrptText] action in Text widget.
  String? encryptedPasswordDirect;
  // Stores action output result for [Custom Action - encrptText] action in Text widget.
  String? encryptedHashCodeDirect;
  // Stores action output result for [Custom Action - encrptText] action in Text widget.
  String? moduleEncryptDirect;
  // Stores action output result for [Custom Action - encrptText] action in Text widget.
  String? geoEncryptDirect;
  // Stores action output result for [Backend Call - API (LoginApi)] action in Text widget.
  ApiCallResponse? loginApiDirect;
  // State field(s) for userName widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameTextController;
  String? Function(BuildContext, String?)? userNameTextControllerValidator;
  String? _userNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'User ID is required';
    }

    return null;
  }

  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    return null;
  }

  // State field(s) for DropDownmodule widget.
  String? dropDownmoduleValue;
  FormFieldController<String>? dropDownmoduleValueController;
  // State field(s) for DropDownGeo widget.
  String? dropDownGeoValue;
  FormFieldController<String>? dropDownGeoValueController;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? isValidatedDirect;
  // Stores action output result for [Custom Action - generateWebDeviceHashWithTime] action in Button widget.
  String? hashCodee;
  // Stores action output result for [Custom Action - encrptText] action in Button widget.
  String? encryptedUsername;
  // Stores action output result for [Custom Action - encrptText] action in Button widget.
  String? encryptedPassword;
  // Stores action output result for [Custom Action - encrptText] action in Button widget.
  String? encryptedHashCode;
  // Stores action output result for [Custom Action - encrptText] action in Button widget.
  String? moduleEncrypt;
  // Stores action output result for [Custom Action - encrptText] action in Button widget.
  String? geoEncrypt;
  // Stores action output result for [Backend Call - API (LoginApi)] action in Button widget.
  ApiCallResponse? loginApi;
  // Model for loadingWidget component.
  late LoadingWidgetModel loadingWidgetModel;

  @override
  void initState(BuildContext context) {
    shortcutsFocusNode.requestFocus();
    userNameTextControllerValidator = _userNameTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    loadingWidgetModel = createModel(context, () => LoadingWidgetModel());
  }

  @override
  void dispose() {
    userNameFocusNode?.dispose();
    userNameTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    loadingWidgetModel.dispose();
  }
}
