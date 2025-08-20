import '/backend/api_requests/api_calls.dart';
import '/components/drawer_widget.dart';
import '/components/dropdown_component_widget.dart';
import '/components/earth_left_widget.dart';
import '/components/earth_right_widget.dart';
import '/components/header_widget.dart';
import '/components/text_field_compoennt_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_edit_client_model.dart';
export 'add_edit_client_model.dart';

class AddEditClientWidget extends StatefulWidget {
  const AddEditClientWidget({
    super.key,
    bool? changeText,
    bool? edited,
    bool? deleted,
    this.mtType,
    this.fieldname,
    this.fieldVlaue,
    this.trigger,
    this.accNo,
    this.custID,
    this.nameIdentifier,
    this.mailID,
    this.requestID,
    this.createdBy,
  })  : this.changeText = changeText ?? false,
        this.edited = edited ?? false,
        this.deleted = deleted ?? false;

  final bool changeText;
  final bool edited;
  final bool deleted;
  final String? mtType;
  final String? fieldname;
  final String? fieldVlaue;
  final String? trigger;
  final String? accNo;
  final String? custID;
  final String? nameIdentifier;
  final String? mailID;
  final String? requestID;
  final String? createdBy;

  static String routeName = 'AddEdit-Client';
  static String routePath = '/addEditClient';

  @override
  State<AddEditClientWidget> createState() => _AddEditClientWidgetState();
}

