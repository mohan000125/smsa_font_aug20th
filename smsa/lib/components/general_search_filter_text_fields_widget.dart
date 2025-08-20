import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'general_search_filter_text_fields_model.dart';
export 'general_search_filter_text_fields_model.dart';

class GeneralSearchFilterTextFieldsWidget extends StatefulWidget {
  const GeneralSearchFilterTextFieldsWidget({super.key});

  @override
  State<GeneralSearchFilterTextFieldsWidget> createState() =>
      _GeneralSearchFilterTextFieldsWidgetState();
}

class _GeneralSearchFilterTextFieldsWidgetState
    extends State<GeneralSearchFilterTextFieldsWidget> {
  late GeneralSearchFilterTextFieldsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GeneralSearchFilterTextFieldsModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6.0),
      child: Container(
        height: 35.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).tertiaryBG,
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            color: Colors.transparent,
          ),
        ),
        child: TextFormField(
          controller: _model.textController,
          focusNode: _model.textFieldFocusNode,
          onChanged: (_) => EasyDebounce.debounce(
            '_model.textController',
            Duration(milliseconds: 2000),
            () => safeSetState(() {}),
          ),
          autofocus: false,
          obscureText: false,
          decoration: InputDecoration(
            isDense: true,
            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Mulish',
                  color: FlutterFlowTheme.of(context).secondaryText,
                  letterSpacing: 0.0,
                ),
            hintText: 'Search time',
            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Mulish',
                  color: FlutterFlowTheme.of(context).secondaryText,
                  fontSize: 10.0,
                  letterSpacing: 0.0,
                ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1.0,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1.0,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1.0,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1.0,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
            suffixIcon: _model.textController!.text.isNotEmpty
                ? InkWell(
                    onTap: () async {
                      _model.textController?.clear();
                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.clear,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 12.0,
                    ),
                  )
                : null,
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Mulish',
                color: FlutterFlowTheme.of(context).secondaryText,
                fontSize: 10.0,
                letterSpacing: 0.0,
              ),
          maxLines: null,
          cursorColor: FlutterFlowTheme.of(context).primaryText,
          validator: _model.textControllerValidator.asValidator(context),
        ),
      ),
    );
  }
}
