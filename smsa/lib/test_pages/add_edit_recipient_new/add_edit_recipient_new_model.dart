import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/drawer_widget.dart';
import '/components/dropdown_component_widget.dart';
import '/components/earth_left_widget.dart';
import '/components/earth_right_widget.dart';
import '/components/header_widget.dart';
import '/components/page_title_widget.dart';
import '/components/text_field_compoennt_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'add_edit_recipient_new_widget.dart' show AddEditRecipientNewWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class AddEditRecipientNewModel
    extends FlutterFlowModel<AddEditRecipientNewWidget> {
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

  List<String> loactionOptions = [
    'INDIA',
    'HONG KONG',
    'USA',
    'CANADA',
    'BAHRAIN',
    'UK',
    'RUSSIA',
    'DUBAI',
    'SINGAPORE',
    'GERMANY',
    'QATAR',
    'BELGIUM',
    'INDIA-SFMS',
    'SHANGHAI',
    'IBUGIFT'
  ];
  void addToLoactionOptions(String item) => loactionOptions.add(item);
  void removeFromLoactionOptions(String item) => loactionOptions.remove(item);
  void removeAtIndexFromLoactionOptions(int index) =>
      loactionOptions.removeAt(index);
  void insertAtIndexInLoactionOptions(int index, String item) =>
      loactionOptions.insert(index, item);
  void updateLoactionOptionsAtIndex(int index, Function(String) updateFn) =>
      loactionOptions[index] = updateFn(loactionOptions[index]);

  List<String> mtTypeOptions = [
    '102',
    '103',
    '700',
    '707',
    '720',
    '740',
    '747',
    '760',
    '765',
    '767'
  ];
  void addToMtTypeOptions(String item) => mtTypeOptions.add(item);
  void removeFromMtTypeOptions(String item) => mtTypeOptions.remove(item);
  void removeAtIndexFromMtTypeOptions(int index) =>
      mtTypeOptions.removeAt(index);
  void insertAtIndexInMtTypeOptions(int index, String item) =>
      mtTypeOptions.insert(index, item);
  void updateMtTypeOptionsAtIndex(int index, Function(String) updateFn) =>
      mtTypeOptions[index] = updateFn(mtTypeOptions[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (fetchRecepientMasterData)] action in AddEdit-Recipient_New widget.
  ApiCallResponse? recipientMasterDataRes;
  // Model for drawer component.
  late DrawerModel drawerModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Earth_Left component.
  late EarthLeftModel earthLeftModel;
  // Model for PageTitle component.
  late PageTitleModel pageTitleModel;
  // Model for Dropdown_Component component.
  late DropdownComponentModel dropdownComponentModel1;
  // Model for Text_Field_Compoennt component.
  late TextFieldCompoenntModel textFieldCompoenntModel1;
  // Model for Mt_Type_Dropdown_Component.
  late DropdownComponentModel mtTypeDropdownComponentModel;
  // Model for Text_Field_Compoennt component.
  late TextFieldCompoenntModel textFieldCompoenntModel2;
  // Model for Text_Field_Compoennt component.
  late TextFieldCompoenntModel textFieldCompoenntModel3;
  // Model for Text_Field_Compoennt component.
  late TextFieldCompoenntModel textFieldCompoenntModel4;
  // Model for Text_Field_Compoennt component.
  late TextFieldCompoenntModel textFieldCompoenntModel5;
  // Model for Text_Field_Compoennt component.
  late TextFieldCompoenntModel textFieldCompoenntModel6;
  // Model for Dropdown_Component component.
  late DropdownComponentModel dropdownComponentModel2;
  // Model for Text_Field_Compoennt component.
  late TextFieldCompoenntModel textFieldCompoenntModel7;
  // Model for Text_Field_Compoennt component.
  late TextFieldCompoenntModel textFieldCompoenntModel8;
  // Model for Earth_Right component.
  late EarthRightModel earthRightModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
    headerModel = createModel(context, () => HeaderModel());
    earthLeftModel = createModel(context, () => EarthLeftModel());
    pageTitleModel = createModel(context, () => PageTitleModel());
    dropdownComponentModel1 =
        createModel(context, () => DropdownComponentModel());
    textFieldCompoenntModel1 =
        createModel(context, () => TextFieldCompoenntModel());
    mtTypeDropdownComponentModel =
        createModel(context, () => DropdownComponentModel());
    textFieldCompoenntModel2 =
        createModel(context, () => TextFieldCompoenntModel());
    textFieldCompoenntModel3 =
        createModel(context, () => TextFieldCompoenntModel());
    textFieldCompoenntModel4 =
        createModel(context, () => TextFieldCompoenntModel());
    textFieldCompoenntModel5 =
        createModel(context, () => TextFieldCompoenntModel());
    textFieldCompoenntModel6 =
        createModel(context, () => TextFieldCompoenntModel());
    dropdownComponentModel2 =
        createModel(context, () => DropdownComponentModel());
    textFieldCompoenntModel7 =
        createModel(context, () => TextFieldCompoenntModel());
    textFieldCompoenntModel8 =
        createModel(context, () => TextFieldCompoenntModel());
    earthRightModel = createModel(context, () => EarthRightModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
    headerModel.dispose();
    earthLeftModel.dispose();
    pageTitleModel.dispose();
    dropdownComponentModel1.dispose();
    textFieldCompoenntModel1.dispose();
    mtTypeDropdownComponentModel.dispose();
    textFieldCompoenntModel2.dispose();
    textFieldCompoenntModel3.dispose();
    textFieldCompoenntModel4.dispose();
    textFieldCompoenntModel5.dispose();
    textFieldCompoenntModel6.dispose();
    dropdownComponentModel2.dispose();
    textFieldCompoenntModel7.dispose();
    textFieldCompoenntModel8.dispose();
    earthRightModel.dispose();
  }
}
