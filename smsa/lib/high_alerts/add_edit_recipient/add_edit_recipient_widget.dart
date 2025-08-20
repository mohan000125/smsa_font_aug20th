import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/drawer_widget.dart';
import '/components/earth_left_widget.dart';
import '/components/earth_right_widget.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_edit_recipient_model.dart';
export 'add_edit_recipient_model.dart';

class AddEditRecipientWidget extends StatefulWidget {
  const AddEditRecipientWidget({
    super.key,
    this.empId,
    this.ramId,
    this.emaiId,
    this.empName,
    this.geoName,
    this.senderBIC,
    this.msgType,
    this.smsaGrade,
    this.createdBy,
    this.createdDate,
    this.category,
    this.ccMailId,
    this.ccEmpId,
    this.verifiedBy,
    this.verfiedDate,
    this.smsaRecOperation,
    bool? changeText,
    bool? edited,
    bool? deleted,
  })  : this.changeText = changeText ?? false,
        this.edited = edited ?? false,
        this.deleted = deleted ?? false;

  final String? empId;
  final int? ramId;
  final String? emaiId;
  final String? empName;
  final String? geoName;
  final String? senderBIC;
  final String? msgType;
  final String? smsaGrade;
  final String? createdBy;
  final String? createdDate;
  final String? category;
  final String? ccMailId;
  final String? ccEmpId;
  final String? verifiedBy;
  final String? verfiedDate;
  final String? smsaRecOperation;
  final bool changeText;
  final bool edited;
  final bool deleted;

  static String routeName = 'AddEdit-Recipient';
  static String routePath = '/addEditRecipient';

  @override
  State<AddEditRecipientWidget> createState() => _AddEditRecipientWidgetState();
}

