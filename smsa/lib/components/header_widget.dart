import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'header_model.dart';
export 'header_model.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({
    super.key,
    this.openDrawer,
    bool? reload,
    this.hitApiS,
  }) : this.reload = reload ?? false;

  final Future Function()? openDrawer;
  final bool reload;
  final Future Function()? hitApiS;

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late HeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.lastLogin = await AuthenticationGroup.lastLoginCall.call(
        token: FFAppState().AccessToken,
        deviceHash: FFAppState().DeviceHash,
      );

      if ((_model.lastLogin?.succeeded ?? true)) {
        _model.decrypted = await actions.decryptText(
          getJsonField(
            (_model.lastLogin?.jsonBody ?? ''),
            r'''$.data''',
          ).toString(),
        );
        _model.lastLoginText = functions.extractLastLogin(_model.decrypted!);
        safeSetState(() {});
      }
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
      width: double.infinity,
      height: 42.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).headerColor,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).borderColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await widget.openDrawer?.call();
                  },
                  child: Icon(
                    Icons.menu_rounded,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/ICICI.png',
                          height: 25.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                        child: VerticalDivider(
                          thickness: 1.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'SWIFT MESSAGING SEARCH APPLICATION',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Mulish',
                              color: Colors.white,
                              fontSize: 9.0,
                              letterSpacing: 5.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      FFAppState().userID,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Mulish',
                            color: Colors.white,
                            fontSize: 9.7,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    SizedBox(
                      height: 16.0,
                      child: VerticalDivider(
                        thickness: 1.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        FFAppState().geoSelected,
                        'India',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Mulish',
                            color: Colors.white,
                            fontSize: 9.7,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    SizedBox(
                      height: 16.0,
                      child: VerticalDivider(
                        thickness: 1.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Last Login: ${functions.formatDateTime(_model.lastLoginText)}',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Mulish',
                            color: Colors.white,
                            fontSize: 9.7,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (widget!.reload == true)
                      AlignedTooltip(
                        content: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'Reload Page',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Mulish',
                                      letterSpacing: 0.0,
                                    ),
                          ),
                        ),
                        offset: 4.0,
                        preferredDirection: AxisDirection.down,
                        borderRadius: BorderRadius.circular(8.0),
                        backgroundColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 4.0,
                        tailBaseWidth: 24.0,
                        tailLength: 12.0,
                        waitDuration: Duration(milliseconds: 100),
                        showDuration: Duration(milliseconds: 1500),
                        triggerMode: TooltipTriggerMode.tap,
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await widget.hitApiS?.call();
                          },
                          child: Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryButtonBGColor,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryButtonBorderColor,
                                width: 0.4,
                              ),
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Icon(
                              Icons.restart_alt,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryButtonTextColor,
                              size: 15.0,
                            ),
                          ),
                        ),
                      ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (Theme.of(context).brightness == Brightness.light) {
                          setDarkModeSetting(context, ThemeMode.dark);
                        } else {
                          setDarkModeSetting(context, ThemeMode.light);
                        }
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryButtonBGColor,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryButtonBorderColor,
                                width: 0.4,
                              ),
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Builder(
                                builder: (context) {
                                  if (Theme.of(context).brightness ==
                                      Brightness.dark) {
                                    return Icon(
                                      Icons.dark_mode_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 15.0,
                                    );
                                  } else {
                                    return Icon(
                                      Icons.wb_sunny_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryButtonTextColor,
                                      size: 15.0,
                                    );
                                  }
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await actions.clearSession();
                        await Future.delayed(
                          Duration(
                            milliseconds: 1500,
                          ),
                        );
                        _model.logOut =
                            await AuthenticationGroup.logoutApiCall.call(
                          token: FFAppState().AccessToken,
                          deviceHash: FFAppState().DeviceHash,
                        );

                        if ((_model.logOut?.succeeded ?? true)) {
                          context.pushNamed(LoginPageWidget.routeName);
                        } else {
                          context.pushNamed(LoginPageWidget.routeName);
                        }

                        safeSetState(() {});
                      },
                      child: Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context)
                              .secondaryButtonBGColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context)
                                .secondaryButtonBorderColor,
                            width: 0.4,
                          ),
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          Icons.logout_rounded,
                          color: FlutterFlowTheme.of(context)
                              .secondaryButtonTextColor,
                          size: 15.0,
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 7.0)),
                ),
              ].divide(SizedBox(width: 30.0)),
            ),
          ],
        ),
      ),
    );
  }
}
