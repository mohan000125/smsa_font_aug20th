import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loading_widget_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
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

  List<String> moduleListof = ['SMSA', 'SFMS'];
  void addToModuleListof(String item) => moduleListof.add(item);
  void removeFromModuleListof(String item) => moduleListof.remove(item);
  void removeAtIndexFromModuleListof(int index) => moduleListof.removeAt(index);
  void insertAtIndexInModuleListof(int index, String item) =>
      moduleListof.insert(index, item);
  void updateModuleListofAtIndex(int index, Function(String) updateFn) =>
      moduleListof[index] = updateFn(moduleListof[index]);

  List<String> geosOf = [
    'INDIA',
    'USA',
    'UK',
    'SHANGHAI',
    'BELGIUM',
    'CANADA',
    'DUBAI'
  ];
  void addToGeosOf(String item) => geosOf.add(item);
  void removeFromGeosOf(String item) => geosOf.remove(item);
  void removeAtIndexFromGeosOf(int index) => geosOf.removeAt(index);
  void insertAtIndexInGeosOf(int index, String item) =>
      geosOf.insert(index, item);
  void updateGeosOfAtIndex(int index, Function(String) updateFn) =>
      geosOf[index] = updateFn(geosOf[index]);

  String? selectedText;

  int? selectedIndex;

  bool? clearCustomFields = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (getModules)] action in LoginPage widget.
  ApiCallResponse? moduleTab;
  // Stores action output result for [Backend Call - API (GeographyList)] action in LoginPage widget.
  ApiCallResponse? geosTab;
  // Stores action output result for [Custom Action - faceUserCheck] action in LoginPage widget.
  FaceUserStruct? faceCheckResponseTab;
  // Stores action output result for [Validate Form] action in Text widget.
  bool? isValidatedTab;
  // Stores action output result for [Custom Action - generateWebDeviceHashWithTime] action in Text widget.
  String? hashCodeeTabbb;
  // Stores action output result for [Custom Action - encrptText] action in Text widget.
  String? encryptedUsernameTabbb;
  // Stores action output result for [Custom Action - encrptText] action in Text widget.
  String? encryptedPasswordTabbb;
  // Stores action output result for [Custom Action - encrptText] action in Text widget.
  String? encryptedHashCodeTabbb;
  // Stores action output result for [Custom Action - encrptText] action in Text widget.
  String? moduleEncryptTabbb;
  // Stores action output result for [Custom Action - encrptText] action in Text widget.
  String? geoEncryptTabbb;
  // Stores action output result for [Backend Call - API (LoginApi)] action in Text widget.
  ApiCallResponse? loginApiTabbb;
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

  // Stores action output result for [Validate Form] action in Button widget.
  bool? isValidatedDirectTab;
  // Stores action output result for [Custom Action - generateWebDeviceHashWithTime] action in Button widget.
  String? hashCodeeTab;
  // Stores action output result for [Custom Action - encrptText] action in Button widget.
  String? encryptedUsernameTab;
  // Stores action output result for [Custom Action - encrptText] action in Button widget.
  String? encryptedPasswordTab;
  // Stores action output result for [Custom Action - encrptText] action in Button widget.
  String? encryptedHashCodeTab;
  // Stores action output result for [Custom Action - encrptText] action in Button widget.
  String? moduleEncryptTab;
  // Stores action output result for [Custom Action - encrptText] action in Button widget.
  String? geoEncryptTab;
  // Stores action output result for [Backend Call - API (LoginApi)] action in Button widget.
  ApiCallResponse? loginApiTab;
  // Model for loadingWidget component.
  late LoadingWidgetModel loadingWidgetModel;

  @override
  void initState(BuildContext context) {
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
