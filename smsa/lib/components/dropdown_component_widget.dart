import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dropdown_component_model.dart';
export 'dropdown_component_model.dart';

class DropdownComponentWidget extends StatefulWidget {
  const DropdownComponentWidget({
    super.key,
    this.title,
    this.options,
    this.initial,
  });

  final String? title;
  final List<String>? options;
  final String? initial;

  @override
  State<DropdownComponentWidget> createState() =>
      _DropdownComponentWidgetState();
}

class _DropdownComponentWidgetState extends State<DropdownComponentWidget> {
  late DropdownComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropdownComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            valueOrDefault<String>(
              widget!.title,
              'Title',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Mulish',
                  fontSize: 12.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w300,
                ),
          ),
          FlutterFlowDropDown<String>(
            controller: _model.dropDownValueController ??=
                FormFieldController<String>(
              _model.dropDownValue ??= widget!.initial,
            ),
            options: widget!.options!,
            onChanged: (val) => safeSetState(() => _model.dropDownValue = val),
            height: 40.0,
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Mulish',
                  fontSize: 11.0,
                  letterSpacing: 0.0,
                ),
            hintText: 'Hint Text',
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: FlutterFlowTheme.of(context).borderColor,
              size: 22.0,
            ),
            fillColor: FlutterFlowTheme.of(context).fieldsBGColor,
            elevation: 2.0,
            borderColor: Colors.transparent,
            borderWidth: 0.0,
            borderRadius: 8.0,
            margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            hidesUnderline: true,
            isOverButton: false,
            isSearchable: false,
            isMultiSelect: false,
          ),
        ].divide(SizedBox(height: 12.0)),
      ),
    );
  }
}
