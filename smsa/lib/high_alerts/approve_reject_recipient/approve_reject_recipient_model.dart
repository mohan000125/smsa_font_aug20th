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
import 'approve_reject_recipient_widget.dart' show ApproveRejectRecipientWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class ApproveRejectRecipientModel
    extends FlutterFlowModel<ApproveRejectRecipientWidget> {
  ///  Local state fields for this page.

  List<RecipientTempDataModelStruct> recipientTempData = [];
  void addToRecipientTempData(RecipientTempDataModelStruct item) =>
      recipientTempData.add(item);
  void removeFromRecipientTempData(RecipientTempDataModelStruct item) =>
      recipientTempData.remove(item);
  void removeAtIndexFromRecipientTempData(int index) =>
      recipientTempData.removeAt(index);
  void insertAtIndexInRecipientTempData(
          int index, RecipientTempDataModelStruct item) =>
      recipientTempData.insert(index, item);
  void updateRecipientTempDataAtIndex(
          int index, Function(RecipientTempDataModelStruct) updateFn) =>
      recipientTempData[index] = updateFn(recipientTempData[index]);

  bool? xlsdownload = false;

  bool? csvdownload = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (fetchRecepientTempData)] action in ApproveReject-Recipient widget.
  ApiCallResponse? recipientTempDataRes;
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
      FlutterFlowDataTableController<RecipientTempDataModelStruct>();

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
