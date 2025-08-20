import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'data_loader_model.dart';
export 'data_loader_model.dart';

class DataLoaderWidget extends StatefulWidget {
  const DataLoaderWidget({super.key});

  @override
  State<DataLoaderWidget> createState() => _DataLoaderWidgetState();
}

class _DataLoaderWidgetState extends State<DataLoaderWidget> {
  late DataLoaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DataLoaderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 500.0,
          height: 100.0,
          child: Stack(
            alignment: AlignmentDirectional(0.0, 0.0),
            children: [
              Lottie.asset(
                'assets/jsons/Main_Scene.json',
                width: 500.0,
                height: 100.0,
                fit: BoxFit.contain,
                animate: true,
              ),
              Align(
                alignment: AlignmentDirectional(-0.04, -0.29),
                child: Container(
                  width: 63.0,
                  height: 63.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/Loading_Animation.gif',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40.0,
              height: 1.5,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryText,
                borderRadius: BorderRadius.circular(100.0),
              ),
            ),
            Text(
              ' Fetching Data. Please Wait ',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Mulish',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
            ),
            Container(
              width: 40.0,
              height: 1.5,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryText,
                borderRadius: BorderRadius.circular(100.0),
              ),
            ),
          ].divide(SizedBox(width: 8.0)),
        ),
      ].divide(SizedBox(height: 10.0)),
    );
  }
}
