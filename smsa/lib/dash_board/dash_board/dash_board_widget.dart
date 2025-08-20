import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/background_i_mage_widget.dart';
import '/components/drawer_widget.dart';
import '/components/header_widget.dart';
import '/dash_board/b_i_c_received_counts/b_i_c_received_counts_widget.dart';
import '/dash_board/b_i_c_sent_counts/b_i_c_sent_counts_widget.dart';
import '/dash_board/payment_analysis/payment_analysis_widget.dart';
import '/dash_board/recent_transactions/recent_transactions_widget.dart';
import '/dash_board/top_swift_messages_tyoes/top_swift_messages_tyoes_widget.dart';
import '/dash_board/year_wise_volumen_trends/year_wise_volumen_trends_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'dash_board_model.dart';
export 'dash_board_model.dart';

class DashBoardWidget extends StatefulWidget {
  const DashBoardWidget({super.key});

  static String routeName = 'DashBoard';
  static String routePath = '/dashBoard';

  @override
  State<DashBoardWidget> createState() => _DashBoardWidgetState();
}

class _DashBoardWidgetState extends State<DashBoardWidget> {
  late DashBoardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashBoardModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().dBApis == false) {
        await Future.wait([
          Future(() async {
            _model.ismsgCount = true;
            safeSetState(() {});
            _model.msgCounts =
                await DashBoardandSearchGroup.messageCountsCall.call(
              token: FFAppState().AccessToken,
              deviceHash: FFAppState().DeviceHash,
            );

            if ((_model.msgCounts?.succeeded ?? true)) {
              FFAppState().AccessToken = getJsonField(
                (_model.msgCounts?.jsonBody ?? ''),
                r'''$.data.token''',
              ).toString();
              FFAppState().dbCounts =
                  DbMsgCountsStruct.maybeFromMap(getJsonField(
                (_model.msgCounts?.jsonBody ?? ''),
                r'''$.data.data''',
              ))!;
              safeSetState(() {});
              _model.ismsgCount = false;
              safeSetState(() {});
            }
          }),
          Future(() async {
            _model.globeLoad = true;
            safeSetState(() {});
            _model.globeResult =
                await DashBoardandSearchGroup.globeDataCall.call(
              token: FFAppState().AccessToken,
              deviceHash: FFAppState().DeviceHash,
            );

            if ((_model.globeResult?.succeeded ?? true)) {
              FFAppState().AccessToken = getJsonField(
                (_model.globeResult?.jsonBody ?? ''),
                r'''$.accessToken''',
              ).toString();
              FFAppState().dbGlobeData = getJsonField(
                (_model.globeResult?.jsonBody ?? ''),
                r'''$.globeResponseDto''',
              );
              safeSetState(() {});
              _model.globeLoad = false;
              safeSetState(() {});
            }
          }),
          Future(() async {
            _model.bicCodesSent =
                await DashBoardandSearchGroup.bicCodeSentCall.call();

            if ((_model.bicCodesSent?.succeeded ?? true)) {
              FFAppState().dbSentCounts = (getJsonField(
                (_model.bicCodesSent?.jsonBody ?? ''),
                r'''$''',
                true,
              )!
                      .toList()
                      .map<BicCodesStruct?>(BicCodesStruct.maybeFromMap)
                      .toList() as Iterable<BicCodesStruct?>)
                  .withoutNulls
                  .toList()
                  .cast<BicCodesStruct>();
              safeSetState(() {});
            }
          }),
          Future(() async {
            _model.bicRecCounts =
                await DashBoardandSearchGroup.bicCodeReceivedCall.call();

            if ((_model.bicRecCounts?.succeeded ?? true)) {
              FFAppState().dbRecvCounts = (getJsonField(
                (_model.bicRecCounts?.jsonBody ?? ''),
                r'''$''',
                true,
              )!
                      .toList()
                      .map<BicCodesStruct?>(BicCodesStruct.maybeFromMap)
                      .toList() as Iterable<BicCodesStruct?>)
                  .withoutNulls
                  .toList()
                  .cast<BicCodesStruct>();
              safeSetState(() {});
            }
          }),
          Future(() async {
            _model.countriesTop5 = true;
            safeSetState(() {});
            _model.msgTypeCountss =
                await DashBoardandSearchGroup.messageTypeCountsCall.call(
              token: FFAppState().AccessToken,
              deviceHash: FFAppState().DeviceHash,
            );

            if ((_model.msgTypeCountss?.succeeded ?? true)) {
              FFAppState().AccessToken = getJsonField(
                (_model.msgTypeCountss?.jsonBody ?? ''),
                r'''$.data.token''',
              ).toString();
              FFAppState().dbMsgsTypes = getJsonField(
                (_model.msgTypeCountss?.jsonBody ?? ''),
                r'''$''',
              );
              safeSetState(() {});
              _model.countriesTop5 = false;
              safeSetState(() {});
            }
          }),
        ]);
        FFAppState().dBApis = true;
        safeSetState(() {});
        return;
      } else {
        return;
      }
    });
  }

  @override
  void dispose() {
    // On page dispose action.
    () async {
      FFAppState().dBApis = true;
      safeSetState(() {});
    }();

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
          child: Stack(
            children: [
              wrapWithModel(
                model: _model.backgroundIMageModel,
                updateCallback: () => safeSetState(() {}),
                child: BackgroundIMageWidget(),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25.0, 20.0, 25.0, 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    wrapWithModel(
                      model: _model.headerModel,
                      updateCallback: () => safeSetState(() {}),
                      child: HeaderWidget(
                        reload: true,
                        openDrawer: () async {
                          scaffoldKey.currentState!.openDrawer();
                        },
                        hitApiS: () async {
                          await Future.wait([
                            Future(() async {
                              _model.ismsgCount = true;
                              safeSetState(() {});
                              _model.msgCounts1 = await DashBoardandSearchGroup
                                  .messageCountsCall
                                  .call(
                                token: FFAppState().AccessToken,
                                deviceHash: FFAppState().DeviceHash,
                              );

                              if ((_model.msgCounts1?.succeeded ?? true)) {
                                FFAppState().AccessToken = getJsonField(
                                  (_model.msgCounts1?.jsonBody ?? ''),
                                  r'''$.data.token''',
                                ).toString();
                                FFAppState().dbCounts =
                                    DbMsgCountsStruct.maybeFromMap(getJsonField(
                                  (_model.msgCounts1?.jsonBody ?? ''),
                                  r'''$.data.data''',
                                ))!;
                                safeSetState(() {});
                                _model.ismsgCount = false;
                                safeSetState(() {});
                              }
                            }),
                            Future(() async {
                              _model.globeLoad = true;
                              safeSetState(() {});
                              _model.globeResult1 =
                                  await DashBoardandSearchGroup.globeDataCall
                                      .call(
                                token: FFAppState().AccessToken,
                                deviceHash: FFAppState().DeviceHash,
                              );

                              if ((_model.globeResult1?.succeeded ?? true)) {
                                FFAppState().AccessToken = getJsonField(
                                  (_model.globeResult1?.jsonBody ?? ''),
                                  r'''$.accessToken''',
                                ).toString();
                                FFAppState().dbGlobeData = getJsonField(
                                  (_model.globeResult1?.jsonBody ?? ''),
                                  r'''$.globeResponseDto''',
                                );
                                safeSetState(() {});
                                _model.globeLoad = false;
                                safeSetState(() {});
                              }
                            }),
                            Future(() async {
                              _model.bicCodesSent1 =
                                  await DashBoardandSearchGroup.bicCodeSentCall
                                      .call();

                              if ((_model.bicCodesSent?.succeeded ?? true)) {
                                FFAppState().dbSentCounts = (getJsonField(
                                  (_model.bicCodesSent1?.jsonBody ?? ''),
                                  r'''$''',
                                  true,
                                )!
                                        .toList()
                                        .map<BicCodesStruct?>(
                                            BicCodesStruct.maybeFromMap)
                                        .toList() as Iterable<BicCodesStruct?>)
                                    .withoutNulls
                                    .toList()
                                    .cast<BicCodesStruct>();
                                safeSetState(() {});
                              }
                            }),
                            Future(() async {
                              _model.bicRecCounts1 =
                                  await DashBoardandSearchGroup
                                      .bicCodeReceivedCall
                                      .call();

                              if ((_model.bicRecCounts?.succeeded ?? true)) {
                                FFAppState().dbRecvCounts = (getJsonField(
                                  (_model.bicRecCounts1?.jsonBody ?? ''),
                                  r'''$''',
                                  true,
                                )!
                                        .toList()
                                        .map<BicCodesStruct?>(
                                            BicCodesStruct.maybeFromMap)
                                        .toList() as Iterable<BicCodesStruct?>)
                                    .withoutNulls
                                    .toList()
                                    .cast<BicCodesStruct>();
                                safeSetState(() {});
                              }
                            }),
                            Future(() async {
                              _model.countriesTop5 = true;
                              safeSetState(() {});
                              _model.msgTypeCountss1 =
                                  await DashBoardandSearchGroup
                                      .messageTypeCountsCall
                                      .call(
                                token: FFAppState().AccessToken,
                                deviceHash: FFAppState().DeviceHash,
                              );

                              if ((_model.msgTypeCountss1?.succeeded ?? true)) {
                                FFAppState().AccessToken = getJsonField(
                                  (_model.msgTypeCountss1?.jsonBody ?? ''),
                                  r'''$.data.token''',
                                ).toString();
                                FFAppState().dbMsgsTypes = getJsonField(
                                  (_model.msgTypeCountss1?.jsonBody ?? ''),
                                  r'''$''',
                                );
                                safeSetState(() {});
                                _model.countriesTop5 = false;
                                safeSetState(() {});
                              }
                            }),
                          ]);

                          safeSetState(() {});
                        },
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 1.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 100.0,
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  height: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Builder(
                                        builder: (context) {
                                          if (!_model.ismsgCount) {
                                            return wrapWithModel(
                                              model:
                                                  _model.paymentAnalysisModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: PaymentAnalysisWidget(
                                                heading:
                                                    'SWIFT Messages Counts\n(Volume)',
                                                total: FFAppState()
                                                    .dbCounts
                                                    .totalSwiftPaymentsCount
                                                    .toString(),
                                                sent: FFAppState()
                                                    .dbCounts
                                                    .sentPayments
                                                    .toString(),
                                                received: FFAppState()
                                                    .dbCounts
                                                    .recivedPayments
                                                    .toString(),
                                              ),
                                            );
                                          } else {
                                            return Container(
                                              width: 25.0,
                                              height: 25.0,
                                              child: custom_widgets
                                                  .CircularProgress(
                                                width: 25.0,
                                                height: 25.0,
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                      Expanded(
                                        child: wrapWithModel(
                                          model: _model.bICSentCountsModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: BICSentCountsWidget(
                                            countSent:
                                                FFAppState().dbSentCounts,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: wrapWithModel(
                                          model: _model.bICReceivedCountsModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: BICReceivedCountsWidget(
                                            counts: FFAppState().dbRecvCounts,
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 15.0)),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: wrapWithModel(
                                          model:
                                              _model.yearWiseVolumenTrendsModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: YearWiseVolumenTrendsWidget(),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            if (!_model.countriesTop5) {
                                              return wrapWithModel(
                                                model: _model
                                                    .topSwiftMessagesTyoesModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    TopSwiftMessagesTyoesWidget(
                                                  typesList:
                                                      FFAppState().dbMsgsTypes,
                                                ),
                                              );
                                            } else {
                                              return Container(
                                                width: 25.0,
                                                height: 25.0,
                                                child: custom_widgets
                                                    .CircularProgress(
                                                  width: 25.0,
                                                  height: 25.0,
                                                ),
                                              );
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 15.0, 0.0),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.45,
                                  height: double.infinity,
                                  decoration: BoxDecoration(),
                                ),
                              ),
                            ].divide(SizedBox(width: 15.0)),
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 20.0)),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Builder(
                  builder: (context) {
                    if (_model.globeLoad == false) {
                      return Visibility(
                        visible: responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              350.0, 30.0, 0.0, 5.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 600.0,
                            child: custom_widgets.EarthGlobe(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 600.0,
                              globeData: FFAppState().dbGlobeData,
                            ),
                          ),
                        ),
                      );
                    } else {
                      return Align(
                        alignment: AlignmentDirectional(1.0, 0.0),
                        child: Lottie.asset(
                          'assets/jsons/Spinning_Globe_Orange.json',
                          width: MediaQuery.sizeOf(context).width * 0.5,
                          height: 500.0,
                          fit: BoxFit.contain,
                          animate: true,
                        ),
                      );
                    }
                  },
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Align(
                  alignment: AlignmentDirectional(1.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 19.0, 15.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.47,
                      height: 180.0,
                      decoration: BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.recentTransactionsModel,
                        updateCallback: () => safeSetState(() {}),
                        child: RecentTransactionsWidget(),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
