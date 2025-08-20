import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/drawer_widget.dart';
import '/components/dropdown_component_widget.dart';
import '/components/earth_left_widget.dart';
import '/components/earth_right_widget.dart';
import '/components/header_widget.dart';
import '/components/page_title_widget.dart';
import '/components/text_field_compoennt_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'add_edit_recipient_new_model.dart';
export 'add_edit_recipient_new_model.dart';

class AddEditRecipientNewWidget extends StatefulWidget {
  const AddEditRecipientNewWidget({
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
  }) : this.changeText = changeText ?? false;

  final String? empId;
  final String? ramId;
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

  static String routeName = 'AddEdit-Recipient_New';
  static String routePath = '/addEditRecipientNew';

  @override
  State<AddEditRecipientNewWidget> createState() =>
      _AddEditRecipientNewWidgetState();
}

class _AddEditRecipientNewWidgetState extends State<AddEditRecipientNewWidget> {
  late AddEditRecipientNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddEditRecipientNewModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.recipientMasterDataRes =
          await RecipientApisGroup.fetchRecepientMasterDataCall.call();

      if ((_model.recipientMasterDataRes?.succeeded ?? true)) {
        _model.recipientMasterData = (getJsonField(
          (_model.recipientMasterDataRes?.jsonBody ?? ''),
          r'''$''',
          true,
        )!
                .toList()
                .map<RecipientMasterDataModelStruct?>(
                    RecipientMasterDataModelStruct.maybeFromMap)
                .toList() as Iterable<RecipientMasterDataModelStruct?>)
            .withoutNulls
            .toList()
            .cast<RecipientMasterDataModelStruct>();
        safeSetState(() {});
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Alert'),
              content: Text(valueOrDefault<String>(
                (_model.recipientMasterDataRes?.exceptionMessage ?? ''),
                'Something went wrong in fetchMasterdata api.',
              )),
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
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          wrapWithModel(
                            model: _model.pageTitleModel,
                            updateCallback: () => safeSetState(() {}),
                            child: PageTitleWidget(),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.6,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: wrapWithModel(
                                        model: _model.dropdownComponentModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: DropdownComponentWidget(
                                          title: 'Locationn',
                                          initial: 'Enter Location',
                                          options: _model.loactionOptions,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: wrapWithModel(
                                        model: _model.textFieldCompoenntModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextFieldCompoenntWidget(
                                          title: 'Sender BIC',
                                          hintText: 'Enter Sender BIC',
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: wrapWithModel(
                                        model:
                                            _model.mtTypeDropdownComponentModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: DropdownComponentWidget(
                                          title: 'MT Type',
                                          initial: 'Entetr MT Type',
                                          options: _model.mtTypeOptions,
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
                                        model: _model.textFieldCompoenntModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextFieldCompoenntWidget(
                                          title: 'Recipient Employee ID',
                                          hintText: 'Enter Employee ID',
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: wrapWithModel(
                                        model: _model.textFieldCompoenntModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextFieldCompoenntWidget(
                                          title: 'Recipient Employee Name',
                                          hintText: 'Enter Employee Name',
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: wrapWithModel(
                                        model: _model.textFieldCompoenntModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextFieldCompoenntWidget(
                                          title: 'Recipient Mail ID',
                                          hintText: 'Enter Mail ID',
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
                                        model: _model.textFieldCompoenntModel5,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextFieldCompoenntWidget(
                                          title: 'Recipient Mobile Number',
                                          hintText: 'Enter Employee Number',
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: wrapWithModel(
                                        model: _model.textFieldCompoenntModel6,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextFieldCompoenntWidget(
                                          title: 'Recipient Grade',
                                          hintText: 'Enter Recipient Grade',
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: wrapWithModel(
                                        model: _model.dropdownComponentModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: DropdownComponentWidget(
                                          title: 'Category',
                                          initial: 'Enter Category',
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
                                        model: _model.textFieldCompoenntModel7,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextFieldCompoenntWidget(
                                          title: 'CC Employee ID',
                                          hintText: 'Enter CC Employee ID',
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: wrapWithModel(
                                        model: _model.textFieldCompoenntModel8,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextFieldCompoenntWidget(
                                          title: 'CC Mail ID',
                                          hintText: 'Enter CC Mail ID',
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 20.0)),
                                ),
                              ].divide(SizedBox(height: 20.0)),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Add Recipient',
                            options: FFButtonOptions(
                              width: 152.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).buttonColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Mulish',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ].divide(SizedBox(height: 40.0)),
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
