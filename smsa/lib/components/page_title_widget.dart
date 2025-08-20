import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'page_title_model.dart';
export 'page_title_model.dart';

class PageTitleWidget extends StatefulWidget {
  const PageTitleWidget({
    super.key,
    this.whiteText,
    this.orangeText,
  });

  final String? whiteText;
  final String? orangeText;

  @override
  State<PageTitleWidget> createState() => _PageTitleWidgetState();
}

class _PageTitleWidgetState extends State<PageTitleWidget> {
  late PageTitleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageTitleModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              valueOrDefault<String>(
                widget!.whiteText,
                'Add/Edit',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Mulish',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Text(
              valueOrDefault<String>(
                widget!.orangeText,
                'Recipient',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Mulish',
                    color: Color(0xFFF06321),
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ].divide(SizedBox(width: 5.0)),
        ),
        Container(
          width: 25.0,
          height: 3.0,
          decoration: BoxDecoration(
            color: Color(0xFFF06321),
          ),
        ),
      ].divide(SizedBox(height: 5.0)),
    );
  }
}
