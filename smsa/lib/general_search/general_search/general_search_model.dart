import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/data_loader_widget.dart';
import '/components/data_table_widget.dart';
import '/components/download_as_field_component_widget.dart';
import '/components/drawer_widget.dart';
import '/components/header_widget.dart';
import '/components/selected_filters_items_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/general_search/searchfilters_new/searchfilters_new_widget.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'general_search_widget.dart' show GeneralSearchWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class GeneralSearchModel extends FlutterFlowModel<GeneralSearchWidget> {
  ///  Local state fields for this page.

  bool isFlip = false;

  List<int> elements = [];
  void addToElements(int item) => elements.add(item);
  void removeFromElements(int item) => elements.remove(item);
  void removeAtIndexFromElements(int index) => elements.removeAt(index);
  void insertAtIndexInElements(int index, int item) =>
      elements.insert(index, item);
  void updateElementsAtIndex(int index, Function(int) updateFn) =>
      elements[index] = updateFn(elements[index]);

  List<String> selectedFilters = [];
  void addToSelectedFilters(String item) => selectedFilters.add(item);
  void removeFromSelectedFilters(String item) => selectedFilters.remove(item);
  void removeAtIndexFromSelectedFilters(int index) =>
      selectedFilters.removeAt(index);
  void insertAtIndexInSelectedFilters(int index, String item) =>
      selectedFilters.insert(index, item);
  void updateSelectedFiltersAtIndex(int index, Function(String) updateFn) =>
      selectedFilters[index] = updateFn(selectedFilters[index]);

  List<String> emptyList = [];
  void addToEmptyList(String item) => emptyList.add(item);
  void removeFromEmptyList(String item) => emptyList.remove(item);
  void removeAtIndexFromEmptyList(int index) => emptyList.removeAt(index);
  void insertAtIndexInEmptyList(int index, String item) =>
      emptyList.insert(index, item);
  void updateEmptyListAtIndex(int index, Function(String) updateFn) =>
      emptyList[index] = updateFn(emptyList[index]);

  List<GetSearchModelStruct> searchApiData = [];
  void addToSearchApiData(GetSearchModelStruct item) => searchApiData.add(item);
  void removeFromSearchApiData(GetSearchModelStruct item) =>
      searchApiData.remove(item);
  void removeAtIndexFromSearchApiData(int index) =>
      searchApiData.removeAt(index);
  void insertAtIndexInSearchApiData(int index, GetSearchModelStruct item) =>
      searchApiData.insert(index, item);
  void updateSearchApiDataAtIndex(
          int index, Function(GetSearchModelStruct) updateFn) =>
      searchApiData[index] = updateFn(searchApiData[index]);

  List<int> emptyint = [];
  void addToEmptyint(int item) => emptyint.add(item);
  void removeFromEmptyint(int item) => emptyint.remove(item);
  void removeAtIndexFromEmptyint(int index) => emptyint.removeAt(index);
  void insertAtIndexInEmptyint(int index, int item) =>
      emptyint.insert(index, item);
  void updateEmptyintAtIndex(int index, Function(int) updateFn) =>
      emptyint[index] = updateFn(emptyint[index]);

  int indexSelectedd = 0;

  List<double> emptyDouble = [];
  void addToEmptyDouble(double item) => emptyDouble.add(item);
  void removeFromEmptyDouble(double item) => emptyDouble.remove(item);
  void removeAtIndexFromEmptyDouble(int index) => emptyDouble.removeAt(index);
  void insertAtIndexInEmptyDouble(int index, double item) =>
      emptyDouble.insert(index, item);
  void updateEmptyDoubleAtIndex(int index, Function(double) updateFn) =>
      emptyDouble[index] = updateFn(emptyDouble[index]);

  List<dynamic> msgTypesList = [];
  void addToMsgTypesList(dynamic item) => msgTypesList.add(item);
  void removeFromMsgTypesList(dynamic item) => msgTypesList.remove(item);
  void removeAtIndexFromMsgTypesList(int index) => msgTypesList.removeAt(index);
  void insertAtIndexInMsgTypesList(int index, dynamic item) =>
      msgTypesList.insert(index, item);
  void updateMsgTypesListAtIndex(int index, Function(dynamic) updateFn) =>
      msgTypesList[index] = updateFn(msgTypesList[index]);

  bool checkSortOrder = false;

  List<String> columnSortName = [];
  void addToColumnSortName(String item) => columnSortName.add(item);
  void removeFromColumnSortName(String item) => columnSortName.remove(item);
  void removeAtIndexFromColumnSortName(int index) =>
      columnSortName.removeAt(index);
  void insertAtIndexInColumnSortName(int index, String item) =>
      columnSortName.insert(index, item);
  void updateColumnSortNameAtIndex(int index, Function(String) updateFn) =>
      columnSortName[index] = updateFn(columnSortName[index]);

  bool showSearch = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - encryptFullPayload] action in General_Search widget.
  dynamic? encryptGetAllData;
  // Stores action output result for [Backend Call - API (searchApi)] action in General_Search widget.
  ApiCallResponse? getAllData;
  // Stores action output result for [Custom Action - decryptFullPayload] action in General_Search widget.
  dynamic? decryptedGetAll;
  // Stores action output result for [Backend Call - API (MessageTypesList)] action in General_Search widget.
  ApiCallResponse? messagesTypesResp;
  // Stores action output result for [Custom Action - decryptFullPayload] action in General_Search widget.
  dynamic? msgTypesDecrypted;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for selectedFiltersItems component.
  late SelectedFiltersItemsModel selectedFiltersItemsModel;
  // Model for searchfiltersNew component.
  late SearchfiltersNewModel searchfiltersNewModel;
  // Model for DataTable component.
  late DataTableModel dataTableModel;
  // Stores action output result for [Custom Action - encryptFullPayload] action in DataTable widget.
  dynamic? sortEncrypted;
  // Stores action output result for [Backend Call - API (searchApi)] action in DataTable widget.
  ApiCallResponse? sortApi;
  // Stores action output result for [Custom Action - decryptFullPayload] action in DataTable widget.
  dynamic? sortDecrypted;
  // Model for dataLoader component.
  late DataLoaderModel dataLoaderModel;
  // Model for DownloadAsFieldComponent component.
  late DownloadAsFieldComponentModel downloadAsFieldComponentModel;
  // Stores action output result for [Custom Action - encryptFullPayload] action in PaginationWithDots widget.
  dynamic? indexEncrypteddd;
  // Stores action output result for [Backend Call - API (searchApi)] action in PaginationWithDots widget.
  ApiCallResponse? pageChangedDataaa;
  // Stores action output result for [Custom Action - decryptFullPayload] action in PaginationWithDots widget.
  dynamic? indexDecryptedd;
  // Model for drawer component.
  late DrawerModel drawerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    selectedFiltersItemsModel =
        createModel(context, () => SelectedFiltersItemsModel());
    searchfiltersNewModel = createModel(context, () => SearchfiltersNewModel());
    dataTableModel = createModel(context, () => DataTableModel());
    dataLoaderModel = createModel(context, () => DataLoaderModel());
    downloadAsFieldComponentModel =
        createModel(context, () => DownloadAsFieldComponentModel());
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    selectedFiltersItemsModel.dispose();
    searchfiltersNewModel.dispose();
    dataTableModel.dispose();
    dataLoaderModel.dispose();
    downloadAsFieldComponentModel.dispose();
    drawerModel.dispose();
  }
}
