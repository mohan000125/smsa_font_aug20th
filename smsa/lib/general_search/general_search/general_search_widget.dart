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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'general_search_model.dart';
export 'general_search_model.dart';

class GeneralSearchWidget extends StatefulWidget {
  const GeneralSearchWidget({super.key});

  static String routeName = 'General_Search';
  static String routePath = '/generalSearch';

  @override
  State<GeneralSearchWidget> createState() => _GeneralSearchWidgetState();
}

class _GeneralSearchWidgetState extends State<GeneralSearchWidget> {
  late GeneralSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GeneralSearchModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          FFAppState().isPaginateLoader = true;
          FFAppState().pageIndex = 0;
          safeSetState(() {});
          _model.encryptGetAllData = await actions.encryptFullPayload(
            FFAppState().AccessToken,
            FFAppState().DeviceHash,
            '',
            '',
            '',
            '',
            _model.emptyList.toList(),
            _model.emptyList.toList(),
            _model.emptyList.toList(),
            _model.emptyList.toList(),
            _model.emptyList.toList(),
            _model.emptyList.toList(),
            _model.emptyList.toList(),
            _model.emptyList.toList(),
            _model.emptyList.toList(),
            dateTimeFormat("yyyy-MM-dd", getCurrentTimestamp),
            dateTimeFormat("yyyy-MM-dd", getCurrentTimestamp),
            '',
            '',
            '',
            '',
            '',
            _model.emptyint.toList(),
            _model.searchfiltersNewModel.amount.toList(),
            _model.emptyList.toList(),
            _model.emptyList.toList(),
          );
          _model.getAllData = await DashBoardandSearchGroup.searchApiCall.call(
            page: 0,
            encrypted: _model.encryptGetAllData?.toString(),
          );

