import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'b_i_c_rows_model.dart';
export 'b_i_c_rows_model.dart';

class BICRowsWidget extends StatefulWidget {
  const BICRowsWidget({
    super.key,
    this.countryBIC,
    this.count,
  });

  final String? countryBIC;
  final String? count;

  @override
  State<BICRowsWidget> createState() => _BICRowsWidgetState();
}

class _BICRowsWidgetState extends State<BICRowsWidget> {
  late BICRowsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BICRowsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              valueOrDefault<String>(
                widget!.countryBIC,
                'ICICAEA0XXX',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Mulish',
                    fontSize: 11.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ].divide(SizedBox(width: 8.0)),
        ),
        Text(
          valueOrDefault<String>(
            widget!.count,
            '50',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Mulish',
                fontSize: 10.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal,
              ),
        ),
      ],
    );
  }
}
