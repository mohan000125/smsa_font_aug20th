import '/backend/schema/structs/index.dart';
import '/components/download_as_paras_widget.dart';
import '/components/drawer_widget.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general_search/searchfilters_new_copy/searchfilters_new_copy_widget.dart';
import 'dart:ui';
import 'general_search_paras_widget.dart' show GeneralSearchParasWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GeneralSearchParasModel
    extends FlutterFlowModel<GeneralSearchParasWidget> {
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

  List<String> filtercount = [
    'Date',
    'Time',
    'Message',
    'Geography',
    'Title',
    'Sender',
    'Receiver'
  ];
  void addToFiltercount(String item) => filtercount.add(item);
  void removeFromFiltercount(String item) => filtercount.remove(item);
  void removeAtIndexFromFiltercount(int index) => filtercount.removeAt(index);
  void insertAtIndexInFiltercount(int index, String item) =>
      filtercount.insert(index, item);
  void updateFiltercountAtIndex(int index, Function(String) updateFn) =>
      filtercount[index] = updateFn(filtercount[index]);

  bool liveOrArchival = false;

  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for searchfiltersNewCopy component.
  late SearchfiltersNewCopyModel searchfiltersNewCopyModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController = FlutterFlowDataTableController<int>();
  // Model for DownloadAsParas component.
  late DownloadAsParasModel downloadAsParasModel;
  // Model for drawer component.
  late DrawerModel drawerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    searchfiltersNewCopyModel =
        createModel(context, () => SearchfiltersNewCopyModel());
    downloadAsParasModel = createModel(context, () => DownloadAsParasModel());
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    searchfiltersNewCopyModel.dispose();
    paginatedDataTableController.dispose();
    downloadAsParasModel.dispose();
    drawerModel.dispose();
  }
}