          if ((_model.getAllData?.succeeded ?? true)) {
            _model.decryptedGetAll = await actions.decryptFullPayload(
              getJsonField(
                (_model.getAllData?.jsonBody ?? ''),
                r'''$.message''',
              ).toString(),
            );
            _model.searchApiData = (getJsonField(
              _model.decryptedGetAll,
              r'''$.messages''',
              true,
            )!
                    .toList()
                    .map<GetSearchModelStruct?>(
                        GetSearchModelStruct.maybeFromMap)
                    .toList() as Iterable<GetSearchModelStruct?>)
                .withoutNulls
                .toList()
                .cast<GetSearchModelStruct>();
            safeSetState(() {});
            FFAppState().totalElements = getJsonField(
              _model.decryptedGetAll,
              r'''$.totalElements''',
            );
            FFAppState().Indexes = functions
                .calculateTotalPages(
                    getJsonField(
                      _model.decryptedGetAll,
                      r'''$.totalElements''',
                    ),
                    10)
                .toList()
                .cast<int>();
            FFAppState().AccessToken = getJsonField(
              _model.decryptedGetAll,
              r'''$.accessToken''',
            ).toString();
            FFAppState().totalPages = getJsonField(
              _model.decryptedGetAll,
              r'''$.totalPages''',
            );
            safeSetState(() {});
            _model.elements = functions
                .calculateTotalPages(
                    getJsonField(
                      _model.decryptedGetAll,
                      r'''$.data.totalElements''',
                    ),
                    10)
                .toList()
                .cast<int>();
            safeSetState(() {});
            FFAppState().isPaginateLoader = false;
            safeSetState(() {});
          } else {
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: Text('Error'),
                  content: Text((_model.getAllData?.exceptionMessage ?? '')),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext),
                      child: Text('Ok'),
                    ),
                  ],
                );
              },
            );
          }
        }),
        Future(() async {
          _model.messagesTypesResp =
              await DashBoardandSearchGroup.messageTypesListCall.call(
            token: FFAppState().AccessToken,
            deviceHash: FFAppState().DeviceHash,
          );

          if ((_model.messagesTypesResp?.succeeded ?? true)) {
            _model.msgTypesDecrypted = await actions.decryptFullPayload(
              getJsonField(
                (_model.messagesTypesResp?.jsonBody ?? ''),
                r'''$.message''',
              ).toString(),
            );
            FFAppState().AccessToken = getJsonField(
              _model.msgTypesDecrypted,
              r'''$.accessToken''',
            ).toString();
            safeSetState(() {});
            _model.msgTypesList = getJsonField(
              _model.msgTypesDecrypted,
              r'''$.messageTypes''',
              true,
            )!
                .toList()
                .cast<dynamic>();
            safeSetState(() {});
          } else {
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: Text('Error'),
                  content:
                      Text((_model.messagesTypesResp?.exceptionMessage ?? '')),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext),
                      child: Text('Ok'),
                    ),
                  ],
                );
              },
            );
          }
        }),
      ]);
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.drawerModel,
            updateCallback: () => safeSetState(() {}),
            child: DrawerWidget(),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(25.0, 10.0, 25.0, 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.headerModel,
                  updateCallback: () => safeSetState(() {}),
                  child: HeaderWidget(
                    openDrawer: () async {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    hitApiS: () async {},
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).borderColor,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: FlutterFlowChoiceChips(
                                options: [
                                  ChipData('Live Data'),
                                  ChipData('Archival')
                                ],
                                onChanged: (val) => safeSetState(() =>
                                    _model.choiceChipsValue = val?.firstOrNull),
                                selectedChipStyle: ChipStyle(
                                  backgroundColor: Color(0xFFE3530F),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Mulish',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                  iconColor: FlutterFlowTheme.of(context).info,
                                  iconSize: 12.0,
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                unselectedChipStyle: ChipStyle(
                                  backgroundColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Mulish',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                  iconColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  iconSize: 12.0,
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                chipSpacing: 8.0,
                                rowSpacing: 8.0,
                                multiselect: false,
                                initialized: _model.choiceChipsValue != null,
                                alignment: WrapAlignment.start,
                                controller:
                                    _model.choiceChipsValueController ??=
                                        FormFieldController<List<String>>(
                                  ['Live Data'],
                                ),
                                wrapped: false,
                              ),
                            ),
                          ),
                        ),
                        if (responsiveVisibility(
                          context: context,
                          desktop: false,
                        ))
                          wrapWithModel(
                            model: _model.selectedFiltersItemsModel,
                            updateCallback: () => safeSetState(() {}),
                            child: SelectedFiltersItemsWidget(
                              passedData: _model.selectedFilters,
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          desktop: false,
                        ))
                          Container(
                            width: 37.0,
                            height: 37.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xFFC6C6C6),
                                width: 0.5,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Icon(
                                Icons.navigate_next,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                            ),
                          ),
                      ].divide(SizedBox(width: 20.0)),
                    ),
                  ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        wrapWithModel(
                          model: _model.searchfiltersNewModel,
                          updateCallback: () => safeSetState(() {}),
                          child: SearchfiltersNewWidget(
                            typesList: _model.msgTypesList,
                            selectedFilters: (items) async {
                              _model.selectedFilters =
                                  items.toList().cast<String>();
                              safeSetState(() {});
                            },
                            filterData: (filteredData) async {
                              _model.searchApiData = filteredData
                                  .toList()
                                  .cast<GetSearchModelStruct>();
                              safeSetState(() {});
                            },
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: MediaQuery.sizeOf(context).height * 0.8,
                                decoration: BoxDecoration(),
                                child: Builder(
                                  builder: (context) {
                                    if (!FFAppState().isPaginateLoader) {
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.dataTableModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: DataTableWidget(
                                            searchData: _model.searchApiData,
                                            performAction: (columnName) async {
                                              _model.checkSortOrder = true;
                                              _model.columnSortName = columnName
                                                  .toList()
                                                  .cast<String>();
                                              safeSetState(() {});
                                              _model.sortEncrypted =
                                                  await actions
                                                      .encryptFullPayload(
                                                FFAppState().AccessToken,
                                                FFAppState().DeviceHash,
                                                () {
                                                  if ((_model
                                                              .dataTableModel
                                                              .paginatedDataTableController
                                                              .sortAscending ==
                                                          true) &&
                                                      (_model.checkSortOrder ==
                                                          true)) {
                                                    return 'ASC';
                                                  } else if ((_model
                                                              .dataTableModel
                                                              .paginatedDataTableController
                                                              .sortAscending ==
                                                          false) &&
                                                      (_model.checkSortOrder ==
                                                          true)) {
                                                    return 'DESC';
                                                  } else {
                                                    return '';
                                                  }
                                                }(),
                                                _model
                                                    .searchfiltersNewModel.uetr,
                                                _model.searchfiltersNewModel
                                                    .refNumber,
                                                _model.searchfiltersNewModel
                                                    .generatlText,
                                                _model.searchfiltersNewModel
                                                    .senderBic
                                                    .toList(),
                                                _model.searchfiltersNewModel
                                                    .receiverBic
                                                    .toList(),
                                                _model.emptyList.toList(),
                                                ((List<String> var1,
                                                            List<String> var2) {
                                                  return [...var1, ...var2];
                                                }(
                                                        _model
                                                            .searchfiltersNewModel
                                                            .identifierSent!
                                                            .field
                                                            .toList(),
                                                        _model
                                                            .searchfiltersNewModel
                                                            .identifierReceived!
                                                            .field
                                                            .toList()))
                                                    .toList(),
                                                _model.emptyList.toList(),
                                                _model.emptyList.toList(),
                                                _model.emptyList.toList(),
                                                ((List<String> var1,
                                                            List<String> var2) {
                                                  return [...var1, ...var2];
                                                }(
                                                        _model
                                                            .searchfiltersNewModel
                                                            .fileTypeNack!
                                                            .field
                                                            .toList(),
                                                        _model
                                                            .searchfiltersNewModel
                                                            .fileTypeACK!
                                                            .field
                                                            .toList()))
                                                    .toList(),
                                                _model.searchfiltersNewModel
                                                    .mtTypess
                                                    .toList(),
                                                _model.searchfiltersNewModel
                                                    .dateFrom,
                                                _model.searchfiltersNewModel
                                                    .dateTo,
                                                _model.searchfiltersNewModel
                                                    .fromTime,
                                                _model.searchfiltersNewModel
                                                    .toTime,
                                                _model.searchfiltersNewModel
                                                    .fromAmount
                                                    ?.toString(),
                                                _model.searchfiltersNewModel
                                                    .toAmount
                                                    ?.toString(),
                                                _model.searchfiltersNewModel
                                                    .generatlText,
                                                _model.emptyint.toList(),
                                                _model.searchfiltersNewModel
                                                    .amount
                                                    .toList(),
                                                columnName.toList(),
                                                _model.searchfiltersNewModel
                                                    .currency
                                                    .toList(),
                                              );
                                              _model.sortApi =
                                                  await DashBoardandSearchGroup
                                                      .searchApiCall
                                                      .call(
                                                page: _model.indexSelectedd,
                                                encrypted: _model.sortEncrypted
                                                    ?.toString(),
                                              );

                                              if ((_model.sortApi?.succeeded ??
                                                  true)) {
                                                _model.sortDecrypted =
                                                    await actions
                                                        .decryptFullPayload(
                                                  getJsonField(
                                                    (_model.sortApi?.jsonBody ??
                                                        ''),
                                                    r'''$.message''',
                                                  ).toString(),
                                                );
                                                _model.searchApiData =
                                                    (getJsonField(
                                                  _model.sortDecrypted,
                                                  r'''$.messages''',
                                                  true,
                                                )!
                                                                .toList()
                                                                .map<GetSearchModelStruct?>(
                                                                    GetSearchModelStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                GetSearchModelStruct?>)
                                                        .withoutNulls
                                                        .toList()
                                                        .cast<
                                                            GetSearchModelStruct>();
                                                safeSetState(() {});
                                                FFAppState().Indexes = functions
                                                    .calculateTotalPages(
                                                        getJsonField(
                                                          _model.sortDecrypted,
                                                          r'''$.totalElements''',
                                                        ),
                                                        10)
                                                    .toList()
                                                    .cast<int>();
                                                FFAppState().AccessToken =
                                                    getJsonField(
                                                  _model.sortDecrypted,
                                                  r'''$.accessToken''',
                                                ).toString();
                                                FFAppState().totalPages =
                                                    getJsonField(
                                                  _model.sortDecrypted,
                                                  r'''$.totalPages''',
                                                );
                                                FFAppState().totalElements =
                                                    getJsonField(
                                                  _model.sortDecrypted,
                                                  r'''$.totalElements''',
                                                );
                                                safeSetState(() {});
                                              }

                                              safeSetState(() {});
                                            },
                                          ),
                                        ),
                                      );
                                    } else {
                                      return Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.dataLoaderModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: DataLoaderWidget(),
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                              if (_model.searchApiData.length > 0)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 7.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 0.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            if (!FFAppState().flipdownload) {
                                              return Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 1.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    FFAppState().flipdownload =
                                                        !(FFAppState()
                                                                .flipdownload ??
                                                            true);
                                                    safeSetState(() {});
                                                    FFAppState()
                                                        .isRowChecked = _model
                                                            .dataTableModel
                                                            .paginatedDataTableController
                                                            .selectedRows
                                                            .toList()
                                                            .length >
                                                        0;
                                                    safeSetState(() {});
                                                  },
                                                  text: 'Download As',
                                                  icon: FaIcon(
                                                    FontAwesomeIcons.download,
                                                    size: 20.0,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 180.0,
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconColor: Colors.white,
                                                    color: Color(0xFFE3530F),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                    elevation: 0.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              );
                                            } else {
                                              return wrapWithModel(
                                                model: _model
                                                    .downloadAsFieldComponentModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    DownloadAsFieldComponentWidget(
                                                  xlsxCallback: () async {
                                                    FFAppState().isDownloaded =
                                                        true;
                                                    safeSetState(() {});
                                                    await actions
                                                        .downloadSwiftZipFile(
                                                      'XLSX',
                                                      functions
                                                          .selectedRowsData(
                                                              _model
                                                                  .searchApiData
                                                                  .toList(),
                                                              _model
                                                                  .dataTableModel
                                                                  .paginatedDataTableController
                                                                  .selectedRows
                                                                  .toList())
                                                          ?.toList(),
                                                    );
                                                    FFAppState().isDownloaded =
                                                        false;
                                                    safeSetState(() {});
                                                    if (FFAppState()
                                                            .downloadSuccess ==
                                                        true) {
                                                      FFAppState()
                                                              .flipdownload =
                                                          !(FFAppState()
                                                                  .flipdownload ??
                                                              true);
                                                      safeSetState(() {});
                                                    } else {
                                                      FFAppState()
                                                              .flipdownload =
                                                          !(FFAppState()
                                                                  .flipdownload ??
                                                              true);
                                                      safeSetState(() {});
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Alert'),
                                                            content: Text(
                                                                'Something went wrong. Please try again.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    }
                                                  },
                                                  txtCallback: () async {
                                                    FFAppState().isDownloaded =
                                                        true;
                                                    safeSetState(() {});
                                                    await actions
                                                        .downloadSwiftZipFile(
                                                      'TXT',
                                                      functions
                                                          .selectedRowsData(
                                                              _model
                                                                  .searchApiData
                                                                  .toList(),
                                                              _model
                                                                  .dataTableModel
                                                                  .paginatedDataTableController
                                                                  .selectedRows
                                                                  .toList())
                                                          ?.toList(),
                                                    );
                                                    FFAppState().isDownloaded =
                                                        false;
                                                    safeSetState(() {});
                                                    if (FFAppState()
                                                            .downloadSuccess ==
                                                        true) {
                                                      FFAppState()
                                                              .flipdownload =
                                                          !(FFAppState()
                                                                  .flipdownload ??
                                                              true);
                                                      safeSetState(() {});
                                                    } else {
                                                      FFAppState()
                                                              .flipdownload =
                                                          !(FFAppState()
                                                                  .flipdownload ??
                                                              true);
                                                      safeSetState(() {});
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Alert'),
                                                            content: Text(
                                                                'Something went wrong. Please try again.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    }
                                                  },
                                                  csvCallback: () async {
                                                    FFAppState().isDownloaded =
                                                        true;
                                                    safeSetState(() {});
                                                    await actions
                                                        .downloadSwiftZipFile(
                                                      'CSV',
                                                      functions
                                                          .selectedRowsData(
                                                              _model
                                                                  .searchApiData
                                                                  .toList(),
                                                              _model
                                                                  .dataTableModel
                                                                  .paginatedDataTableController
                                                                  .selectedRows
                                                                  .toList())
                                                          ?.toList(),
                                                    );
                                                    FFAppState().isDownloaded =
                                                        false;
                                                    safeSetState(() {});
                                                    if (FFAppState()
                                                            .downloadSuccess ==
                                                        true) {
                                                      FFAppState()
                                                              .flipdownload =
                                                          !(FFAppState()
                                                                  .flipdownload ??
                                                              true);
                                                      safeSetState(() {});
                                                    } else {
                                                      FFAppState()
                                                              .flipdownload =
                                                          !(FFAppState()
                                                                  .flipdownload ??
                                                              true);
                                                      safeSetState(() {});
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Alert'),
                                                            content: Text(
                                                                'Something went wrong. Please try again.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    }
                                                  },
                                                  selectedTXTCallback:
                                                      () async {
                                                    FFAppState().isDownloaded =
                                                        true;
                                                    safeSetState(() {});
                                                    await actions
                                                        .downloadSwiftZipFile(
                                                      'CTXT',
                                                      functions
                                                          .selectedRowsData(
                                                              _model
                                                                  .searchApiData
                                                                  .toList(),
                                                              _model
                                                                  .dataTableModel
                                                                  .paginatedDataTableController
                                                                  .selectedRows
                                                                  .toList())
                                                          ?.toList(),
                                                    );
                                                    FFAppState().isDownloaded =
                                                        false;
                                                    safeSetState(() {});
                                                    if (FFAppState()
                                                            .downloadSuccess ==
                                                        true) {
                                                      FFAppState()
                                                              .flipdownload =
                                                          !(FFAppState()
                                                                  .flipdownload ??
                                                              true);
                                                      safeSetState(() {});
                                                    } else {
                                                      FFAppState()
                                                              .flipdownload =
                                                          !(FFAppState()
                                                                  .flipdownload ??
                                                              true);
                                                      safeSetState(() {});
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Alert'),
                                                            content: Text(
                                                                'Something went wrong. Please try again.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    }
                                                  },
                                                  selectedPDFCallback:
                                                      () async {
                                                    FFAppState().isDownloaded =
                                                        true;
                                                    safeSetState(() {});
                                                    await actions
                                                        .downloadSwiftZipFile(
                                                      'PDF',
                                                      functions
                                                          .selectedRowsData(
                                                              _model
                                                                  .searchApiData
                                                                  .toList(),
                                                              _model
                                                                  .dataTableModel
                                                                  .paginatedDataTableController
                                                                  .selectedRows
                                                                  .toList())
                                                          ?.toList(),
                                                    );
                                                    FFAppState().isDownloaded =
                                                        false;
                                                    safeSetState(() {});
                                                    if (FFAppState()
                                                            .downloadSuccess ==
                                                        true) {
                                                      FFAppState()
                                                              .flipdownload =
                                                          !(FFAppState()
                                                                  .flipdownload ??
                                                              true);
                                                      safeSetState(() {});
                                                    } else {
                                                      FFAppState()
                                                              .flipdownload =
                                                          !(FFAppState()
                                                                  .flipdownload ??
                                                              true);
                                                      safeSetState(() {});
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Alert'),
                                                            content: Text(
                                                                'Something went wrong. Please try again.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    }
                                                  },
                                                  selectedXLSXCallback:
                                                      () async {
                                                    FFAppState().isDownloaded =
                                                        true;
                                                    safeSetState(() {});
                                                    await actions
                                                        .downloadSwiftZipFile(
                                                      'CXLSX',
                                                      functions
                                                          .selectedRowsData(
                                                              _model
                                                                  .searchApiData
                                                                  .toList(),
                                                              _model
                                                                  .dataTableModel
                                                                  .paginatedDataTableController
                                                                  .selectedRows
                                                                  .toList())
                                                          ?.toList(),
                                                    );
                                                    FFAppState().isDownloaded =
                                                        false;
                                                    safeSetState(() {});
                                                    if (FFAppState()
                                                            .downloadSuccess ==
                                                        true) {
                                                      FFAppState()
                                                              .flipdownload =
                                                          !(FFAppState()
                                                                  .flipdownload ??
                                                              true);
                                                      safeSetState(() {});
                                                    } else {
                                                      FFAppState()
                                                              .flipdownload =
                                                          !(FFAppState()
                                                                  .flipdownload ??
                                                              true);
                                                      safeSetState(() {});
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Alert'),
                                                            content: Text(
                                                                'Something went wrong. Please try again.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    }
                                                  },
                                                  selectedCSVCallback:
                                                      () async {
                                                    FFAppState().isDownloaded =
                                                        true;
                                                    safeSetState(() {});
                                                    await actions
                                                        .downloadSwiftZipFile(
                                                      'CCSV',
                                                      functions
                                                          .selectedRowsData(
                                                              _model
                                                                  .searchApiData
                                                                  .toList(),
                                                              _model
                                                                  .dataTableModel
                                                                  .paginatedDataTableController
                                                                  .selectedRows
                                                                  .toList())
                                                          ?.toList(),
                                                    );
                                                    FFAppState().isDownloaded =
                                                        false;
                                                    safeSetState(() {});
                                                    if (FFAppState()
                                                            .downloadSuccess ==
                                                        true) {
                                                      FFAppState()
                                                              .flipdownload =
                                                          !(FFAppState()
                                                                  .flipdownload ??
                                                              true);
                                                      safeSetState(() {});
                                                    } else {
                                                      FFAppState()
                                                              .flipdownload =
                                                          !(FFAppState()
                                                                  .flipdownload ??
                                                              true);
                                                      safeSetState(() {});
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Alert'),
                                                            content: Text(
                                                                'Something went wrong. Please try again.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    }
                                                  },
                                                ),
                                              );
                                            }
                                          },
                                        ),
                                      ),
                                      Text(
                                        'Total Data :${FFAppState().totalElements.toString()}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Mulish',
                                              fontSize: 13.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Text(
                                        'Page ${((int var1) {
                                          return ++var1;
                                        }(FFAppState().pageIndex)).toString()} of ${FFAppState().totalPages.toString()}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Mulish',
                                              fontSize: 13.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Container(
                                        width: 420.0,
                                        height: 45.0,
                                        child:
                                            custom_widgets.PaginationWithDots(
                                          width: 420.0,
                                          height: 45.0,
                                          indexFull: FFAppState().totalPages,
                                          listttt: (indexSelected) async {
                                            FFAppState().isPaginateLoader =
                                                true;
                                            safeSetState(() {});
                                            _model.indexEncrypteddd =
                                                await actions
                                                    .encryptFullPayload(
                                              FFAppState().AccessToken,
                                              FFAppState().DeviceHash,
                                              () {
                                                if ((_model
                                                            .dataTableModel
                                                            .paginatedDataTableController
                                                            .sortAscending ==
                                                        true) &&
                                                    (_model.checkSortOrder ==
                                                        true)) {
                                                  return 'ASC';
                                                } else if ((_model
                                                            .dataTableModel
                                                            .paginatedDataTableController
                                                            .sortAscending ==
                                                        false) &&
                                                    (_model.checkSortOrder ==
                                                        true)) {
                                                  return 'DESC';
                                                } else {
                                                  return '';
                                                }
                                              }(),
                                              _model.searchfiltersNewModel.uetr,
                                              _model.searchfiltersNewModel
                                                  .refNumber,
                                              _model.searchfiltersNewModel
                                                  .generatlText,
                                              _model.searchfiltersNewModel
                                                  .senderBic
                                                  .toList(),
                                              _model.searchfiltersNewModel
                                                  .receiverBic
                                                  .toList(),
                                              _model.emptyList.toList(),
                                              ((List<String> var1,
                                                          List<String> var2) {
                                                return [...var1, ...var2];
                                              }(
                                                      _model
                                                          .searchfiltersNewModel
                                                          .identifierSent!
                                                          .field
                                                          .toList(),
                                                      _model
                                                          .searchfiltersNewModel
                                                          .identifierReceived!
                                                          .field
                                                          .toList()))
                                                  .toList(),
                                              _model.emptyList.toList(),
                                              _model.emptyList.toList(),
                                              _model.emptyList.toList(),
                                              ((List<String> var1,
                                                          List<String> var2) {
                                                return [...var1, ...var2];
                                              }(
                                                      _model
                                                          .searchfiltersNewModel
                                                          .fileTypeNack!
                                                          .field
                                                          .toList(),
                                                      _model
                                                          .searchfiltersNewModel
                                                          .fileTypeACK!
                                                          .field
                                                          .toList()))
                                                  .toList(),
                                              _model.searchfiltersNewModel
                                                  .mtTypess
                                                  .toList(),
                                              _model.searchfiltersNewModel
                                                  .dateFrom,
                                              _model
                                                  .searchfiltersNewModel.dateTo,
                                              _model.searchfiltersNewModel
                                                  .fromTime,
                                              _model
                                                  .searchfiltersNewModel.toTime,
                                              _model.searchfiltersNewModel
                                                  .fromAmount
                                                  ?.toString(),
                                              _model.searchfiltersNewModel
                                                  .toAmount
                                                  ?.toString(),
                                              _model.searchfiltersNewModel
                                                  .generatlText,
                                              _model.emptyint.toList(),
                                              _model
                                                  .searchfiltersNewModel.amount
                                                  .toList(),
                                              _model.columnSortName.toList(),
                                              _model.searchfiltersNewModel
                                                  .currency
                                                  .toList(),
                                            );
                                            _model.pageChangedDataaa =
                                                await DashBoardandSearchGroup
                                                    .searchApiCall
                                                    .call(
                                              page: indexSelected,
                                              encrypted: _model.indexEncrypteddd
                                                  ?.toString(),
                                            );

                                            if ((_model.pageChangedDataaa
                                                    ?.succeeded ??
                                                true)) {
                                              _model.indexDecryptedd =
                                                  await actions
                                                      .decryptFullPayload(
                                                getJsonField(
                                                  (_model.pageChangedDataaa
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.message''',
                                                ).toString(),
                                              );
                                              _model.searchApiData =
                                                  (getJsonField(
                                                _model.indexDecryptedd,
                                                r'''$.messages''',
                                                true,
                                              )!
                                                              .toList()
                                                              .map<GetSearchModelStruct?>(
                                                                  GetSearchModelStruct
                                                                      .maybeFromMap)
                                                              .toList()
                                                          as Iterable<
                                                              GetSearchModelStruct?>)
                                                      .withoutNulls
                                                      .toList()
                                                      .cast<
                                                          GetSearchModelStruct>();
                                              _model.indexSelectedd =
                                                  indexSelected;
                                              safeSetState(() {});
                                              FFAppState().pageIndex =
                                                  indexSelected;
                                              FFAppState().Indexes = functions
                                                  .calculateTotalPages(
                                                      getJsonField(
                                                        _model.indexDecryptedd,
                                                        r'''$.totalPages''',
                                                      ),
                                                      10)
                                                  .toList()
                                                  .cast<int>();
                                              FFAppState().AccessToken =
                                                  getJsonField(
                                                _model.indexDecryptedd,
                                                r'''$.accessToken''',
                                              ).toString();
                                              FFAppState().totalPages =
                                                  getJsonField(
                                                _model.indexDecryptedd,
                                                r'''$.totalPages''',
                                              );
                                              FFAppState().totalElements =
                                                  getJsonField(
                                                _model.indexDecryptedd,
                                                r'''$.totalElements''',
                                              );
                                              safeSetState(() {});
                                              FFAppState().isPaginateLoader =
                                                  false;
                                              safeSetState(() {});
                                            }

                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
