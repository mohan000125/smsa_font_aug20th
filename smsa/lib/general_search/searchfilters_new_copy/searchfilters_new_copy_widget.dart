import '/backend/schema/structs/index.dart';
import '/components/general_search_b_uttonto_open_menu_widget.dart';
import '/components/general_search_filter_text_fields_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'searchfilters_new_copy_model.dart';
export 'searchfilters_new_copy_model.dart';

class SearchfiltersNewCopyWidget extends StatefulWidget {
  const SearchfiltersNewCopyWidget({
    super.key,
    this.selectedFilters,
    this.filterData,
    this.typesList,
  });

  final Future Function(List<String> items)? selectedFilters;
  final Future Function(List<GetSearchModelStruct> filteredData)? filterData;
  final List<dynamic>? typesList;

  @override
  State<SearchfiltersNewCopyWidget> createState() =>
      _SearchfiltersNewCopyWidgetState();
}

class _SearchfiltersNewCopyWidgetState
    extends State<SearchfiltersNewCopyWidget> {
  late SearchfiltersNewCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchfiltersNewCopyModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.identifierSent = FiltersStruct(
        status: false,
      );
      _model.identifierReceived = FiltersStruct(
        status: false,
      );
      _model.fileTypeNack = FiltersStruct(
        status: false,
      );
      _model.fileTypeACK = FiltersStruct(
        status: false,
      );
      _model.dateFrom = dateTimeFormat("yyyy-MM-dd", getCurrentTimestamp);
      _model.dateTo = dateTimeFormat("yyyy-MM-dd", getCurrentTimestamp);
      _model.updatePage(() {});
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(13.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).borderColor,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            wrapWithModel(
              model: _model.generalSearchBUttontoOpenMenuModel1,
              updateCallback: () => safeSetState(() {}),
              child: GeneralSearchBUttontoOpenMenuWidget(
                title: 'Date Range',
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 10.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Visibility(
                  visible: _model.selectDate,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 200.0,
                            height: 35.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiaryBG,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'From : ${_model.dateFrom}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Mulish',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.dateFrom = '  ';
                                      safeSetState(() {});
                                    },
                                    child: Icon(
                                      Icons.clear,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              final _datePicked1Date = await showDatePicker(
                                context: context,
                                initialDate: getCurrentTimestamp,
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2050),
                                builder: (context, child) {
                                  return wrapInMaterialDatePickerTheme(
                                    context,
                                    child!,
                                    headerBackgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    headerForegroundColor:
                                        FlutterFlowTheme.of(context).info,
                                    headerTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily: 'Mulish',
                                              fontSize: 32.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                    pickerBackgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    pickerForegroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                    selectedDateTimeBackgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    selectedDateTimeForegroundColor:
                                        FlutterFlowTheme.of(context).info,
                                    actionButtonForegroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                    iconSize: 24.0,
                                  );
                                },
                              );

                              if (_datePicked1Date != null) {
                                safeSetState(() {
                                  _model.datePicked1 = DateTime(
                                    _datePicked1Date.year,
                                    _datePicked1Date.month,
                                    _datePicked1Date.day,
                                  );
                                });
                              } else if (_model.datePicked1 != null) {
                                safeSetState(() {
                                  _model.datePicked1 = getCurrentTimestamp;
                                });
                              }
                              _model.dateFrom = dateTimeFormat(
                                  "yyyy-MM-dd", _model.datePicked1);
                              safeSetState(() {});
                            },
                            child: Icon(
                              Icons.calendar_month,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 200.0,
                            height: 35.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiaryBG,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'To : ${_model.dateTo}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Mulish',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.dateTo = ' ';
                                      safeSetState(() {});
                                    },
                                    child: Icon(
                                      Icons.clear,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              final _datePicked2Date = await showDatePicker(
                                context: context,
                                initialDate: getCurrentTimestamp,
                                firstDate:
                                    (_model.datePicked1 ?? DateTime(1900)),
                                lastDate: DateTime(2050),
                                builder: (context, child) {
                                  return wrapInMaterialDatePickerTheme(
                                    context,
                                    child!,
                                    headerBackgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    headerForegroundColor:
                                        FlutterFlowTheme.of(context).info,
                                    headerTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily: 'Mulish',
                                              fontSize: 32.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                    pickerBackgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    pickerForegroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                    selectedDateTimeBackgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    selectedDateTimeForegroundColor:
                                        FlutterFlowTheme.of(context).info,
                                    actionButtonForegroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                    iconSize: 24.0,
                                  );
                                },
                              );

                              if (_datePicked2Date != null) {
                                safeSetState(() {
                                  _model.datePicked2 = DateTime(
                                    _datePicked2Date.year,
                                    _datePicked2Date.month,
                                    _datePicked2Date.day,
                                  );
                                });
                              } else if (_model.datePicked2 != null) {
                                safeSetState(() {
                                  _model.datePicked2 = getCurrentTimestamp;
                                });
                              }
                              _model.dateTo = dateTimeFormat(
                                  "yyyy-MM-dd", _model.datePicked2);
                              safeSetState(() {});
                            },
                            child: Icon(
                              Icons.calendar_month,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ].divide(SizedBox(height: 10.0)),
                  ),
                ),
              ),
            ),
            wrapWithModel(
              model: _model.generalSearchBUttontoOpenMenuModel2,
              updateCallback: () => safeSetState(() {}),
              child: GeneralSearchBUttontoOpenMenuWidget(
                title: 'Message Search',
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 6.0, 20.0, 6.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Visibility(
                  visible: _model.msgsearch == true,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'I/O Identifier',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Mulish',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Builder(
                                      builder: (context) {
                                        if (_model.identifierSent?.status ==
                                            true) {
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.identifierSent =
                                                  FiltersStruct(
                                                status: false,
                                                field: [],
                                              );
                                              _model.removeFromSelectedItems(
                                                  'Received');
                                              _model.updatePage(() {});
                                              FFAppState()
                                                  .removeFromIdentifiersDownload(
                                                      'I');
                                              _model.updatePage(() {});
                                              await widget.selectedFilters
                                                  ?.call(
                                                _model.selectedItems,
                                              );
                                            },
                                            child: Icon(
                                              Icons.check_box,
                                              color: Color(0xFFF26430),
                                              size: 12.0,
                                            ),
                                          );
                                        } else {
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.identifierSent =
                                                  FiltersStruct(
                                                field: ['I'],
                                                status: true,
                                              );
                                              _model.addToSelectedItems(
                                                  'Received');
                                              _model.updatePage(() {});
                                              FFAppState()
                                                  .addToIdentifiersDownload(
                                                      'I');
                                              _model.updatePage(() {});
                                              await widget.selectedFilters
                                                  ?.call(
                                                _model.selectedItems,
                                              );
                                            },
                                            child: Icon(
                                              Icons
                                                  .check_box_outline_blank_sharp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 12.0,
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                    Text(
                                      'I-Received',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mulish',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 11.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 5.0)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Builder(
                                      builder: (context) {
                                        if (_model.identifierReceived?.status ==
                                            false) {
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.identifierReceived =
                                                  FiltersStruct(
                                                field: ['O'],
                                                status: true,
                                              );
                                              _model.addToSelectedItems('Sent');
                                              _model.updatePage(() {});
                                              FFAppState()
                                                  .addToIdentifiersDownload(
                                                      'O');
                                              _model.updatePage(() {});
                                              await widget.selectedFilters
                                                  ?.call(
                                                _model.selectedItems,
                                              );
                                            },
                                            child: Icon(
                                              Icons.check_box_outline_blank,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 12.0,
                                            ),
                                          );
                                        } else {
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.identifierReceived =
                                                  FiltersStruct(
                                                status: false,
                                                field: [],
                                              );
                                              _model.removeFromSelectedItems(
                                                  'Sent');
                                              _model.updatePage(() {});
                                              FFAppState()
                                                  .removeFromIdentifiersDownload(
                                                      'O');
                                              _model.updatePage(() {});
                                              await widget.selectedFilters
                                                  ?.call(
                                                _model.selectedItems,
                                              );
                                            },
                                            child: Icon(
                                              Icons.check_box_rounded,
                                              color: Color(0xFFF26430),
                                              size: 12.0,
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                    Text(
                                      'O-Sent',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mulish',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 11.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 5.0)),
                                ),
                              ].divide(SizedBox(height: 10.0)),
                            ),
                          ].divide(SizedBox(height: 10.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'File Types',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Mulish',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Builder(
                                      builder: (context) {
                                        if (_model.fileTypeNack?.status ==
                                            true) {
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.fileTypeNack =
                                                  FiltersStruct(
                                                field: [],
                                                status: false,
                                              );
                                              _model.removeFromSelectedItems(
                                                  'NAK');
                                              _model.updatePage(() {});
                                              FFAppState()
                                                  .removeFromFileTypeDownload(
                                                      'NAK');
                                              _model.updatePage(() {});
                                              await widget.selectedFilters
                                                  ?.call(
                                                _model.selectedItems,
                                              );
                                            },
                                            child: Icon(
                                              Icons.check_box_rounded,
                                              color: Color(0xFFF26430),
                                              size: 12.0,
                                            ),
                                          );
                                        } else {
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.fileTypeNack =
                                                  FiltersStruct(
                                                status: true,
                                                field: ['NAK'],
                                              );
                                              _model.addToSelectedItems('NAK');
                                              _model.updatePage(() {});
                                              FFAppState()
                                                  .addToFileTypeDownload('NAK');
                                              _model.updatePage(() {});
                                              await widget.selectedFilters
                                                  ?.call(
                                                _model.selectedItems,
                                              );
                                            },
                                            child: Icon(
                                              Icons.check_box_outline_blank,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 12.0,
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                    Text(
                                      'NAK',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mulish',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 11.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 5.0)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Builder(
                                      builder: (context) {
                                        if (_model.fileTypeACK?.status ==
                                            false) {
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.fileTypeACK =
                                                  FiltersStruct(
                                                status: true,
                                                field: ['ACK'],
                                              );
                                              _model.addToSelectedItems('ACK');
                                              _model.updatePage(() {});
                                              FFAppState()
                                                  .addToFileTypeDownload('ACK');
                                              _model.updatePage(() {});
                                              await widget.selectedFilters
                                                  ?.call(
                                                _model.selectedItems,
                                              );
                                            },
                                            child: Icon(
                                              Icons.check_box_outline_blank,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 12.0,
                                            ),
                                          );
                                        } else {
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.fileTypeACK =
                                                  FiltersStruct(
                                                field: [],
                                                status: false,
                                              );
                                              _model.removeFromSelectedItems(
                                                  'ACK');
                                              _model.updatePage(() {});
                                              FFAppState()
                                                  .removeFromFileTypeDownload(
                                                      'ACK');
                                              _model.updatePage(() {});
                                              await widget.selectedFilters
                                                  ?.call(
                                                _model.selectedItems,
                                              );
                                            },
                                            child: Icon(
                                              Icons.check_box_rounded,
                                              color: Color(0xFFF26430),
                                              size: 12.0,
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                    Text(
                                      'ACK',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mulish',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 11.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 5.0)),
                                ),
                              ].divide(SizedBox(height: 10.0)),
                            ),
                          ].divide(SizedBox(height: 10.0)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            wrapWithModel(
              model: _model.generalSearchBUttontoOpenMenuModel3,
              updateCallback: () => safeSetState(() {}),
              child: GeneralSearchBUttontoOpenMenuWidget(
                title: 'Sender / Receiver',
              ),
            ),
            wrapWithModel(
              model: _model.generalSearchBUttontoOpenMenuModel4,
              updateCallback: () => safeSetState(() {}),
              child: GeneralSearchBUttontoOpenMenuWidget(),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      wrapWithModel(
                        model: _model.generalSearchFilterTextFieldsModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: GeneralSearchFilterTextFieldsWidget(),
                      ),
                      wrapWithModel(
                        model: _model.generalSearchFilterTextFieldsModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: GeneralSearchFilterTextFieldsWidget(),
                      ),
                      wrapWithModel(
                        model: _model.generalSearchFilterTextFieldsModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: GeneralSearchFilterTextFieldsWidget(),
                      ),
                      wrapWithModel(
                        model: _model.generalSearchFilterTextFieldsModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: GeneralSearchFilterTextFieldsWidget(),
                      ),
                      wrapWithModel(
                        model: _model.generalSearchFilterTextFieldsModel5,
                        updateCallback: () => safeSetState(() {}),
                        child: GeneralSearchFilterTextFieldsWidget(),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          multiSelectController:
                              _model.currencyValueController ??=
                                  FormListFieldController<String>(null),
                          options: ['INR', 'USD', 'CAD', 'GBP'],
                          width: 225.0,
                          height: 35.0,
                          searchHintTextStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'Mulish',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                              ),
                          searchTextStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Mulish',
                                    letterSpacing: 0.0,
                                  ),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Mulish',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                              ),
                          hintText: 'Currency',
                          searchHintText: 'Search...',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 12.0,
                          ),
                          fillColor: FlutterFlowTheme.of(context).tertiaryBG,
                          elevation: 2.0,
                          borderColor: Colors.white,
                          borderWidth: 0.0,
                          borderRadius: 5.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: true,
                          isMultiSelect: true,
                          onMultiSelectChanged: (val) async {
                            safeSetState(() => _model.currencyValue = val);
                            _model.currency =
                                _model.currencyValue!.toList().cast<String>();
                            safeSetState(() {});
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          multiSelectController:
                              _model.dropDownValueController ??=
                                  FormListFieldController<String>(null),
                          options: widget!.typesList!
                              .map((e) => e.toString())
                              .toList(),
                          width: 225.0,
                          height: 35.0,
                          searchHintTextStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'Mulish',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                              ),
                          searchTextStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Mulish',
                                    letterSpacing: 0.0,
                                  ),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Mulish',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                              ),
                          hintText: 'Msg Type',
                          searchHintText: 'Search...',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 12.0,
                          ),
                          fillColor: FlutterFlowTheme.of(context).tertiaryBG,
                          elevation: 2.0,
                          borderColor: Colors.white,
                          borderWidth: 0.0,
                          borderRadius: 5.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: true,
                          isMultiSelect: true,
                          onMultiSelectChanged: (val) async {
                            safeSetState(() => _model.dropDownValue = val);
                            _model.mtTypess =
                                _model.dropDownValue!.toList().cast<String>();
                            safeSetState(() {});
                          },
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select Amount Range',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Mulish',
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 45.0,
                            child: custom_widgets.RangeAmountSliderWidget(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 45.0,
                              onRangeChanged: (start, end) async {
                                _model.fromAmount = start;
                                _model.toAmount = end;
                                safeSetState(() {});
                              },
                              onResetPressed: () async {},
                            ),
                          ),
                        ].divide(SizedBox(height: 5.0)),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Select from/to time',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Mulish',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                'From time: ${_model.fromTime} To time: ${_model.toTime}',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Mulish',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(SizedBox(height: 5.0)),
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Time',
                            options: FFButtonOptions(
                              height: 30.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Mulish',
                                    color: Colors.white,
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                    ].divide(SizedBox(height: 5.0)),
                  ),
                ),
              ),
            ),
          ].addToEnd(SizedBox(height: 15.0)),
        ),
      ),
    );
  }
}
