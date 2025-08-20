import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'top_swift_messages_tyoes_model.dart';
export 'top_swift_messages_tyoes_model.dart';

class TopSwiftMessagesTyoesWidget extends StatefulWidget {
  const TopSwiftMessagesTyoesWidget({
    super.key,
    this.typesList,
  });

  final dynamic typesList;

  @override
  State<TopSwiftMessagesTyoesWidget> createState() =>
      _TopSwiftMessagesTyoesWidgetState();
}

class _TopSwiftMessagesTyoesWidgetState
    extends State<TopSwiftMessagesTyoesWidget> {
  late TopSwiftMessagesTyoesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopSwiftMessagesTyoesModel());
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
      height: 190.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(11.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).borderColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top Swift Messages Type',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Mulish',
                    fontSize: 12.5,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Builder(
              builder: (context) {
                final msgTypesLists =
                    functions.getTopFiveEntries(widget!.typesList)?.toList() ??
                        [];

                return ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: msgTypesLists.length,
                  separatorBuilder: (_, __) => SizedBox(height: 5.0),
                  itemBuilder: (context, msgTypesListsIndex) {
                    final msgTypesListsItem = msgTypesLists[msgTypesListsIndex];
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 60.0,
                                decoration: BoxDecoration(),
                                child: Text(
                                  valueOrDefault<String>(
                                    getJsonField(
                                      msgTypesListsItem,
                                      r'''$.key''',
                                    )?.toString(),
                                    'FIN 143',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Mulish',
                                        fontSize: 11.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: LinearPercentIndicator(
                                    percent: valueOrDefault<double>(
                                      getJsonField(
                                        msgTypesListsItem,
                                        r'''$.progress''',
                                      ),
                                      0.3,
                                    ),
                                    lineHeight: 10.0,
                                    animation: true,
                                    animateFromLastPercent: true,
                                    progressColor: Color(0xFFDA4C25),
                                    backgroundColor: Colors.transparent,
                                    barRadius: Radius.circular(2.0),
                                    padding: EdgeInsets.zero,
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 10.0)),
                          ),
                        ),
                        Text(
                          getJsonField(
                            msgTypesListsItem,
                            r'''$.value''',
                          ).toString(),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Mulish',
                                    fontSize: 11.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ].divide(SizedBox(width: 10.0)),
                    );
                  },
                );
              },
            ),
          ].divide(SizedBox(height: 10.0)),
        ),
      ),
    );
  }
}
