import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loading_widget_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'login_page_old_model.dart';
export 'login_page_old_model.dart';

class LoginPageOldWidget extends StatefulWidget {
  const LoginPageOldWidget({super.key});

  static String routeName = 'LoginPageOld';
  static String routePath = '/loginPageOld';

  @override
  State<LoginPageOldWidget> createState() => _LoginPageOldWidgetState();
}

class _LoginPageOldWidgetState extends State<LoginPageOldWidget>
    with TickerProviderStateMixin {
  late LoginPageOldModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageOldModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          _model.moduless = await AuthenticationGroup.getModulesCall.call();

          if ((_model.moduless?.succeeded ?? true)) {
            _model.modulesList = (getJsonField(
              (_model.moduless?.jsonBody ?? ''),
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
                  content: Text((_model.moduless?.exceptionMessage ?? '')),
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
          _model.geos = await AuthenticationGroup.geographyListCall.call();

          if ((_model.geos?.succeeded ?? true)) {
            _model.geoList = (getJsonField(
              (_model.geos?.jsonBody ?? ''),
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
                  content: Text((_model.geos?.exceptionMessage ?? '')),
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
          _model.faceCheckResponse = await actions.faceUserCheck();
          if (_model.faceCheckResponse!.isLoggedIn) {
            FFAppState().userID = _model.faceCheckResponse!.userId;
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
      'buttonOnPageLoadAnimation': AnimationInfo(
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

    return Shortcuts(
      shortcuts: {},
      child: Actions(
        actions: {
          VoidCallbackIntent: CallbackAction<VoidCallbackIntent>(
            onInvoke: (intent) => intent.callback(),
          ),
        },
        child: Focus(
            autofocus: isShortcutsSupported,
            focusNode: _model.shortcutsFocusNode,
            child: GestureDetector(
              onTap: () {
                if (isShortcutsSupported &&
                    _model.shortcutsFocusNode.canRequestFocus) {
                  FocusScope.of(context)
                      .requestFocus(_model.shortcutsFocusNode);
                } else {
                  FocusScope.of(context).unfocus();
                  FocusManager.instance.primaryFocus?.unfocus();
                }
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  70.0, 0.0, 0.0, 0.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 9.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.37,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(),
                                          child: Visibility(
                                            visible: responsiveVisibility(
                                              context: context,
                                              desktop: false,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
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
                                          autovalidateMode:
                                              AutovalidateMode.disabled,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    36.0, 10.0, 36.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    _model.module = _model
                                                            .dropDownmoduleValue ==
                                                        null;
                                                    safeSetState(() {});
                                                    _model.geo = _model
                                                            .dropDownGeoValue ==
                                                        null;
                                                    safeSetState(() {});
                                                    _model.isValidateddirect =
                                                        true;
                                                    if (_model.formKey
                                                                .currentState ==
                                                            null ||
                                                        !_model.formKey
                                                            .currentState!
                                                            .validate()) {
                                                      safeSetState(() => _model
                                                              .isValidateddirect =
                                                          false);
                                                      return;
                                                    }
                                                    if ((_model.isValidateddirect ==
                                                            true) &&
                                                        (_model.module ==
                                                            false) &&
                                                        (_model.geo == false)) {
                                                      _model.isLoading = true;
                                                      safeSetState(() {});
                                                      _model.hashCodeeDirect =
                                                          await actions
                                                              .generateWebDeviceHashWithTime();
                                                      await Future.wait([
                                                        Future(() async {
                                                          _model.encryptedUsernameDirect =
                                                              await actions
                                                                  .encrptText(
                                                            _model
                                                                .userNameTextController
                                                                .text,
                                                          );
                                                        }),
                                                        Future(() async {
                                                          _model.encryptedPasswordDirect =
                                                              await actions
                                                                  .encrptText(
                                                            _model
                                                                .passwordTextController
                                                                .text,
                                                          );
                                                        }),
                                                        Future(() async {
                                                          _model.encryptedHashCodeDirect =
                                                              await actions
                                                                  .encrptText(
                                                            _model
                                                                .hashCodeeDirect!,
                                                          );
                                                        }),
                                                        Future(() async {
                                                          _model.moduleEncryptDirect =
                                                              await actions
                                                                  .encrptText(
                                                            functions
                                                                .getModuleIdFromName(
                                                                    _model
                                                                        .moduleId!,
                                                                    getJsonField(
                                                                      (_model.moduless
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                      r'''$''',
                                                                      true,
                                                                    )!)!,
                                                          );
                                                        }),
                                                        Future(() async {
                                                          _model.geoEncryptDirect =
                                                              await actions
                                                                  .encrptText(
                                                            functions
                                                                .newCustomFunction2(
                                                                    _model
                                                                        .geoId!,
                                                                    getJsonField(
                                                                      (_model.geos
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                      r'''$''',
                                                                      true,
                                                                    )!)!,
                                                          );
                                                        }),
                                                      ]);
                                                      _model.loginApiDirect =
                                                          await AuthenticationGroup
                                                              .loginApiCall
                                                              .call(
                                                        username: _model
                                                            .encryptedUsernameDirect,
                                                        password: _model
                                                            .encryptedPasswordDirect,
                                                        deviceHash: _model
                                                            .encryptedHashCodeDirect,
                                                        geogId: _model
                                                            .geoEncryptDirect,
                                                        moduleId: _model
                                                            .moduleEncryptDirect,
                                                      );

                                                      if ((_model.loginApiDirect
                                                              ?.succeeded ??
                                                          true)) {
                                                        FFAppState()
                                                                .AccessToken =
                                                            getJsonField(
                                                          (_model.loginApiDirect
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.accessToken''',
                                                        ).toString();
                                                        FFAppState()
                                                                .DeviceHash =
                                                            _model
                                                                .encryptedHashCodeDirect!;
                                                        FFAppState().userID = _model
                                                            .userNameTextController
                                                            .text;
                                                        safeSetState(() {});

                                                        context.pushNamed(
                                                            DashBoardWidget
                                                                .routeName);
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
                                                  child: Text(
                                                    'Welcome to SMSA ',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color:
                                                              Color(0xEB041629),
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textOnPageLoadAnimation']!),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20.0, 10.0,
                                                          20.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .userNameTextController,
                                                          focusNode: _model
                                                              .userNameFocusNode,
                                                          autofocus: false,
                                                          textCapitalization:
                                                              TextCapitalization
                                                                  .characters,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            isDense: true,
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Mulish',
                                                                      color: Color(
                                                                          0xEB041629),
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            hintText: 'User ID',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Mulish',
                                                                      color: Color(
                                                                          0xEB041629),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      lineHeight:
                                                                          1.2,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFCBD5E0),
                                                                width: 1.2,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.2,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.2,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.2,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            filled: true,
                                                            fillColor: Color(
                                                                0xFFF7FAFC),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Mulish',
                                                                color: Color(
                                                                    0xEB041629),
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
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
                                                              .asValidator(
                                                                  context),
                                                          inputFormatters: [
                                                            if (!isAndroid &&
                                                                !isiOS)
                                                              TextInputFormatter
                                                                  .withFunction(
                                                                      (oldValue,
                                                                          newValue) {
                                                                return TextEditingValue(
                                                                  selection:
                                                                      newValue
                                                                          .selection,
                                                                  text: newValue
                                                                      .text
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
                                                          focusNode: _model
                                                              .passwordFocusNode,
                                                          autofocus: false,
                                                          obscureText: !_model
                                                              .passwordVisibility,
                                                          decoration:
                                                              InputDecoration(
                                                            isDense: true,
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Mulish',
                                                                      color: Color(
                                                                          0xEB041629),
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            hintText:
                                                                'Password',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Mulish',
                                                                      color: Color(
                                                                          0xEB041629),
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFCBD5E0),
                                                                width: 1.2,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.2,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.2,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.2,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            filled: true,
                                                            fillColor: Color(
                                                                0xFFF7FAFC),
                                                            suffixIcon: InkWell(
                                                              onTap: () =>
                                                                  safeSetState(
                                                                () => _model
                                                                        .passwordVisibility =
                                                                    !_model
                                                                        .passwordVisibility,
                                                              ),
                                                              focusNode: FocusNode(
                                                                  skipTraversal:
                                                                      true),
                                                              child: Icon(
                                                                _model.passwordVisibility
                                                                    ? Icons
                                                                        .visibility_outlined
                                                                    : Icons
                                                                        .visibility_off_outlined,
                                                                color: Color(
                                                                    0xEB041629),
                                                                size: 22,
                                                              ),
                                                            ),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Mulish',
                                                                color: Color(
                                                                    0xEB041629),
                                                                letterSpacing:
                                                                    0.0,
                                                                lineHeight: 1.2,
                                                              ),
                                                          cursorColor:
                                                              Color(0xEB041629),
                                                          validator: _model
                                                              .passwordTextControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          FlutterFlowDropDown<
                                                              String>(
                                                            controller: _model
                                                                    .dropDownmoduleValueController ??=
                                                                FormFieldController<
                                                                    String>(
                                                              _model.dropDownmoduleValue ??=
                                                                  'North Region',
                                                            ),
                                                            options: _model
                                                                .modulesList
                                                                .map((e) => e
                                                                    .moduleName)
                                                                .toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(() =>
                                                                  _model.dropDownmoduleValue =
                                                                      val);
                                                              FFAppState()
                                                                      .module =
                                                                  _model
                                                                      .dropDownmoduleValue!;
                                                              safeSetState(
                                                                  () {});
                                                              _model.moduleId =
                                                                  _model
                                                                      .dropDownmoduleValue;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            width:
                                                                double.infinity,
                                                            height: 45.0,
                                                            maxHeight: 350.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Mulish',
                                                                      color: Color(
                                                                          0xEB041629),
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            hintText: 'Module',
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: Color(
                                                                  0xEB041629),
                                                              size: 24.0,
                                                            ),
                                                            fillColor: Color(
                                                                0xFFF7FAFC),
                                                            elevation: 2.0,
                                                            borderColor: Color(
                                                                0xFFCBD5E0),
                                                            borderWidth: 0.0,
                                                            borderRadius: 8.0,
                                                            margin:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                            hidesUnderline:
                                                                true,
                                                            isOverButton: false,
                                                            isSearchable: false,
                                                            isMultiSelect:
                                                                false,
                                                            labelText: '',
                                                            labelTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Mulish',
                                                                      color: Color(
                                                                          0xEB041629),
                                                                      letterSpacing:
                                                                          0.0,
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
                                                                style: FlutterFlowTheme.of(
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
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          FlutterFlowDropDown<
                                                              String>(
                                                            controller: _model
                                                                    .dropDownGeoValueController ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            options: _model
                                                                .geoList
                                                                .map((e) =>
                                                                    e.geogName)
                                                                .toList(),
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(() =>
                                                                  _model.dropDownGeoValue =
                                                                      val);
                                                              FFAppState()
                                                                      .geoSelected =
                                                                  _model
                                                                      .dropDownGeoValue!;
                                                              safeSetState(
                                                                  () {});
                                                              _model.geoId = _model
                                                                  .dropDownGeoValue;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            width:
                                                                double.infinity,
                                                            height: 45.0,
                                                            maxHeight: 250.0,
                                                            searchHintTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Mulish',
                                                                      color: Color(
                                                                          0xEB041629),
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            searchTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Mulish',
                                                                      color: Color(
                                                                          0xEB041629),
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Mulish',
                                                                      color: Color(
                                                                          0xEB041629),
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            hintText:
                                                                'Select Geography',
                                                            searchHintText:
                                                                'Search...',
                                                            searchCursorColor:
                                                                Color(
                                                                    0xFFFF6600),
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: Color(
                                                                  0xEB041629),
                                                              size: 24.0,
                                                            ),
                                                            fillColor: Color(
                                                                0xFFF7FAFC),
                                                            elevation: 2.0,
                                                            borderColor: Color(
                                                                0xFFCBD5E0),
                                                            borderWidth: 0.0,
                                                            borderRadius: 8.0,
                                                            margin:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                            hidesUnderline:
                                                                true,
                                                            isOverButton: false,
                                                            isSearchable: true,
                                                            isMultiSelect:
                                                                false,
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
                                                                style: FlutterFlowTheme.of(
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
                                                    ].divide(
                                                        SizedBox(height: 15.0)),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'columnOnPageLoadAnimation2']!),
                                                ),
                                                Builder(
                                                  builder: (context) {
                                                    if (!_model.isLoading) {
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    10.0,
                                                                    20.0,
                                                                    20.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            _model
                                                                .module = _model
                                                                    .dropDownmoduleValue ==
                                                                null;
                                                            safeSetState(() {});
                                                            _model.geo = _model
                                                                    .dropDownGeoValue ==
                                                                null;
                                                            safeSetState(() {});
                                                            _model.isValidatedDirect =
                                                                true;
                                                            if (_model.formKey
                                                                        .currentState ==
                                                                    null ||
                                                                !_model.formKey
                                                                    .currentState!
                                                                    .validate()) {
                                                              safeSetState(() =>
                                                                  _model.isValidatedDirect =
                                                                      false);
                                                              return;
                                                            }
                                                            if ((_model.isValidatedDirect ==
                                                                    true) &&
                                                                (_model.module ==
                                                                    false) &&
                                                                (_model.geo ==
                                                                    false)) {
                                                              _model.isLoading =
                                                                  true;
                                                              safeSetState(
                                                                  () {});
                                                              _model.hashCodee =
                                                                  await actions
                                                                      .generateWebDeviceHashWithTime();
                                                              await Future
                                                                  .wait([
                                                                Future(
                                                                    () async {
                                                                  _model.encryptedUsername =
                                                                      await actions
                                                                          .encrptText(
                                                                    _model
                                                                        .userNameTextController
                                                                        .text,
                                                                  );
                                                                }),
                                                                Future(
                                                                    () async {
                                                                  _model.encryptedPassword =
                                                                      await actions
                                                                          .encrptText(
                                                                    _model
                                                                        .passwordTextController
                                                                        .text,
                                                                  );
                                                                }),
                                                                Future(
                                                                    () async {
                                                                  _model.encryptedHashCode =
                                                                      await actions
                                                                          .encrptText(
                                                                    _model
                                                                        .hashCodee!,
                                                                  );
                                                                }),
                                                                Future(
                                                                    () async {
                                                                  _model.moduleEncrypt =
                                                                      await actions
                                                                          .encrptText(
                                                                    functions.getModuleIdFromName(
                                                                        _model.moduleId!,
                                                                        getJsonField(
                                                                          (_model.moduless?.jsonBody ??
                                                                              ''),
                                                                          r'''$''',
                                                                          true,
                                                                        )!)!,
                                                                  );
                                                                }),
                                                                Future(
                                                                    () async {
                                                                  _model.geoEncrypt =
                                                                      await actions
                                                                          .encrptText(
                                                                    functions.newCustomFunction2(
                                                                        _model.geoId!,
                                                                        getJsonField(
                                                                          (_model.geos?.jsonBody ??
                                                                              ''),
                                                                          r'''$''',
                                                                          true,
                                                                        )!)!,
                                                                  );
                                                                }),
                                                              ]);
                                                              _model.loginApi =
                                                                  await AuthenticationGroup
                                                                      .loginApiCall
                                                                      .call(
                                                                username: _model
                                                                    .encryptedUsername,
                                                                password: _model
                                                                    .encryptedPassword,
                                                                deviceHash: _model
                                                                    .encryptedHashCode,
                                                                geogId: _model
                                                                    .geoEncrypt,
                                                                moduleId: _model
                                                                    .moduleEncrypt,
                                                              );

                                                              if ((_model
                                                                      .loginApi
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                FFAppState()
                                                                        .AccessToken =
                                                                    getJsonField(
                                                                  (_model.loginApi
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                  r'''$.accessToken''',
                                                                ).toString();
                                                                FFAppState()
                                                                        .DeviceHash =
                                                                    _model
                                                                        .encryptedHashCode!;
                                                                FFAppState()
                                                                        .userID =
                                                                    _model
                                                                        .userNameTextController
                                                                        .text;
                                                                safeSetState(
                                                                    () {});
                                                                await actions
                                                                    .loadAndStartFaceID(
                                                                  context,
                                                                  functions.addEmail(
                                                                      _model
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
                                                                safeSetState(
                                                                    () {});
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return AlertDialog(
                                                                      title: Text(
                                                                          'Alert'),
                                                                      content: Text(
                                                                          'Something went wrong ! Please try again Later.'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
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
                                                          options:
                                                              FFButtonOptions(
                                                            width:
                                                                double.infinity,
                                                            height: 50.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: Color(
                                                                0xFFFF6600),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Mulish',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            elevation: 2.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'buttonOnPageLoadAnimation']!),
                                                      );
                                                    } else {
                                                      return Container(
                                                        height: 85.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .loadingWidgetModel,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              LoadingWidgetWidget(),
                                                        ),
                                                      );
                                                    }
                                                  },
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 5.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      safeSetState(() {
                                                        _model
                                                            .userNameTextController
                                                            ?.clear();
                                                        _model
                                                            .passwordTextController
                                                            ?.clear();
                                                      });
                                                      safeSetState(() {
                                                        _model
                                                            .dropDownmoduleValueController
                                                            ?.reset();
                                                        _model
                                                            .dropDownGeoValueController
                                                            ?.reset();
                                                      });
                                                    },
                                                    child: Text(
                                                      'Reset',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Mulish',
                                                            color: Color(
                                                                0xEB041629),
                                                            fontSize: 15.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
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
            )),
      ),
    );
  }
}
