import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/country_rows_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'top_countries_model.dart';
export 'top_countries_model.dart';

class TopCountriesWidget extends StatefulWidget {
  const TopCountriesWidget({super.key});

  @override
  State<TopCountriesWidget> createState() => _TopCountriesWidgetState();
}

class _TopCountriesWidgetState extends State<TopCountriesWidget> {
  late TopCountriesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopCountriesModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.bicCodeSent = await DashBoardandSearchGroup.bicCodeSentCall.call();

      if ((_model.bicCodeSent?.succeeded ?? true)) {
        _model.sendCodes = (getJsonField(
          (_model.bicCodeSent?.jsonBody ?? ''),
          r'''$''',
          true,
        )!
                .toList()
                .map<BicCodesStruct?>(BicCodesStruct.maybeFromMap)
                .toList() as Iterable<BicCodesStruct?>)
            .withoutNulls
            .toList()
            .cast<BicCodesStruct>();
        safeSetState(() {});
      }
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(11.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).borderColor,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top Countries by Volume',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Mulish',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 12.5,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                wrapWithModel(
                  model: _model.countryRowsModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: CountryRowsWidget(
                    countryName: 'India',
                    count: '₹ 52325.00',
                  ),
                ),
                wrapWithModel(
                  model: _model.countryRowsModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: CountryRowsWidget(
                    countryName: 'Canada',
                    count: '₹ 24515.00',
                  ),
                ),
                wrapWithModel(
                  model: _model.countryRowsModel3,
                  updateCallback: () => safeSetState(() {}),
                  child: CountryRowsWidget(
                    countryName: 'Bahrain',
                    count: '₹ 943.00',
                  ),
                ),
                wrapWithModel(
                  model: _model.countryRowsModel4,
                  updateCallback: () => safeSetState(() {}),
                  child: CountryRowsWidget(
                    countryName: 'Russia',
                    count: '₹ 25253.00',
                  ),
                ),
                wrapWithModel(
                  model: _model.countryRowsModel5,
                  updateCallback: () => safeSetState(() {}),
                  child: CountryRowsWidget(),
                ),
              ].divide(SizedBox(height: 10.0)),
            ),
          ],
        ),
      ),
    );
  }
}