class _AddEditClientWidgetState extends State<AddEditClientWidget> {
  late AddEditClientModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddEditClientModel());
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
              Expanded(
                child: Container(
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
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.6,
                        decoration: BoxDecoration(),
                        child: Column(
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
                                        : 'Add/Edit  Clients',
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
                              width: MediaQuery.sizeOf(context).width * 0.7,
                              decoration: BoxDecoration(),
                              child: Form(
                                key: _model.formKey,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: wrapWithModel(
                                                model: _model.msgTypModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextFieldCompoenntWidget(
                                                  title: 'Message Type',
                                                  hintText: widget!.mtType,
                                                  length: 4,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: wrapWithModel(
                                                model: _model.fieldNameModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextFieldCompoenntWidget(
                                                  title:
                                                      'Field Name (end with : )',
                                                  hintText: widget!.fieldname,
                                                  length: 4,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: wrapWithModel(
                                                model: _model.fieldValueModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextFieldCompoenntWidget(
                                                  title: 'Field Value',
                                                  hintText: widget!.fieldVlaue,
                                                  length: 11,
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 20.0)),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: wrapWithModel(
                                                model: _model.triggerModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: DropdownComponentWidget(
                                                  title: 'Trigger For',
                                                  initial: widget!.trigger,
                                                  options: _model.trigger,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: wrapWithModel(
                                                model: _model.acNoModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextFieldCompoenntWidget(
                                                  title:
                                                      'Customer Account Number',
                                                  hintText: widget!.accNo,
                                                  length: 15,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: wrapWithModel(
                                                model: _model.cusIDModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextFieldCompoenntWidget(
                                                  title: 'Customer ID',
                                                  hintText: widget!.custID,
                                                  length: 15,
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 20.0)),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: wrapWithModel(
                                                model: _model.nameIdentifiModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextFieldCompoenntWidget(
                                                  title: 'Name Identifiers',
                                                  hintText:
                                                      widget!.nameIdentifier,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: wrapWithModel(
                                                model: _model.mailIDModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextFieldCompoenntWidget(
                                                  title: 'Customer Mail ID',
                                                  hintText: widget!.mailID,
                                                  length: 20,
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 20.0)),
                                        ),
                                      ].divide(SizedBox(height: 20.0)),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (widget!.changeText == false)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 10.0),
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                _model.updateClient =
                                                                    await ClientMasterGroup
                                                                        .updateAndDeleteCall
                                                                        .call(
                                                                  messageType: _model
                                                                      .msgTypModel
                                                                      .textController
                                                                      .text,
                                                                  fieldName: _model
                                                                      .fieldNameModel
                                                                      .textController
                                                                      .text,
                                                                  fieldValue: _model
                                                                      .fieldValueModel
                                                                      .textController
                                                                      .text,
                                                                  nameIdentifiers: _model
                                                                      .nameIdentifiModel
                                                                      .textController
                                                                      .text,
                                                                  customerId: _model
                                                                      .cusIDModel
                                                                      .textController
                                                                      .text,
                                                                  customerMailId: _model
                                                                      .mailIDModel
                                                                      .textController
                                                                      .text,
                                                                  customerAccountNo: _model
                                                                      .acNoModel
                                                                      .textController
                                                                      .text,
                                                                  triggerFor: _model
                                                                      .triggerModel
                                                                      .dropDownValue,
                                                                  createdBy: widget!
                                                                      .createdBy,
                                                                  status:
                                                                      'UPDATE ',
                                                                  updatedBy:
                                                                      FFAppState()
                                                                          .userID,
                                                                  clientMasterMstId:
                                                                      widget!
                                                                          .requestID,
                                                                );

                                                                if ((_model
                                                                        .updateClient
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            '!'),
                                                                        content:
                                                                            Text('Updated Data'),
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
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                            .msgTypModel
                                                                            .textController
                                                                            ?.text =
                                                                        _model
                                                                            .msgTypModel
                                                                            .widget!
                                                                            .initialValue!;

                                                                    _model
                                                                            .fieldValueModel
                                                                            .textController
                                                                            ?.text =
                                                                        _model
                                                                            .fieldValueModel
                                                                            .widget!
                                                                            .initialValue!;

                                                                    _model
                                                                            .acNoModel
                                                                            .textController
                                                                            ?.text =
                                                                        _model
                                                                            .acNoModel
                                                                            .widget!
                                                                            .initialValue!;

                                                                    _model
                                                                            .cusIDModel
                                                                            .textController
                                                                            ?.text =
                                                                        _model
                                                                            .cusIDModel
                                                                            .widget!
                                                                            .initialValue!;

                                                                    _model
                                                                            .mailIDModel
                                                                            .textController
                                                                            ?.text =
                                                                        _model
                                                                            .mailIDModel
                                                                            .widget!
                                                                            .initialValue!;

                                                                    _model
                                                                            .nameIdentifiModel
                                                                            .textController
                                                                            ?.text =
                                                                        _model
                                                                            .nameIdentifiModel
                                                                            .widget!
                                                                            .initialValue!;

                                                                    _model
                                                                            .fieldNameModel
                                                                            .textController
                                                                            ?.text =
                                                                        _model
                                                                            .fieldNameModel
                                                                            .widget!
                                                                            .initialValue!;
                                                                  });
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                        .triggerModel
                                                                        .dropDownValueController
                                                                        ?.reset();
                                                                  });
                                                                } else {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            '!'),
                                                                        content:
                                                                            Text((_model.updateClient?.exceptionMessage ??
                                                                                '')),
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

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              text: 'Update',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 100.0,
                                                                height: 30.0,
                                                                padding: EdgeInsetsDirectional
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
                                                                textStyle: FlutterFlowTheme.of(
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
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                _model.delete =
                                                                    await ClientMasterGroup
                                                                        .updateAndDeleteCall
                                                                        .call(
                                                                  messageType: _model
                                                                      .msgTypModel
                                                                      .textController
                                                                      .text,
                                                                  fieldName: _model
                                                                      .fieldNameModel
                                                                      .textController
                                                                      .text,
                                                                  fieldValue: _model
                                                                      .fieldValueModel
                                                                      .textController
                                                                      .text,
                                                                  nameIdentifiers: _model
                                                                      .nameIdentifiModel
                                                                      .textController
                                                                      .text,
                                                                  customerId: _model
                                                                      .cusIDModel
                                                                      .textController
                                                                      .text,
                                                                  customerMailId: _model
                                                                      .mailIDModel
                                                                      .textController
                                                                      .text,
                                                                  customerAccountNo: _model
                                                                      .acNoModel
                                                                      .textController
                                                                      .text,
                                                                  triggerFor: _model
                                                                      .triggerModel
                                                                      .dropDownValue,
                                                                  createdBy: widget!
                                                                      .createdBy,
                                                                  status:
                                                                      'DELETE',
                                                                  updatedBy:
                                                                      FFAppState()
                                                                          .userID,
                                                                  clientMasterMstId:
                                                                      widget!
                                                                          .requestID,
                                                                );

                                                                if ((_model
                                                                        .delete
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            '!'),
                                                                        content:
                                                                            Text('Deleted'),
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
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                            .msgTypModel
                                                                            .textController
                                                                            ?.text =
                                                                        _model
                                                                            .msgTypModel
                                                                            .widget!
                                                                            .initialValue!;

                                                                    _model
                                                                            .fieldValueModel
                                                                            .textController
                                                                            ?.text =
                                                                        _model
                                                                            .fieldValueModel
                                                                            .widget!
                                                                            .initialValue!;

                                                                    _model
                                                                            .acNoModel
                                                                            .textController
                                                                            ?.text =
                                                                        _model
                                                                            .acNoModel
                                                                            .widget!
                                                                            .initialValue!;

                                                                    _model
                                                                            .cusIDModel
                                                                            .textController
                                                                            ?.text =
                                                                        _model
                                                                            .cusIDModel
                                                                            .widget!
                                                                            .initialValue!;

                                                                    _model
                                                                            .mailIDModel
                                                                            .textController
                                                                            ?.text =
                                                                        _model
                                                                            .mailIDModel
                                                                            .widget!
                                                                            .initialValue!;

                                                                    _model
                                                                            .nameIdentifiModel
                                                                            .textController
                                                                            ?.text =
                                                                        _model
                                                                            .nameIdentifiModel
                                                                            .widget!
                                                                            .initialValue!;

                                                                    _model
                                                                            .fieldNameModel
                                                                            .textController
                                                                            ?.text =
                                                                        _model
                                                                            .fieldNameModel
                                                                            .widget!
                                                                            .initialValue!;
                                                                  });
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                        .triggerModel
                                                                        .dropDownValueController
                                                                        ?.reset();
                                                                  });
                                                                } else {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            '!'),
                                                                        content:
                                                                            Text((_model.delete?.exceptionMessage ??
                                                                                '')),
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

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              text: 'Delete',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 100.0,
                                                                height: 30.0,
                                                                padding: EdgeInsetsDirectional
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
                                                                textStyle: FlutterFlowTheme.of(
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
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                _model.isClientMasterFormValidated =
                                                                    true;
                                                                if (_model.formKey
                                                                            .currentState ==
                                                                        null ||
                                                                    !_model
                                                                        .formKey
                                                                        .currentState!
                                                                        .validate()) {
                                                                  safeSetState(() =>
                                                                      _model.isClientMasterFormValidated =
                                                                          false);
                                                                  return;
                                                                }
                                                                if (_model
                                                                    .isClientMasterFormValidated!) {
                                                                  _model.addClient =
                                                                      await ClientMasterGroup
                                                                          .addClientCall
                                                                          .call(
                                                                    messageType: _model
                                                                        .msgTypModel
                                                                        .textController
                                                                        .text,
                                                                    fieldName: _model
                                                                        .msgTypModel
                                                                        .textController
                                                                        .text,
                                                                    fieldValue: _model
                                                                        .fieldValueModel
                                                                        .textController
                                                                        .text,
                                                                    nameIdentifiers: _model
                                                                        .nameIdentifiModel
                                                                        .textController
                                                                        .text,
                                                                    customerId: _model
                                                                        .cusIDModel
                                                                        .textController
                                                                        .text,
                                                                    customerMailId: _model
                                                                        .mailIDModel
                                                                        .textController
                                                                        .text,
                                                                    customerAccountNo: _model
                                                                        .acNoModel
                                                                        .textController
                                                                        .text,
                                                                    triggerFor: _model
                                                                        .triggerModel
                                                                        .dropDownValue,
                                                                    createdBy:
                                                                        FFAppState()
                                                                            .userID,
                                                                    status:
                                                                        'INSERT',
                                                                  );

                                                                  if ((_model
                                                                          .addClient
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Alert'),
                                                                          content:
                                                                              Text('Client Added Successfully 👍'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    );
                                                                    safeSetState(
                                                                        () {
                                                                      _model.fieldValueModel.textController?.text = _model
                                                                          .fieldValueModel
                                                                          .widget!
                                                                          .initialValue!;

                                                                      _model.acNoModel.textController?.text = _model
                                                                          .acNoModel
                                                                          .widget!
                                                                          .initialValue!;

                                                                      _model.cusIDModel.textController?.text = _model
                                                                          .cusIDModel
                                                                          .widget!
                                                                          .initialValue!;

                                                                      _model.mailIDModel.textController?.text = _model
                                                                          .mailIDModel
                                                                          .widget!
                                                                          .initialValue!;

                                                                      _model.nameIdentifiModel.textController?.text = _model
                                                                          .nameIdentifiModel
                                                                          .widget!
                                                                          .initialValue!;

                                                                      _model.fieldNameModel.textController?.text = _model
                                                                          .fieldNameModel
                                                                          .widget!
                                                                          .initialValue!;

                                                                      _model.msgTypModel.textController?.text = _model
                                                                          .msgTypModel
                                                                          .widget!
                                                                          .initialValue!;
                                                                    });
                                                                    safeSetState(
                                                                        () {
                                                                      _model
                                                                          .triggerModel
                                                                          .dropDownValueController
                                                                          ?.reset();
                                                                    });
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Alert '),
                                                                          content:
                                                                              Text((_model.addClient?.exceptionMessage ?? '')),
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
                                                                }

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              text: 'Add',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 150.0,
                                                                height: 40.0,
                                                                padding: EdgeInsetsDirectional
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
                                                                textStyle: FlutterFlowTheme.of(
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
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          safeSetState(() {
                                                            _model
                                                                    .msgTypModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .msgTypModel
                                                                    .widget!
                                                                    .initialValue!;

                                                            _model
                                                                    .fieldValueModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .fieldValueModel
                                                                    .widget!
                                                                    .initialValue!;

                                                            _model
                                                                    .acNoModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .acNoModel
                                                                    .widget!
                                                                    .initialValue!;

                                                            _model
                                                                    .cusIDModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .cusIDModel
                                                                    .widget!
                                                                    .initialValue!;

                                                            _model
                                                                    .mailIDModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .mailIDModel
                                                                    .widget!
                                                                    .initialValue!;

                                                            _model
                                                                    .nameIdentifiModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .nameIdentifiModel
                                                                    .widget!
                                                                    .initialValue!;

                                                            _model
                                                                    .fieldNameModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .fieldNameModel
                                                                    .widget!
                                                                    .initialValue!;
                                                          });
                                                          safeSetState(() {
                                                            _model.triggerModel
                                                                .dropDownValueController
                                                                ?.reset();
                                                          });
                                                        },
                                                        text: 'Reset',
                                                        options:
                                                            FFButtonOptions(
                                                          width: 150.0,
                                                          height: 40.0,
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
                                                          color:
                                                              Color(0xFFE3530F),
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
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 20.0)),
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
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        _model.approved =
                                                            await ClientMasterGroup
                                                                .approveAndRejectCall
                                                                .call(
                                                          status: 'APPROVE',
                                                          requestId:
                                                              widget!.requestID,
                                                          approveBy:
                                                              FFAppState()
                                                                  .userID,
                                                        );

                                                        if ((_model.approved
                                                                ?.succeeded ??
                                                            true)) {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title:
                                                                    Text('!'),
                                                                content: Text(
                                                                    'Approved'),
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
                                                          safeSetState(() {
                                                            _model
                                                                    .msgTypModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .msgTypModel
                                                                    .widget!
                                                                    .initialValue!;

                                                            _model
                                                                    .fieldValueModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .fieldValueModel
                                                                    .widget!
                                                                    .initialValue!;

                                                            _model
                                                                    .acNoModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .acNoModel
                                                                    .widget!
                                                                    .initialValue!;

                                                            _model
                                                                    .cusIDModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .cusIDModel
                                                                    .widget!
                                                                    .initialValue!;

                                                            _model
                                                                    .mailIDModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .mailIDModel
                                                                    .widget!
                                                                    .initialValue!;

                                                            _model
                                                                    .nameIdentifiModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .nameIdentifiModel
                                                                    .widget!
                                                                    .initialValue!;

                                                            _model
                                                                    .fieldNameModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .fieldNameModel
                                                                    .widget!
                                                                    .initialValue!;
                                                          });
                                                          safeSetState(() {
                                                            _model.triggerModel
                                                                .dropDownValueController
                                                                ?.reset();
                                                          });
                                                        } else {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title:
                                                                    Text('!'),
                                                                content: Text((_model
                                                                        .approved
                                                                        ?.exceptionMessage ??
                                                                    '')),
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

                                                        safeSetState(() {});
                                                      },
                                                      text: 'Approved',
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
                                                        color:
                                                            Color(0xFFE3530F),
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
                                                                .circular(5.0),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        _model.rejected =
                                                            await ClientMasterGroup
                                                                .approveAndRejectCall
                                                                .call(
                                                          status: 'REJECT',
                                                          requestId:
                                                              widget!.requestID,
                                                          approveBy:
                                                              FFAppState()
                                                                  .userID,
                                                        );

                                                        if ((_model.rejected
                                                                ?.succeeded ??
                                                            true)) {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title:
                                                                    Text('!'),
                                                                content: Text(
                                                                    'Rejected'),
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
                                                          safeSetState(() {
                                                            _model
                                                                    .msgTypModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .msgTypModel
                                                                    .widget!
                                                                    .initialValue!;

                                                            _model
                                                                    .fieldValueModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .fieldValueModel
                                                                    .widget!
                                                                    .initialValue!;

                                                            _model
                                                                    .acNoModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .acNoModel
                                                                    .widget!
                                                                    .initialValue!;

                                                            _model
                                                                    .cusIDModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .cusIDModel
                                                                    .widget!
                                                                    .initialValue!;

                                                            _model
                                                                    .mailIDModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .mailIDModel
                                                                    .widget!
                                                                    .initialValue!;

                                                            _model
                                                                    .nameIdentifiModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .nameIdentifiModel
                                                                    .widget!
                                                                    .initialValue!;

                                                            _model
                                                                    .fieldNameModel
                                                                    .textController
                                                                    ?.text =
                                                                _model
                                                                    .fieldNameModel
                                                                    .widget!
                                                                    .initialValue!;
                                                          });
                                                          safeSetState(() {
                                                            _model.triggerModel
                                                                .dropDownValueController
                                                                ?.reset();
                                                          });
                                                        } else {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title:
                                                                    Text('!'),
                                                                content: Text((_model
                                                                        .rejected
                                                                        ?.exceptionMessage ??
                                                                    '')),
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

                                                        safeSetState(() {});
                                                      },
                                                      text: 'Reject',
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
                                                        color:
                                                            Color(0xFFE3530F),
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
                                                                .circular(5.0),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 10.0)),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]
                              .divide(SizedBox(height: 40.0))
                              .addToStart(SizedBox(height: 30.0)),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.earthRightModel,
                        updateCallback: () => safeSetState(() {}),
                        child: EarthRightWidget(),
                      ),
                    ],
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
