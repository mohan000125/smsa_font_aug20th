import '/components/drawer_buttons_widget.dart';
import '/components/sidebar_texts_click_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'drawer_model.dart';
export 'drawer_model.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget>
    with TickerProviderStateMixin {
  late DrawerModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DrawerModel());

    animationsMap.addAll({
      'stackOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'stackOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 0.22,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
              child: Material(
                color: Colors.transparent,
                elevation: 0.0,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).headerColor,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x4D9489F5),
                        offset: Offset(
                          0.0,
                          1.0,
                        ),
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 20.0, 16.0, 16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).headerColor,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 0.7,
                                ),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: FaIcon(
                                FontAwesomeIcons.user,
                                color: Colors.white,
                                size: 16.0,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFAppState().userID,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Mulish',
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      FFAppState().geoSelected,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Mulish',
                                            color: Colors.white,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 5.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(DashBoardWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.dasboardModel,
                      updateCallback: () => safeSetState(() {}),
                      child: DrawerButtonsWidget(
                        title: 'Dashboard',
                        iconIndex: 1,
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(GeneralSearchWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.searchModel,
                      updateCallback: () => safeSetState(() {}),
                      child: DrawerButtonsWidget(
                        title: 'Search',
                        iconIndex: 2,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.highValues = !_model.highValues;
                          _model.clients = false;
                          safeSetState(() {});
                        },
                        child: wrapWithModel(
                          model: _model.hVAlertsModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: DrawerButtonsWidget(
                            title: 'High Value Alerts',
                            iconIndex: 3,
                            showDropdownArrow: true,
                          ),
                        ),
                      ),
                      if (_model.highValues == true)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: ClipRRect(
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        1.5, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 0.7,
                                      height: 178.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .borderColorFaider,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              AddEditRecipientWidget.routeName);
                                        },
                                        child: wrapWithModel(
                                          model: _model.sidebarTextsClickModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SidebarTextsClickWidget(
                                            text: 'Add / Edit Recipients',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              ApproveRejectRecipientWidget
                                                  .routeName);
                                        },
                                        child: wrapWithModel(
                                          model: _model.sidebarTextsClickModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SidebarTextsClickWidget(
                                            text: 'Verify Recipients',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              AddEditThresholdWidget.routeName);
                                        },
                                        child: wrapWithModel(
                                          model: _model.sidebarTextsClickModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SidebarTextsClickWidget(
                                            text: 'Add / Edit Threshold',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              ApproveRejectThresholdWidget
                                                  .routeName);
                                        },
                                        child: wrapWithModel(
                                          model: _model.sidebarTextsClickModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SidebarTextsClickWidget(
                                            text: 'Verify Threshold',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              ListRecipientWidget.routeName);
                                        },
                                        child: wrapWithModel(
                                          model: _model.sidebarTextsClickModel5,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SidebarTextsClickWidget(
                                            text: 'Recipient Master Data',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              ListThresholdWidget.routeName);
                                        },
                                        child: wrapWithModel(
                                          model: _model.sidebarTextsClickModel6,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SidebarTextsClickWidget(
                                            text: 'Threshold Master Data',
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 10.0)),
                                  ),
                                ],
                              ).animateOnPageLoad(
                                  animationsMap['stackOnPageLoadAnimation1']!),
                            ),
                          ),
                        ),
                    ].divide(SizedBox(height: 5.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.clients = !_model.clients;
                          _model.highValues = false;
                          safeSetState(() {});
                        },
                        child: wrapWithModel(
                          model: _model.hVAlertsModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: DrawerButtonsWidget(
                            title: 'Client Master',
                            iconIndex: 4,
                            showDropdownArrow: true,
                          ),
                        ),
                      ),
                      if (_model.clients == true)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: ClipRRect(
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        1.5, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 0.7,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .borderColorFaider,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              AddEditClientWidget.routeName);
                                        },
                                        child: wrapWithModel(
                                          model: _model.sidebarTextsClickModel7,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SidebarTextsClickWidget(
                                            text: 'Add / Edit Clients',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              ListClientWidget.routeName);
                                        },
                                        child: wrapWithModel(
                                          model: _model.sidebarTextsClickModel8,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SidebarTextsClickWidget(
                                            text: 'Master  Clients',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              ApproveRejectClientWidget
                                                  .routeName);
                                        },
                                        child: wrapWithModel(
                                          model: _model.sidebarTextsClickModel9,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SidebarTextsClickWidget(
                                            text: 'Approve / Reject',
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 10.0)),
                                  ),
                                ],
                              ).animateOnPageLoad(
                                  animationsMap['stackOnPageLoadAnimation2']!),
                            ),
                          ),
                        ),
                    ].divide(SizedBox(height: 5.0)),
                  ),
                ],
              ),
            ),
          ].addToStart(SizedBox(height: 1.0)),
        ),
      ),
    );
  }
}
