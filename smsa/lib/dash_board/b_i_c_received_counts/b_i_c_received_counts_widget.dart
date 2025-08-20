import '/backend/schema/structs/index.dart';
import '/components/b_i_c_rows_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'b_i_c_received_counts_model.dart';
export 'b_i_c_received_counts_model.dart';

class BICReceivedCountsWidget extends StatefulWidget {
  const BICReceivedCountsWidget({
    super.key,
    this.counts,
  });

  final List<BicCodesStruct>? counts;

  @override
  State<BICReceivedCountsWidget> createState() =>
      _BICReceivedCountsWidgetState();
}

class _BICReceivedCountsWidgetState extends State<BICReceivedCountsWidget> {
  late BICReceivedCountsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BICReceivedCountsModel());
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
              'Top 5 BICs - Received Count',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Mulish',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 12.5,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Builder(
              builder: (context) {
                final received = widget!.counts?.toList() ?? [];

                return ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: received.length,
                  separatorBuilder: (_, __) => SizedBox(height: 10.0),
                  itemBuilder: (context, receivedIndex) {
                    final receivedItem = received[receivedIndex];
                    return wrapWithModel(
                      model: _model.bICRowsModels.getModel(
                        _model.rec,
                        receivedIndex,
                      ),
                      updateCallback: () => safeSetState(() {}),
                      child: BICRowsWidget(
                        key: Key(
                          'Keya47_${_model.rec}',
                        ),
                        countryBIC: receivedItem.bicData,
                        count: receivedItem.count.toString(),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
