import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loading_widget_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  static String routeName = 'LoginPage';
  static String routePath = '/loginPage';

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          _model.moduleTab = await AuthenticationGroup.getModulesCall.call(
            apiBaseURL: FFDevEnvironmentValues().apiBaseURL,
          );

          if ((_model.moduleTab?.succeeded ?? true)) {
            _model.modulesList = (getJsonField(
              (_model.moduleTab?.jsonBody ?? ''),
              r'''$''',
              true,
            )!
                    .toList()
                    .map<ModulesStruct?>(ModulesStruct.maybeFromMap)
                    .toList() as Iterable<ModulesStruct?>)
                .withoutNulls
                .toList()
                .cast<ModulesStruct>();
            safeSetState(() {});
          } else {
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: Text('Error'),
                  content: Text('Api failed.'),
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
          _model.geosTab = await AuthenticationGroup.geographyListCall.call(
            apiBaseURL: FFDevEnvironmentValues().apiBaseURL,
          );

          if ((_model.geosTab?.succeeded ?? true)) {
            _model.geoList = (getJsonField(
              (_model.geosTab?.jsonBody ?? ''),
              r'''$''',
              true,
            )!
                    .toList()
                    .map<GeographyStruct?>(GeographyStruct.maybeFromMap)
                    .toList() as Iterable<GeographyStruct?>)
                .withoutNulls
                .toList()
                .cast<GeographyStruct>();
            safeSetState(() {});
          } else {
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: Text('Error'),
                  content: Text('Api failed.'),
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
          _model.faceCheckResponseTab = await actions.faceUserCheck();
          if (_model.faceCheckResponseTab!.isLoggedIn) {
            FFAppState().userID = _model.faceCheckResponseTab!.userId;
            FFAppState().update(() {});
          }
        }),
      ]);
    });

    _model.userNameTextController ??= TextEditingController();
    _model.userNameFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    animationsMap.addAll({
      'columnOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(0.0, 140.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(0.9, 1.0),
            end: Offset(1.0, 1.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(-0.349, 0),
            end: Offset(0, 0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/ICICI_Wallpaper1.png',
                  ).image,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 0.0, 0.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 9.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.37,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 30.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Visibility(
                                    visible: responsiveVisibility(
                                      context: context,
                                      desktop: false,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          30.0, 20.0, 30.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: SvgPicture.network(
                                          'https://storage.googleapis.com/flutterflow-enterprise-india.appspot.com/teams/iB7HUxUy5HzlG1AwjKQM/assets/ezxuh9f6lhro/ICICI_Bank_Logo_Digital_1.svg',
                                          width: 300.0,
                                          height: 60.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation']!),
                                Form(
                                  key: _model.formKey,
                                  autovalidateMode: AutovalidateMode.disabled,
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        36.0, 10.0, 36.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.geo = _model.geoId == null;
                                            _model.module =
                                                _model.moduleId == null;
                                            safeSetState(() {});
                                            _model.isValidatedTab = true;
                                            if (_model.formKey.currentState ==
                                                    null ||
                                                !_model.formKey.currentState!
                                                    .validate()) {
                                              safeSetState(() => _model
                                                  .isValidatedTab = false);
                                              return;
                                            }
                                            if ((_model.isValidatedTab ==
                                                    true) &&
                                                (_model.module == false) &&
                                                (_model.geo == false)) {
                                              _model.isLoading = true;
                                              safeSetState(() {});
                                              _model.hashCodeeTabbb = await actions
                                                  .generateWebDeviceHashWithTime();
                                              await Future.wait([
                                                Future(() async {
                                                  _model.encryptedUsernameTabbb =
                                                      await actions.encrptText(
                                                    _model
                                                        .userNameTextController
                                                        .text,
                                                  );
                                                }),
                                                Future(() async {
                                                  _model.encryptedPasswordTabbb =
                                                      await actions.encrptText(
                                                    _model
                                                        .passwordTextController
                                                        .text,
                                                  );
                                                }),
                                                Future(() async {
                                                  _model.encryptedHashCodeTabbb =
                                                      await actions.encrptText(
                                                    _model.hashCodeeTabbb!,
                                                  );
                                                }),
                                                Future(() async {
                                                  _model.moduleEncryptTabbb =
                                                      await actions.encrptText(
                                                    functions
                                                        .getModuleIdFromName(
                                                            _model.moduleId!,
                                                            getJsonField(
                                                              (_model.moduleTab
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$''',
                                                              true,
                                                            )!)!,
                                                  );
                                                }),
                                                Future(() async {
                                                  _model.geoEncryptTabbb =
                                                      await actions.encrptText(
                                                    functions
                                                        .newCustomFunction2(
                                                            _model.geoId!,
                                                            getJsonField(
                                                              (_model.geosTab
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$''',
                                                              true,
                                                            )!)!,
                                                  );
                                                }),
                                              ]);
                                              _model.loginApiTabbb =
                                                  await AuthenticationGroup
                                                      .loginApiCall
                                                      .call(
                                                username: _model
                                                    .encryptedUsernameTabbb,
                                                password: _model
                                                    .encryptedPasswordTabbb,
                                                deviceHash: _model
                                                    .encryptedHashCodeTabbb,
                                                geogId: _model.geoEncryptTabbb,
                                                moduleId:
                                                    _model.moduleEncryptTabbb,
                                              );

                                              if ((_model.loginApiTabbb
                                                      ?.succeeded ??
                                                  true)) {
                                                FFAppState().AccessToken =
                                                    getJsonField(
                                                  (_model.loginApiTabbb
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.accessToken''',
                                                ).toString();
                                                FFAppState().DeviceHash = _model
                                                    .encryptedHashCodeTabbb!;
                                                FFAppState().userID = _model
                                                    .userNameTextController
                                                    .text;
                                                safeSetState(() {});

                                                context.pushNamed(
                                                    DashBoardWidget.routeName);
                                              } else {
                                                _model.isLoading = false;
                                                safeSetState(() {});
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('Alert'),
                                                      content:
                                                          Text(getJsonField(
                                                        (_model.loginApiTabbb
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.outputMessage''',
                                                      ).toString()),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              }
                                            }

                                            safeSetState(() {});
                                          },
                                          child: Text(
                                            'Welcome to SMSA ',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Mulish',
                                                  color: Color(0xEB041629),
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w800,
                                                ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation']!),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .userNameTextController,
                                                  focusNode:
                                                      _model.userNameFocusNode,
                                                  autofocus: false,
                                                  textCapitalization:
                                                      TextCapitalization
                                                          .characters,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color:
                                                              Color(0xEB041629),
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: 'User ID',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color:
                                                              Color(0xEB041629),
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.2,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFFCBD5E0),
                                                        width: 1.2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        Color(0xFFF7FAFC),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            Color(0xEB041629),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        lineHeight: 1.2,
                                                      ),
                                                  maxLength: 9,
                                                  buildCounter: (context,
                                                          {required currentLength,
                                                          required isFocused,
                                                          maxLength}) =>
                                                      null,
                                                  cursorColor:
                                                      Color(0xEB041629),
                                                  validator: _model
                                                      .userNameTextControllerValidator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    if (!isAndroid && !isiOS)
                                                      TextInputFormatter
                                                          .withFunction(
                                                              (oldValue,
                                                                  newValue) {
                                                        return TextEditingValue(
                                                          selection: newValue
                                                              .selection,
                                                          text: newValue.text
                                                              .toCapitalization(
                                                                  TextCapitalization
                                                                      .characters),
                                                        );
                                                      }),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .passwordTextController,
                                                  focusNode:
                                                      _model.passwordFocusNode,
                                                  autofocus: false,
                                                  obscureText: !_model
                                                      .passwordVisibility,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color:
                                                              Color(0xEB041629),
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText: 'Password',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color:
                                                              Color(0xEB041629),
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFFCBD5E0),
                                                        width: 1.2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        Color(0xFFF7FAFC),
                                                    suffixIcon: InkWell(
                                                      onTap: () => safeSetState(
                                                        () => _model
                                                                .passwordVisibility =
                                                            !_model
                                                                .passwordVisibility,
                                                      ),
                                                      focusNode: FocusNode(
                                                          skipTraversal: true),
                                                      child: Icon(
                                                        _model.passwordVisibility
                                                            ? Icons
                                                                .visibility_outlined
                                                            : Icons
                                                                .visibility_off_outlined,
                                                        color:
                                                            Color(0xEB041629),
                                                        size: 22,
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            Color(0xEB041629),
                                                        letterSpacing: 0.0,
                                                        lineHeight: 1.2,
                                                      ),
                                                  cursorColor:
                                                      Color(0xEB041629),
                                                  validator: _model
                                                      .passwordTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    height: 40.0,
                                                    child: custom_widgets
                                                        .AutocompleteModuleWidget(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: 40.0,
                                                      listOfStrings: _model
                                                          .modulesList
                                                          .map((e) =>
                                                              e.moduleName)
                                                          .toList(),
                                                      hintText: 'Module',
                                                      clearTrigger: _model
                                                          .clearCustomFields!,
                                                      onchanged:
                                                          (text, index) async {
                                                        FFAppState().module =
                                                            text!;
                                                        safeSetState(() {});
                                                        _model.moduleId = text;
                                                        safeSetState(() {});
                                                      },
                                                    ),
                                                  ),
                                                  if (_model.module)
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  6.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Please Select Module',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Mulish',
                                                                  color: Color(
                                                                      0xFFF22B37),
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    height: 40.0,
                                                    child: custom_widgets
                                                        .AutocompleteModuleWidget(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: 40.0,
                                                      listOfStrings: _model
                                                          .geoList
                                                          .map(
                                                              (e) => e.geogName)
                                                          .toList(),
                                                      hintText:
                                                          'Select Geography',
                                                      clearTrigger: _model
                                                          .clearCustomFields!,
                                                      onchanged:
                                                          (text, index) async {
                                                        FFAppState()
                                                                .geoSelected =
                                                            text!;
                                                        safeSetState(() {});
                                                        _model.geoId = text;
                                                        safeSetState(() {});
                                                      },
                                                    ),
                                                  ),
                                                  if (_model.geo)
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  6.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Please Select Geography',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Mulish',
                                                                  color: Color(
                                                                      0xFFF22B37),
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ].divide(SizedBox(height: 15.0)),
                                          ).animateOnPageLoad(animationsMap[
                                              'columnOnPageLoadAnimation2']!),
                                        ),
                                        Builder(
                                          builder: (context) {
                                            if (!_model.isLoading) {
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 10.0, 20.0, 10.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    _model.geo =
                                                        _model.geoId == null;
                                                    _model.module =
                                                        _model.moduleId == null;
                                                    safeSetState(() {});
                                                    _model.isValidatedDirectTab =
                                                        true;
                                                    if (_model.formKey
                                                                .currentState ==
                                                            null ||
                                                        !_model.formKey
                                                            .currentState!
                                                            .validate()) {
                                                      safeSetState(() => _model
                                                              .isValidatedDirectTab =
                                                          false);
                                                      return;
                                                    }
                                                    if ((_model.isValidatedDirectTab ==
                                                            true) &&
                                                        (_model.module ==
                                                            false) &&
                                                        (_model.geo == false)) {
                                                      _model.isLoading = true;
                                                      safeSetState(() {});
                                                      _model.hashCodeeTab =
                                                          await actions
                                                              .generateWebDeviceHashWithTime();
                                                      await Future.wait([
                                                        Future(() async {
                                                          _model.encryptedUsernameTab =
                                                              await actions
                                                                  .encrptText(
                                                            _model
                                                                .userNameTextController
                                                                .text,
                                                          );
                                                        }),
                                                        Future(() async {
                                                          _model.encryptedPasswordTab =
                                                              await actions
                                                                  .encrptText(
                                                            _model
                                                                .passwordTextController
                                                                .text,
                                                          );
                                                        }),
                                                        Future(() async {
                                                          _model.encryptedHashCodeTab =
                                                              await actions
                                                                  .encrptText(
                                                            _model
                                                                .hashCodeeTab!,
                                                          );
                                                        }),
                                                        Future(() async {
                                                          _model.moduleEncryptTab =
                                                              await actions
                                                                  .encrptText(
                                                            functions
                                                                .getModuleIdFromName(
                                                                    _model
                                                                        .moduleId!,
                                                                    getJsonField(
                                                                      (_model.moduleTab
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                      r'''$''',
                                                                      true,
                                                                    )!)!,
                                                          );
                                                        }),
                                                        Future(() async {
                                                          _model.geoEncryptTab =
                                                              await actions
                                                                  .encrptText(
                                                            functions
                                                                .newCustomFunction2(
                                                                    _model
                                                                        .geoId!,
                                                                    getJsonField(
                                                                      (_model.geosTab
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                      r'''$''',
                                                                      true,
                                                                    )!)!,
                                                          );
                                                        }),
                                                      ]);
                                                      _model.loginApiTab =
                                                          await AuthenticationGroup
                                                              .loginApiCall
                                                              .call(
                                                        username: _model
                                                            .encryptedUsernameTab,
                                                        password: _model
                                                            .encryptedPasswordTab,
                                                        deviceHash: _model
                                                            .encryptedHashCodeTab,
                                                        geogId: _model
                                                            .geoEncryptTab,
                                                        moduleId: _model
                                                            .moduleEncryptTab,
                                                      );

                                                      if ((_model.loginApiTab
                                                              ?.succeeded ??
                                                          true)) {
                                                        FFAppState()
                                                                .AccessToken =
                                                            getJsonField(
                                                          (_model.loginApiTab
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.accessToken''',
                                                        ).toString();
                                                        FFAppState()
                                                                .DeviceHash =
                                                            _model
                                                                .encryptedHashCodeTab!;
                                                        FFAppState().userID = _model
                                                            .userNameTextController
                                                            .text;
                                                        FFAppState()
                                                                .loginPassword =
                                                            _model
                                                                .passwordTextController
                                                                .text;
                                                        safeSetState(() {});
                                                        await actions
                                                            .loadAndStartFaceID(
                                                          context,
                                                          functions.addEmail(_model
                                                              .userNameTextController
                                                              .text),
                                                          FFDevEnvironmentValues()
                                                              .applicationId,
                                                          valueOrDefault<
                                                              String>(
                                                            FFDevEnvironmentValues()
                                                                .applicationSecret,
                                                            'icms@123\$',
                                                          ),
                                                          FFDevEnvironmentValues()
                                                              .initializeFaceIDURL,
                                                          FFDevEnvironmentValues()
                                                              .validateFaceIDURL,
                                                          FFDevEnvironmentValues()
                                                              .srURL,
                                                          FFDevEnvironmentValues()
                                                              .erURL,
                                                          FFDevEnvironmentValues()
                                                              .apiKey,
                                                        );
                                                      } else {
                                                        _model.isLoading =
                                                            false;
                                                        safeSetState(() {});
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title:
                                                                  Text('Alert'),
                                                              content: Text(
                                                                  'Something went wrong ! Please try again Later.'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: Text(
                                                                      'Ok'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                      }
                                                    }

                                                    safeSetState(() {});
                                                  },
                                                  text: 'Log in',
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 50.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: Color(0xFFFF6600),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: Colors.white,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 2.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'buttonOnPageLoadAnimation1']!),
                                              );
                                            } else {
                                              return Container(
                                                height: 85.0,
                                                decoration: BoxDecoration(),
                                                child: wrapWithModel(
                                                  model:
                                                      _model.loadingWidgetModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: LoadingWidgetWidget(),
                                                ),
                                              );
                                            }
                                          },
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              await Future.wait([
                                                Future(() async {
                                                  safeSetState(() {
                                                    _model
                                                        .userNameTextController
                                                        ?.clear();
                                                    _model
                                                        .passwordTextController
                                                        ?.clear();
                                                  });
                                                }),
                                                Future(() async {
                                                  _model.clearCustomFields =
                                                      true;
                                                  safeSetState(() {});
                                                  await Future.delayed(
                                                    Duration(
                                                      milliseconds: 100,
                                                    ),
                                                  );
                                                  _model.clearCustomFields =
                                                      false;
                                                  safeSetState(() {});
                                                }),
                                              ]);
                                            },
                                            text: 'Reset',
                                            options: FFButtonOptions(
                                              width: 200.0,
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.white,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            Color(0xEB041629),
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'buttonOnPageLoadAnimation2']!),
                                        ),
                                      ].divide(SizedBox(height: 15.0)),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 10.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ).animateOnPageLoad(
                    animationsMap['columnOnPageLoadAnimation1']!),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