class _AddEditRecipientWidgetState extends State<AddEditRecipientWidget> {
  late AddEditRecipientModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddEditRecipientModel());

    _model.senderBICTextFieldTextController ??=
        TextEditingController(text: widget!.senderBIC);
    _model.senderBICTextFieldFocusNode ??= FocusNode();

    _model.recipientEMPIDTextFieldTextController ??=
        TextEditingController(text: widget!.empId);
    _model.recipientEMPIDTextFieldFocusNode ??= FocusNode();

    _model.recipientNameTextFieldTextController ??=
        TextEditingController(text: widget!.empName);
    _model.recipientNameTextFieldFocusNode ??= FocusNode();

    _model.recEmailIDTextFieldTextController ??=
        TextEditingController(text: widget!.emaiId);
    _model.recEmailIDTextFieldFocusNode ??= FocusNode();

    _model.recipientMovileNoTextFieldTextController ??= TextEditingController();
    _model.recipientMovileNoTextFieldFocusNode ??= FocusNode();

    _model.recipientGradeTextFieldTextController ??=
        TextEditingController(text: widget!.smsaGrade);
    _model.recipientGradeTextFieldFocusNode ??= FocusNode();

    _model.cCEmployerIDTextFieldTextController ??=
        TextEditingController(text: widget!.ccEmpId);
    _model.cCEmployerIDTextFieldFocusNode ??= FocusNode();

    _model.cCMailIDTextFieldTextController ??=
        TextEditingController(text: widget!.ccMailId);
    _model.cCMailIDTextFieldFocusNode ??= FocusNode();
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25.0, 25.0, 25.0, 0.0),
                child: wrapWithModel(
                  model: _model.headerModel,
                  updateCallback: () => safeSetState(() {}),
                  child: HeaderWidget(
                    openDrawer: () async {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    hitApiS: () async {},
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    wrapWithModel(
                      model: _model.earthLeftModel,
                      updateCallback: () => safeSetState(() {}),
                      child: EarthLeftWidget(),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                widget!.changeText == true
                                    ? 'Approve/Reject'
                                    : 'Add/Edit  Recipient',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Mulish',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 22.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Container(
                              width: 25.0,
                              height: 3.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF06321),
                              ),
                            ),
                          ].divide(SizedBox(height: 5.0)),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.6,
                          decoration: BoxDecoration(),
                          child: Form(
                            key: _model.formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 3.0, 0.0, 3.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Location',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .locationDropDownValueController ??=
                                                    FormFieldController<String>(
                                                  _model.locationDropDownValue ??=
                                                      widget!.geoName,
                                                ),
                                                options: [
                                                  'INDIA',
                                                  'HONG KONG',
                                                  'USA',
                                                  'CANADA',
                                                  'BAHRAIN',
                                                  'UK',
                                                  'RUSSIA',
                                                  'DUBAI',
                                                  'SINGAPORE',
                                                  'GERMANY',
                                                  'QATAR',
                                                  'BELGIUM',
                                                  'INDIA-SFMS',
                                                  'SHANGHAI',
                                                  'IBUGIFT'
                                                ],
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                            .locationDropDownValue =
                                                        val),
                                                width: 225.0,
                                                height: 40.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Select...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .fieldsBGColor,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ].divide(SizedBox(height: 10.0)),
                                          ),
                                        ),
                                        if (_model.locationCheck)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 4.0, 0.0, 0.0),
                                            child: Text(
                                              'Please Select Module',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            Color(0xFFF22B37),
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 3.0, 0.0, 3.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Sender BIC',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Mulish',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Container(
                                              width: 225.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .senderBICTextFieldTextController,
                                                focusNode: _model
                                                    .senderBICTextFieldFocusNode,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.senderBICTextFieldTextController',
                                                  Duration(milliseconds: 2000),
                                                  () => safeSetState(() {}),
                                                ),
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Enter SenderBIC',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .fieldsBGColor,
                                                  suffixIcon: _model
                                                          .senderBICTextFieldTextController!
                                                          .text
                                                          .isNotEmpty
                                                      ? InkWell(
                                                          onTap: () async {
                                                            _model
                                                                .senderBICTextFieldTextController
                                                                ?.clear();
                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons.clear,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 12.0,
                                                          ),
                                                        )
                                                      : null,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 11.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .senderBICTextFieldTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 10.0)),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 3.0, 0.0, 3.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'MT Type',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .mTCodeDropDownnValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.mTCodeDropDownnValue ??=
                                                        widget!.msgType,
                                                  ),
                                                  options: [
                                                    '102',
                                                    '103',
                                                    '700',
                                                    '707',
                                                    '720',
                                                    '740',
                                                    '747',
                                                    '760',
                                                    '765',
                                                    '767'
                                                  ],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .mTCodeDropDownnValue =
                                                          val),
                                                  width: 225.0,
                                                  height: 40.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Select...',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .fieldsBGColor,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 5.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 10.0)),
                                          ),
                                        ),
                                        if (_model.mtTypeCheck)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 4.0, 0.0, 0.0),
                                            child: Text(
                                              'Please Select MT Type',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            Color(0xFFF22B37),
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ].divide(SizedBox(width: 20.0)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 3.0, 0.0, 0.0),
                                          child: Text(
                                            'Recipient Employee Id',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Mulish',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          child: Container(
                                            width: 225.0,
                                            child: TextFormField(
                                              controller: _model
                                                  .recipientEMPIDTextFieldTextController,
                                              focusNode: _model
                                                  .recipientEMPIDTextFieldFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.recipientEMPIDTextFieldTextController',
                                                Duration(milliseconds: 2000),
                                                () => safeSetState(() {}),
                                              ),
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Enter Recipient ID',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .fieldsBGColor,
                                                suffixIcon: _model
                                                        .recipientEMPIDTextFieldTextController!
                                                        .text
                                                        .isNotEmpty
                                                    ? InkWell(
                                                        onTap: () async {
                                                          _model
                                                              .recipientEMPIDTextFieldTextController
                                                              ?.clear();
                                                          safeSetState(() {});
                                                        },
                                                        child: Icon(
                                                          Icons.clear,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 12.0,
                                                        ),
                                                      )
                                                    : null,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              validator: _model
                                                  .recipientEMPIDTextFieldTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              _model.searchIDResponse =
                                                  await RecipientApisGroup
                                                      .searchByIDCall
                                                      .call(
                                                userId: FFAppState().userID,
                                                userPassword:
                                                    FFAppState().loginPassword,
                                                searchId: _model
                                                    .recipientEMPIDTextFieldTextController
                                                    .text,
                                              );

                                              if ((_model.searchIDResponse
                                                      ?.succeeded ??
                                                  true)) {
                                                await Future.wait([
                                                  Future(() async {
                                                    safeSetState(() {
                                                      _model
                                                          .recipientNameTextFieldTextController
                                                          ?.text = getJsonField(
                                                        (_model.searchIDResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.username''',
                                                      ).toString();
                                                    });
                                                  }),
                                                  Future(() async {
                                                    safeSetState(() {
                                                      _model
                                                          .recEmailIDTextFieldTextController
                                                          ?.text = getJsonField(
                                                        (_model.searchIDResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.email''',
                                                      ).toString();
                                                    });
                                                  }),
                                                ]);
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('Alert'),
                                                      content: Text(
                                                          'Something went wrong.'),
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

                                              safeSetState(() {});
                                            },
                                            text: 'Search ID',
                                            options: FFButtonOptions(
                                              width: 100.0,
                                              height: 30.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFFE3530F),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color: Colors.white,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 10.0)),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 3.0, 0.0, 3.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Recipient Name',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Mulish',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Container(
                                              width: 225.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .recipientNameTextFieldTextController,
                                                focusNode: _model
                                                    .recipientNameTextFieldFocusNode,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.recipientNameTextFieldTextController',
                                                  Duration(milliseconds: 2000),
                                                  () => safeSetState(() {}),
                                                ),
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText:
                                                      'Enter Recipient Name',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .fieldsBGColor,
                                                  suffixIcon: _model
                                                          .recipientNameTextFieldTextController!
                                                          .text
                                                          .isNotEmpty
                                                      ? InkWell(
                                                          onTap: () async {
                                                            _model
                                                                .recipientNameTextFieldTextController
                                                                ?.clear();
                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons.clear,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 12.0,
                                                          ),
                                                        )
                                                      : null,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .recipientNameTextFieldTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 10.0)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 3.0, 0.0, 3.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Recipient Mail Id',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Mulish',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Container(
                                              width: 225.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .recEmailIDTextFieldTextController,
                                                focusNode: _model
                                                    .recEmailIDTextFieldFocusNode,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.recEmailIDTextFieldTextController',
                                                  Duration(milliseconds: 2000),
                                                  () => safeSetState(() {}),
                                                ),
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText:
                                                      'Enter Recipient Mail ID',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .fieldsBGColor,
                                                  suffixIcon: _model
                                                          .recEmailIDTextFieldTextController!
                                                          .text
                                                          .isNotEmpty
                                                      ? InkWell(
                                                          onTap: () async {
                                                            _model
                                                                .recEmailIDTextFieldTextController
                                                                ?.clear();
                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons.clear,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 12.0,
                                                          ),
                                                        )
                                                      : null,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .recEmailIDTextFieldTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 10.0)),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 20.0)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 3.0, 0.0, 3.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 10.0),
                                                child: Text(
                                                  'Recipient Mobile No',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .fieldsBGColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                child: Container(
                                                  width: 225.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .recipientMovileNoTextFieldTextController,
                                                    focusNode: _model
                                                        .recipientMovileNoTextFieldFocusNode,
                                                    onChanged: (_) =>
                                                        EasyDebounce.debounce(
                                                      '_model.recipientMovileNoTextFieldTextController',
                                                      Duration(
                                                          milliseconds: 2000),
                                                      () => safeSetState(() {}),
                                                    ),
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Mulish',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          'Enter Employee Number',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Mulish',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .fieldsBGColor,
                                                      suffixIcon: _model
                                                              .recipientMovileNoTextFieldTextController!
                                                              .text
                                                              .isNotEmpty
                                                          ? InkWell(
                                                              onTap: () async {
                                                                _model
                                                                    .recipientMovileNoTextFieldTextController
                                                                    ?.clear();
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Icon(
                                                                Icons.clear,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 12.0,
                                                              ),
                                                            )
                                                          : null,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    validator: _model
                                                        .recipientMovileNoTextFieldTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 3.0, 0.0, 3.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 10.0),
                                            child: Text(
                                              'Recipient Grade',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Mulish',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Container(
                                              width: 225.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .recipientGradeTextFieldTextController,
                                                focusNode: _model
                                                    .recipientGradeTextFieldFocusNode,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.recipientGradeTextFieldTextController',
                                                  Duration(milliseconds: 2000),
                                                  () => safeSetState(() {}),
                                                ),
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Enter Grade',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .fieldsBGColor,
                                                  suffixIcon: _model
                                                          .recipientGradeTextFieldTextController!
                                                          .text
                                                          .isNotEmpty
                                                      ? InkWell(
                                                          onTap: () async {
                                                            _model
                                                                .recipientGradeTextFieldTextController
                                                                ?.clear();
                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons.clear,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 12.0,
                                                          ),
                                                        )
                                                      : null,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .recipientGradeTextFieldTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 3.0, 0.0, 3.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 10.0),
                                                child: Text(
                                                  'Category',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .catDropDownValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.catDropDownValue ??=
                                                        widget!.category,
                                                  ),
                                                  options: [
                                                    'Category A - DGM, JGM, GM, SGMI & SGMI',
                                                    'Category B - MI, MII, CMI, CMII & AGM'
                                                  ],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .catDropDownValue =
                                                          val),
                                                  width: 225.0,
                                                  height: 40.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Select...',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .fieldsBGColor,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 5.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        if (_model.categoryCheck)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 4.0, 0.0, 0.0),
                                            child: Text(
                                              'Please Select Catergoty',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            Color(0xFFF22B37),
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ].divide(SizedBox(width: 20.0)),
                                ),
                                Container(
                                  width: 600.0,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 5.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'CC Employee ID',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(),
                                                  child: Container(
                                                    width: 225.0,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .cCEmployerIDTextFieldTextController,
                                                      focusNode: _model
                                                          .cCEmployerIDTextFieldFocusNode,
                                                      onChanged: (_) =>
                                                          EasyDebounce.debounce(
                                                        '_model.cCEmployerIDTextFieldTextController',
                                                        Duration(
                                                            milliseconds: 2000),
                                                        () =>
                                                            safeSetState(() {}),
                                                      ),
                                                      autofocus: false,
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Mulish',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .fieldsBGColor,
                                                        suffixIcon: _model
                                                                .cCEmployerIDTextFieldTextController!
                                                                .text
                                                                .isNotEmpty
                                                            ? InkWell(
                                                                onTap:
                                                                    () async {
                                                                  _model
                                                                      .cCEmployerIDTextFieldTextController
                                                                      ?.clear();
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: Icon(
                                                                  Icons.clear,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: 12.0,
                                                                ),
                                                              )
                                                            : null,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Mulish',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      cursorColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      validator: _model
                                                          .cCEmployerIDTextFieldTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 10.0)),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                ' CC Mail ID',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(),
                                                child: Container(
                                                  width: 225.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .cCMailIDTextFieldTextController,
                                                    focusNode: _model
                                                        .cCMailIDTextFieldFocusNode,
                                                    onChanged: (_) =>
                                                        EasyDebounce.debounce(
                                                      '_model.cCMailIDTextFieldTextController',
                                                      Duration(
                                                          milliseconds: 2000),
                                                      () => safeSetState(() {}),
                                                    ),
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Mulish',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Mulish',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .fieldsBGColor,
                                                      suffixIcon: _model
                                                              .cCMailIDTextFieldTextController!
                                                              .text
                                                              .isNotEmpty
                                                          ? InkWell(
                                                              onTap: () async {
                                                                _model
                                                                    .cCMailIDTextFieldTextController
                                                                    ?.clear();
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Icon(
                                                                Icons.clear,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 12.0,
                                                              ),
                                                            )
                                                          : null,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    validator: _model
                                                        .cCMailIDTextFieldTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 10.0)),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 20.0)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if (widget!.changeText == false)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 10.0),
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Builder(
                                                  builder: (context) {
                                                    if (widget!.edited) {
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            _model.recipientUpdateRes =
                                                                await RecipientApisGroup
                                                                    .recipientDataUpdateCall
                                                                    .call(
                                                              smsaRamId:
                                                                  widget!.ramId,
                                                              smsaEmpId: _model
                                                                  .recipientEMPIDTextFieldTextController
                                                                  .text,
                                                              smsaGeoName: _model
                                                                  .locationDropDownValue,
                                                              smsaEmpName: _model
                                                                  .recipientNameTextFieldTextController
                                                                  .text,
                                                              recEmailId: _model
                                                                  .recEmailIDTextFieldTextController
                                                                  .text,
                                                              smsaSenderBic: _model
                                                                  .senderBICTextFieldTextController
                                                                  .text,
                                                              smsaMsgType: _model
                                                                  .mTCodeDropDownnValue,
                                                              smsaGrade: _model
                                                                  .recipientGradeTextFieldTextController
                                                                  .text,
                                                              recModifiedBy:
                                                                  FFAppState()
                                                                      .userID,
                                                              recModifiedDate:
                                                                  dateTimeFormat(
                                                                      "yyyy-MM-dd",
                                                                      getCurrentTimestamp),
                                                              recCategory: _model
                                                                  .catDropDownValue,
                                                              recCCEmpId: _model
                                                                  .cCEmployerIDTextFieldTextController
                                                                  .text,
                                                              recCCMailId: _model
                                                                  .cCMailIDTextFieldTextController
                                                                  .text,
                                                              smsaRecOperation:
                                                                  'UPDATE',
                                                              operation:
                                                                  'UPDATE',
                                                              recCreatedDate:
                                                                  widget!
                                                                      .createdDate,
                                                              smsaCreatedBy:
                                                                  widget!
                                                                      .createdBy,
                                                            );

                                                            if ((_model
                                                                    .recipientUpdateRes
                                                                    ?.succeeded ??
                                                                true)) {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: Text(
                                                                        'Alert'),
                                                                    content: Text(
                                                                        'Recipient Updated Successfully, went to approval.'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed:
                                                                            () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                        child: Text(
                                                                            'Ok'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );

                                                              context.pushNamed(
                                                                  AddEditRecipientWidget
                                                                      .routeName);

                                                              safeSetState(() {
                                                                _model
                                                                    .locationDropDownValueController
                                                                    ?.reset();
                                                                _model
                                                                    .mTCodeDropDownnValueController
                                                                    ?.reset();
                                                                _model
                                                                    .catDropDownValueController
                                                                    ?.reset();
                                                              });
                                                              safeSetState(() {
                                                                _model.recipientNameTextFieldTextController
                                                                        ?.text =
                                                                    widget!
                                                                        .empName!;

                                                                _model
                                                                    .recipientMovileNoTextFieldTextController
                                                                    ?.clear();
                                                                _model.recEmailIDTextFieldTextController
                                                                        ?.text =
                                                                    widget!
                                                                        .emaiId!;

                                                                _model.recipientGradeTextFieldTextController
                                                                        ?.text =
                                                                    widget!
                                                                        .smsaGrade!;

                                                                _model.cCEmployerIDTextFieldTextController
                                                                        ?.text =
                                                                    widget!
                                                                        .ccEmpId!;

                                                                _model.recipientEMPIDTextFieldTextController
                                                                        ?.text =
                                                                    widget!
                                                                        .empId!;

                                                                _model.senderBICTextFieldTextController
                                                                        ?.text =
                                                                    widget!
                                                                        .senderBIC!;

                                                                _model.cCMailIDTextFieldTextController
                                                                        ?.text =
                                                                    widget!
                                                                        .ccMailId!;
                                                              });
                                                            } else {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: Text(
                                                                        'Alert'),
                                                                    content: Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                      (_model.recipientUpdateRes
                                                                              ?.exceptionMessage ??
                                                                          ''),
                                                                      'Something went wrong.',
                                                                    )),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed:
                                                                            () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                        child: Text(
                                                                            'Ok'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }

                                                            safeSetState(() {});
                                                          },
                                                          text: 'Update',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 100.0,
                                                            height: 30.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: Color(
                                                                0xFFE3530F),
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
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0),
                                                          ),
                                                        ),
                                                      );
                                                    } else if (widget!
                                                        .deleted) {
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            _model.recipientDeleteRes =
                                                                await RecipientApisGroup
                                                                    .recipientDataDeleteCall
                                                                    .call(
                                                              operation:
                                                                  'DELETE',
                                                              smsaRamId:
                                                                  widget!.ramId,
                                                            );

                                                            if ((_model
                                                                    .recipientDeleteRes
                                                                    ?.succeeded ??
                                                                true)) {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: Text(
                                                                        'Alert'),
                                                                    content: Text(
                                                                        'Recipient Deleted Successfully, went to approval.'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed:
                                                                            () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                        child: Text(
                                                                            'Ok'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );

                                                              context.pushNamed(
                                                                  AddEditRecipientWidget
                                                                      .routeName);

                                                              safeSetState(() {
                                                                _model
                                                                    .locationDropDownValueController
                                                                    ?.reset();
                                                                _model
                                                                    .mTCodeDropDownnValueController
                                                                    ?.reset();
                                                                _model
                                                                    .catDropDownValueController
                                                                    ?.reset();
                                                              });
                                                              safeSetState(() {
                                                                _model.recipientEMPIDTextFieldTextController
                                                                        ?.text =
                                                                    widget!
                                                                        .empId!;

                                                                _model.recipientNameTextFieldTextController
                                                                        ?.text =
                                                                    widget!
                                                                        .empName!;

                                                                _model
                                                                    .recipientMovileNoTextFieldTextController
                                                                    ?.clear();
                                                                _model.recEmailIDTextFieldTextController
                                                                        ?.text =
                                                                    widget!
                                                                        .emaiId!;

                                                                _model.recipientGradeTextFieldTextController
                                                                        ?.text =
                                                                    widget!
                                                                        .smsaGrade!;

                                                                _model.cCEmployerIDTextFieldTextController
                                                                        ?.text =
                                                                    widget!
                                                                        .ccEmpId!;

                                                                _model.cCMailIDTextFieldTextController
                                                                        ?.text =
                                                                    widget!
                                                                        .ccMailId!;

                                                                _model.senderBICTextFieldTextController
                                                                        ?.text =
                                                                    widget!
                                                                        .senderBIC!;
                                                              });
                                                            } else {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: Text(
                                                                        'Alert'),
                                                                    content: Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                      (_model.recipientDeleteRes
                                                                              ?.exceptionMessage ??
                                                                          ''),
                                                                      'Something went wrong.',
                                                                    )),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed:
                                                                            () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                        child: Text(
                                                                            'Ok'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }

                                                            safeSetState(() {});
                                                          },
                                                          text: 'Delete',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 100.0,
                                                            height: 30.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: Color(
                                                                0xFFE3530F),
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
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0),
                                                          ),
                                                        ),
                                                      );
                                                    } else {
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            _model.locationCheck =
                                                                _model.locationDropDownValue ==
                                                                    null;
                                                            _model.categoryCheck =
                                                                _model.catDropDownValue ==
                                                                    null;
                                                            _model.mtTypeCheck =
                                                                _model.mTCodeDropDownnValue ==
                                                                    null;
                                                            safeSetState(() {});
                                                            _model.isValidaterecipientForm =
                                                                true;
                                                            if (_model.formKey
                                                                        .currentState ==
                                                                    null ||
                                                                !_model.formKey
                                                                    .currentState!
                                                                    .validate()) {
                                                              safeSetState(() =>
                                                                  _model.isValidaterecipientForm =
                                                                      false);
                                                              return;
                                                            }
                                                            if ((_model.isValidaterecipientForm ==
                                                                    true) &&
                                                                (_model.locationCheck ==
                                                                    false) &&
                                                                (_model.categoryCheck ==
                                                                    false) &&
                                                                (_model.mtTypeCheck ==
                                                                    false)) {
                                                              _model.recAddRes =
                                                                  await RecipientApisGroup
                                                                      .recipientDataAddCall
                                                                      .call(
                                                                smsaEmpId: _model
                                                                    .recipientEMPIDTextFieldTextController
                                                                    .text,
                                                                smsaGeoName: _model
                                                                    .locationDropDownValue,
                                                                smsaSenderBic:
                                                                    _model
                                                                        .senderBICTextFieldTextController
                                                                        .text,
                                                                smsaMsgType: _model
                                                                    .mTCodeDropDownnValue,
                                                                smsaEmpName: _model
                                                                    .recipientNameTextFieldTextController
                                                                    .text,
                                                                smsaGrade: _model
                                                                    .recipientGradeTextFieldTextController
                                                                    .text,
                                                                smsaCreatedBy:
                                                                    FFAppState()
                                                                        .userID,
                                                                operation:
                                                                    'ADD',
                                                                recEmailId: _model
                                                                    .recEmailIDTextFieldTextController
                                                                    .text,
                                                                recCategory: _model
                                                                    .catDropDownValue,
                                                                recCreatedDate:
                                                                    dateTimeFormat(
                                                                        "yyyy-MM-dd",
                                                                        getCurrentTimestamp),
                                                                recCCEmpId: _model
                                                                    .cCEmployerIDTextFieldTextController
                                                                    .text,
                                                                recCCMailId: _model
                                                                    .cCMailIDTextFieldTextController
                                                                    .text,
                                                                smsaRecOperation:
                                                                    'ADD',
                                                              );

                                                              if ((_model
                                                                      .recAddRes
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return AlertDialog(
                                                                      title: Text(
                                                                          'Alert'),
                                                                      content: Text(
                                                                          'Recipient Added successful, went to approval.'),
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

                                                                context.pushNamed(
                                                                    AddEditRecipientWidget
                                                                        .routeName);

                                                                safeSetState(
                                                                    () {
                                                                  _model
                                                                      .locationDropDownValueController
                                                                      ?.reset();
                                                                  _model
                                                                      .mTCodeDropDownnValueController
                                                                      ?.reset();
                                                                  _model
                                                                      .catDropDownValueController
                                                                      ?.reset();
                                                                });
                                                                safeSetState(
                                                                    () {
                                                                  _model.recipientEMPIDTextFieldTextController
                                                                          ?.text =
                                                                      widget!
                                                                          .empId!;

                                                                  _model.recipientNameTextFieldTextController
                                                                          ?.text =
                                                                      widget!
                                                                          .empName!;

                                                                  _model
                                                                      .recipientMovileNoTextFieldTextController
                                                                      ?.clear();
                                                                  _model.recEmailIDTextFieldTextController
                                                                          ?.text =
                                                                      widget!
                                                                          .emaiId!;

                                                                  _model.recipientGradeTextFieldTextController
                                                                          ?.text =
                                                                      widget!
                                                                          .smsaGrade!;

                                                                  _model.cCEmployerIDTextFieldTextController
                                                                          ?.text =
                                                                      widget!
                                                                          .ccEmpId!;

                                                                  _model.cCMailIDTextFieldTextController
                                                                          ?.text =
                                                                      widget!
                                                                          .ccMailId!;

                                                                  _model.senderBICTextFieldTextController
                                                                          ?.text =
                                                                      widget!
                                                                          .senderBIC!;
                                                                });
                                                              } else {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return AlertDialog(
                                                                      title: Text(
                                                                          'Alert'),
                                                                      content: Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                        (_model.recAddRes?.exceptionMessage ??
                                                                            ''),
                                                                        'something went wrong.',
                                                                      )),
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
                                                          text: 'Add',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 100.0,
                                                            height: 30.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: Color(
                                                                0xFFE3530F),
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
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                  },
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      safeSetState(() {
                                                        _model
                                                            .locationDropDownValueController
                                                            ?.reset();
                                                        _model
                                                            .mTCodeDropDownnValueController
                                                            ?.reset();
                                                        _model
                                                            .catDropDownValueController
                                                            ?.reset();
                                                      });
                                                      safeSetState(() {
                                                        _model.recipientEMPIDTextFieldTextController
                                                                ?.text =
                                                            widget!.empId!;

                                                        _model.recipientNameTextFieldTextController
                                                                ?.text =
                                                            widget!.empName!;

                                                        _model
                                                            .recipientMovileNoTextFieldTextController
                                                            ?.clear();
                                                        _model.recEmailIDTextFieldTextController
                                                                ?.text =
                                                            widget!.emaiId!;

                                                        _model.recipientGradeTextFieldTextController
                                                                ?.text =
                                                            widget!.smsaGrade!;

                                                        _model.cCEmployerIDTextFieldTextController
                                                                ?.text =
                                                            widget!.ccEmpId!;

                                                        _model.cCMailIDTextFieldTextController
                                                                ?.text =
                                                            widget!.ccMailId!;

                                                        _model.senderBICTextFieldTextController
                                                                ?.text =
                                                            widget!.senderBIC!;
                                                      });
                                                    },
                                                    text: 'Reset',
                                                    options: FFButtonOptions(
                                                      width: 100.0,
                                                      height: 30.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: Color(0xFFE3530F),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Mulish',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 20.0)),
                                            ),
                                          ),
                                        ),
                                      if (widget!.changeText == true)
                                        Flexible(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    _model.recipientApproved =
                                                        await RecipientApisGroup
                                                            .recipientDataApproveCall
                                                            .call(
                                                      smsaEmpId: widget!.empId,
                                                      smsaGeoName:
                                                          widget!.geoName,
                                                      smsaSenderBic:
                                                          widget!.senderBIC,
                                                      smsaMsgType:
                                                          widget!.msgType,
                                                      smsaEmpName:
                                                          widget!.empName,
                                                      smsaGrade:
                                                          widget!.smsaGrade,
                                                      smsaCreatedBy:
                                                          widget!.createdBy,
                                                      operation: 'Approved',
                                                      recEmailId:
                                                          widget!.emaiId,
                                                      recCreatedDate:
                                                          widget!.createdDate,
                                                      recVerifiedBy:
                                                          FFAppState().userID,
                                                      recVerifiedDate:
                                                          dateTimeFormat(
                                                              "yyyy-MM-dd",
                                                              getCurrentTimestamp),
                                                      recCategory:
                                                          widget!.category,
                                                      recCCEmpId:
                                                          widget!.ccEmpId,
                                                      recCCMailId:
                                                          widget!.ccMailId,
                                                      smsaRamId: widget!.ramId,
                                                      smsaRecOperation: widget!
                                                          .smsaRecOperation,
                                                    );

                                                    if ((_model
                                                            .recipientApproved
                                                            ?.succeeded ??
                                                        true)) {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Alert'),
                                                            content: Text(
                                                                'Approved Successfully.'),
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

                                                      context.pushNamed(
                                                          AddEditRecipientWidget
                                                              .routeName);

                                                      safeSetState(() {
                                                        _model
                                                            .locationDropDownValueController
                                                            ?.reset();
                                                        _model
                                                            .mTCodeDropDownnValueController
                                                            ?.reset();
                                                        _model
                                                            .catDropDownValueController
                                                            ?.reset();
                                                      });
                                                      safeSetState(() {
                                                        _model.recipientEMPIDTextFieldTextController
                                                                ?.text =
                                                            widget!.empId!;

                                                        _model.recipientNameTextFieldTextController
                                                                ?.text =
                                                            widget!.empName!;

                                                        _model
                                                            .recipientMovileNoTextFieldTextController
                                                            ?.clear();
                                                        _model.recEmailIDTextFieldTextController
                                                                ?.text =
                                                            widget!.emaiId!;

                                                        _model.recipientGradeTextFieldTextController
                                                                ?.text =
                                                            widget!.smsaGrade!;

                                                        _model.cCEmployerIDTextFieldTextController
                                                                ?.text =
                                                            widget!.ccEmpId!;

                                                        _model.cCMailIDTextFieldTextController
                                                                ?.text =
                                                            widget!.ccMailId!;

                                                        _model.senderBICTextFieldTextController
                                                                ?.text =
                                                            widget!.senderBIC!;
                                                      });
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Alert'),
                                                            content: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                              (_model.recipientApproved
                                                                      ?.exceptionMessage ??
                                                                  ''),
                                                              'something went wrong.',
                                                            )),
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

                                                    safeSetState(() {});
                                                  },
                                                  text: 'Approved',
                                                  options: FFButtonOptions(
                                                    width: 100.0,
                                                    height: 30.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: Color(0xFFE3530F),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: Colors.white,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 0.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    _model.recipientReject =
                                                        await RecipientApisGroup
                                                            .recipientDataRejectCall
                                                            .call(
                                                      smsaEmpId: widget!.empId,
                                                      smsaRamId: widget!.ramId,
                                                      recEmailId:
                                                          widget!.emaiId,
                                                      smsaEmpName:
                                                          widget!.empName,
                                                      smsaGeoName:
                                                          widget!.geoName,
                                                      smsaSenderBic:
                                                          widget!.senderBIC,
                                                      smsaMsgType:
                                                          widget!.msgType,
                                                      smsaGrade:
                                                          widget!.smsaGrade,
                                                      smsaCreatedBy:
                                                          widget!.createdBy,
                                                      recCreatedDate:
                                                          widget!.createdDate,
                                                      recCategory:
                                                          widget!.category,
                                                      recCCEmpId:
                                                          widget!.ccEmpId,
                                                      recCCMailId:
                                                          widget!.ccMailId,
                                                      recVerifiedBy:
                                                          FFAppState().userID,
                                                      recVerifiedDate:
                                                          dateTimeFormat(
                                                              "yyyy-MM-dd",
                                                              getCurrentTimestamp),
                                                      operation: 'Rejected',
                                                      smsaRecOperation: widget!
                                                          .smsaRecOperation,
                                                    );

                                                    if ((_model.recipientReject
                                                            ?.succeeded ??
                                                        true)) {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Alert'),
                                                            content: Text(
                                                                'Rejected Successfully.'),
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

                                                      context.pushNamed(
                                                          AddEditRecipientWidget
                                                              .routeName);

                                                      safeSetState(() {
                                                        _model
                                                            .locationDropDownValueController
                                                            ?.reset();
                                                        _model
                                                            .mTCodeDropDownnValueController
                                                            ?.reset();
                                                        _model
                                                            .catDropDownValueController
                                                            ?.reset();
                                                      });
                                                      safeSetState(() {
                                                        _model.recipientEMPIDTextFieldTextController
                                                                ?.text =
                                                            widget!.empId!;

                                                        _model.recipientNameTextFieldTextController
                                                                ?.text =
                                                            widget!.empName!;

                                                        _model
                                                            .recipientMovileNoTextFieldTextController
                                                            ?.clear();
                                                        _model.recEmailIDTextFieldTextController
                                                                ?.text =
                                                            widget!.emaiId!;

                                                        _model.recipientGradeTextFieldTextController
                                                                ?.text =
                                                            widget!.smsaGrade!;

                                                        _model.cCEmployerIDTextFieldTextController
                                                                ?.text =
                                                            widget!.ccEmpId!;

                                                        _model.cCMailIDTextFieldTextController
                                                                ?.text =
                                                            widget!.ccMailId!;

                                                        _model.senderBICTextFieldTextController
                                                                ?.text =
                                                            widget!.senderBIC!;
                                                      });
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Alert'),
                                                            content: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                              (_model.recipientReject
                                                                      ?.exceptionMessage ??
                                                                  ''),
                                                              'Something Went Wrong.',
                                                            )),
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

                                                    safeSetState(() {});
                                                  },
                                                  text: 'Reject',
                                                  options: FFButtonOptions(
                                                    width: 100.0,
                                                    height: 30.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: Color(0xFFE3530F),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: Colors.white,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 0.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 10.0)),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ].divide(SizedBox(height: 10.0)),
                            ),
                          ),
                        ),
                        if ((_model.recipientMasterData.length > 0) &&
                            responsiveVisibility(
                              context: context,
                              desktop: false,
                            ))
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.95,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.5,
                                  decoration: BoxDecoration(),
                                  child: Builder(
                                    builder: (context) {
                                      final recipientMsterdata =
                                          _model.recipientMasterData.toList();

                                      return FlutterFlowDataTable<
                                          RecipientMasterDataModelStruct>(
                                        controller: _model.dataTableeController,
                                        data: recipientMsterdata,
                                        columnsBuilder: (onSortChanged) => [
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'Employee Id',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color: Colors.white,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            fixedWidth: 100.0,
                                            onSort: onSortChanged,
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Location',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Sender BIC',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'MT Types',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Employe Name',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Grade',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Created By',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Modified By',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Modified Date',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Verified By',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Verified Date',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Edit',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Delete',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                        dataRowBuilder: (recipientMsterdataItem,
                                                recipientMsterdataIndex,
                                                selected,
                                                onSelectChanged) =>
                                            DataRow(
                                          color: MaterialStateProperty.all(
                                            recipientMsterdataIndex % 2 == 0
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                          ),
                                          cells: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                recipientMsterdataItem.recEmpId,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                recipientMsterdataItem
                                                    .recGeoName,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                recipientMsterdataItem
                                                    .recSenderBic,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                recipientMsterdataItem
                                                    .recMsgType,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                recipientMsterdataItem
                                                    .recEmpName,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                recipientMsterdataItem.recGrade,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                recipientMsterdataItem
                                                    .recCreatedBy,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                recipientMsterdataItem
                                                    .recModifiedBy,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              recipientMsterdataItem
                                                  .recModifiedDate,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                recipientMsterdataItem
                                                    .recVerifiedBy,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                recipientMsterdataItem
                                                    .recVerifiedDate,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mulish',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await Future.wait([
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.locationDropDownValueController
                                                                ?.value =
                                                            recipientMsterdataItem
                                                                .recGeoName;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.senderBICTextFieldTextController
                                                                ?.text =
                                                            recipientMsterdataItem
                                                                .recSenderBic;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.mTCodeDropDownnValueController
                                                                ?.value =
                                                            recipientMsterdataItem
                                                                .recMsgType;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.recipientEMPIDTextFieldTextController
                                                                ?.text =
                                                            recipientMsterdataItem
                                                                .recEmpId;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.recipientNameTextFieldTextController
                                                                ?.text =
                                                            recipientMsterdataItem
                                                                .recEmpName;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.recEmailIDTextFieldTextController
                                                                ?.text =
                                                            recipientMsterdataItem
                                                                .recEmailId;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.recipientGradeTextFieldTextController
                                                                ?.text =
                                                            recipientMsterdataItem
                                                                .recGrade;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.catDropDownValueController
                                                                ?.value =
                                                            recipientMsterdataItem
                                                                .recCategory;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.cCEmployerIDTextFieldTextController
                                                                ?.text =
                                                            recipientMsterdataItem
                                                                .recCCEmpId;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.cCMailIDTextFieldTextController
                                                                ?.text =
                                                            recipientMsterdataItem
                                                                .recCCMailId;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      _model.editValue = true;
                                                      _model.deleteValue =
                                                          false;
                                                      safeSetState(() {});
                                                    }),
                                                    Future(() async {
                                                      _model.recipientID =
                                                          recipientMsterdataItem
                                                              .smsaRamId;
                                                      _model.createdBy =
                                                          recipientMsterdataItem
                                                              .recCreatedBy;
                                                      _model.createdDate =
                                                          recipientMsterdataItem
                                                              .recCreatedDate;
                                                      safeSetState(() {});
                                                    }),
                                                  ]);
                                                },
                                                child: Text(
                                                  'Edit',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await Future.wait([
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.locationDropDownValueController
                                                                ?.value =
                                                            recipientMsterdataItem
                                                                .recGeoName;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.senderBICTextFieldTextController
                                                                ?.text =
                                                            recipientMsterdataItem
                                                                .recSenderBic;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.mTCodeDropDownnValueController
                                                                ?.value =
                                                            recipientMsterdataItem
                                                                .recMsgType;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.recipientEMPIDTextFieldTextController
                                                                ?.text =
                                                            recipientMsterdataItem
                                                                .recEmpId;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.recipientNameTextFieldTextController
                                                                ?.text =
                                                            recipientMsterdataItem
                                                                .recEmpName;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model
                                                            .recEmailIDTextFieldTextController
                                                            ?.text = '';
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.recipientGradeTextFieldTextController
                                                                ?.text =
                                                            recipientMsterdataItem
                                                                .recGrade;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.catDropDownValueController
                                                                ?.value =
                                                            recipientMsterdataItem
                                                                .recCategory;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.cCEmployerIDTextFieldTextController
                                                                ?.text =
                                                            recipientMsterdataItem
                                                                .recEmpId;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model.cCMailIDTextFieldTextController
                                                                ?.text =
                                                            recipientMsterdataItem
                                                                .recCCMailId;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      _model.editValue = false;
                                                      _model.deleteValue = true;
                                                      safeSetState(() {});
                                                    }),
                                                    Future(() async {
                                                      _model.recipientID =
                                                          recipientMsterdataItem
                                                              .smsaRamId;
                                                      safeSetState(() {});
                                                    }),
                                                  ]);
                                                },
                                                child: Text(
                                                  'Delete',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mulish',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ].map((c) => DataCell(c)).toList(),
                                        ),
                                        paginated: true,
                                        selectable: false,
                                        hidePaginator: false,
                                        showFirstLastButtons: false,
                                        headingRowHeight: 56.0,
                                        dataRowHeight: 48.0,
                                        columnSpacing: 20.0,
                                        headingRowColor: Color(0xFFE3530F),
                                        sortIconColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        addHorizontalDivider: true,
                                        addTopAndBottomDivider: true,
                                        hideDefaultHorizontalDivider: true,
                                        horizontalDividerColor: Colors.white,
                                        horizontalDividerThickness: 1.0,
                                        addVerticalDivider: true,
                                        verticalDividerColor: Colors.white,
                                        verticalDividerThickness: 1.0,
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Builder(
                                    builder: (context) {
                                      if (!_model.xlsDownload!) {
                                        return FFButtonWidget(
                                          onPressed: () async {
                                            _model.xlsDownload = true;
                                            safeSetState(() {});
                                            await actions.downloadRecipientData(
                                              'RMXLS',
                                              FFDevEnvironmentValues()
                                                  .apiBaseURL,
                                            );
                                            _model.xlsDownload = false;
                                            safeSetState(() {});
                                            if (FFAppState().downloadSuccess) {
                                              return;
                                            }

                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text('Alert'),
                                                  content: Text(
                                                      'Something went wrong. Please try again.'),
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
                                          },
                                          text: 'Download as XLS',
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFFE3530F),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Mulish',
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        );
                                      } else {
                                        return FFButtonWidget(
                                          onPressed: () {
                                            print('Button pressed ...');
                                          },
                                          text: 'Downloading...',
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Mulish',
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if (!_model.csvDownload!) {
                                        return FFButtonWidget(
                                          onPressed: () async {
                                            _model.csvDownload = true;
                                            safeSetState(() {});
                                            await actions.downloadRecipientData(
                                              'RMCSV',
                                              FFDevEnvironmentValues()
                                                  .apiBaseURL,
                                            );
                                            _model.csvDownload = false;
                                            safeSetState(() {});
                                            if (FFAppState().downloadSuccess) {
                                              return;
                                            }

                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text('Alert'),
                                                  content: Text(
                                                      'Something went wrong. Please try again.'),
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
                                          },
                                          text: 'Download as CSV',
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFFE3530F),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Mulish',
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        );
                                      } else {
                                        return FFButtonWidget(
                                          onPressed: () {
                                            print('Button pressed ...');
                                          },
                                          text: 'Downloading...',
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Mulish',
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ].divide(SizedBox(width: 40.0)),
                              ),
                            ],
                          ),
                      ]
                          .divide(SizedBox(height: 40.0))
                          .addToStart(SizedBox(height: 30.0)),
                    ),
                    wrapWithModel(
                      model: _model.earthRightModel,
                      updateCallback: () => safeSetState(() {}),
                      child: EarthRightWidget(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
