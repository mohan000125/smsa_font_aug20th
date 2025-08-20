import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/background_i_mage_widget.dart';
import '/components/drawer_widget.dart';
import '/components/filter_with_table_widget.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'list_recipient_widget.dart' show ListRecipientWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class ListRecipientModel extends FlutterFlowModel<ListRecipientWidget> {
  ///  Local state fields for this page.

  List<RecipientMasterDataModelStruct> thresholdMasterData = [];
  void addToThresholdMasterData(RecipientMasterDataModelStruct item) =>
      thresholdMasterData.add(item);
  void removeFromThresholdMasterData(RecipientMasterDataModelStruct item) =>
      thresholdMasterData.remove(item);
  void removeAtIndexFromThresholdMasterData(int index) =>
      thresholdMasterData.removeAt(index);
  void insertAtIndexInThresholdMasterData(
          int index, RecipientMasterDataModelStruct item) =>
      thresholdMasterData.insert(index, item);
  void updateThresholdMasterDataAtIndex(
          int index, Function(RecipientMasterDataModelStruct) updateFn) =>
      thresholdMasterData[index] = updateFn(thresholdMasterData[index]);

  bool editValue = false;

  bool deleteValue = false;

  bool? xlsDownload = false;

  bool? csvDownload = false;

  int? recipientID;

  String? createdBy;

  String? createdDate;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (fetchRecepientMasterData)] action in List-Recipient widget.
  ApiCallResponse? recipientMasters;
  // Model for drawer component.
  late DrawerModel drawerModel;
  // Model for BackgroundIMage component.
  late BackgroundIMageModel backgroundIMageModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for Filter_with_Table component.
  late FilterWithTableModel filterWithTableModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<RecipientMasterDataModelStruct>();

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
    backgroundIMageModel = createModel(context, () => BackgroundIMageModel());
    headerModel = createModel(context, () => HeaderModel());
    filterWithTableModel = createModel(context, () => FilterWithTableModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
    backgroundIMageModel.dispose();
    headerModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    filterWithTableModel.dispose();
    paginatedDataTableController.dispose();
  }
}
