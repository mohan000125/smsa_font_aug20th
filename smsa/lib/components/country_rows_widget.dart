import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'country_rows_model.dart';
export 'country_rows_model.dart';

class CountryRowsWidget extends StatefulWidget {
  const CountryRowsWidget({
    super.key,
    this.countryName,
    this.count,
  });

  final String? countryName;
  final String? count;

  @override
  State<CountryRowsWidget> createState() => _CountryRowsWidgetState();
}

class _CountryRowsWidgetState extends State<CountryRowsWidget> {
  late CountryRowsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CountryRowsModel());
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
            ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Image.asset(
                'assets/images/in.png',
                width: 18.0,
                height: 13.0,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              valueOrDefault<String>(
                widget!.countryName,
                'Country',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Mulish',
                    fontSize: 10.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ].divide(SizedBox(width: 8.0)),
        ),
        Text(
          valueOrDefault<String>(
            widget!.count,
            '₹ 00.00',
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
