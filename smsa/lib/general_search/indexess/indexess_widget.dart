import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'indexess_model.dart';
export 'indexess_model.dart';

class IndexessWidget extends StatefulWidget {
  const IndexessWidget({super.key});

  @override
  State<IndexessWidget> createState() => _IndexessWidgetState();
}

class _IndexessWidgetState extends State<IndexessWidget> {
  late IndexessModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndexessModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            await _model.pageIndex?.animateTo(
              0,
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
          child: Icon(
            Icons.skip_previous_sharp,
            color: Color(0xFFF26430),
            size: 24.0,
          ),
        ),
        Builder(
          builder: (context) {
            final generateIndexes = FFAppState().Indexes.toList();

            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: _model.pageIndex,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: List.generate(generateIndexes.length,
                    (generateIndexesIndex) {
                  final generateIndexesItem =
                      generateIndexes[generateIndexesIndex];
                  return Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: generateIndexesIndex == FFAppState().pageIndex
                          ? FlutterFlowTheme.of(context).accent1
                          : FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(5.0),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Color(0xFFF26430),
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          generateIndexesItem.toString(),
                          '111',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Mulish',
                              color: Color(0xFFF26430),
                              fontSize: 11.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  );
                }).divide(SizedBox(width: 10.0)),
              ),
            );
          },
        ),
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            await _model.pageIndex?.animateTo(
              _model.pageIndex!.position.maxScrollExtent,
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
          child: Icon(
            Icons.skip_next_sharp,
            color: Color(0xFFF26430),
            size: 24.0,
          ),
        ),
      ].divide(SizedBox(width: 10.0)),
    );
  }
}
