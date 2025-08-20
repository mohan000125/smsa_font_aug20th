import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'sidebar_texts_click_model.dart';
export 'sidebar_texts_click_model.dart';

class SidebarTextsClickWidget extends StatefulWidget {
  const SidebarTextsClickWidget({
    super.key,
    this.text,
  });

  final String? text;

  @override
  State<SidebarTextsClickWidget> createState() =>
      _SidebarTextsClickWidgetState();
}

class _SidebarTextsClickWidgetState extends State<SidebarTextsClickWidget> {
  late SidebarTextsClickModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SidebarTextsClickModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 4.0,
            height: 4.0,
            decoration: BoxDecoration(
              color: _model.mouseRegionHovered!
                  ? FlutterFlowTheme.of(context).secondaryText
                  : FlutterFlowTheme.of(context).borderColorFaider,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: _model.mouseRegionHovered!
                  ? FlutterFlowTheme.of(context).secondaryBackground
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(7.0, 5.0, 7.0, 5.0),
              child: Text(
                valueOrDefault<String>(
                  widget!.text,
                  'Add Master',
                ),
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Mulish',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 10.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ),
          ),
        ].divide(SizedBox(width: 10.0)),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
