import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'selected_filters_items_model.dart';
export 'selected_filters_items_model.dart';

class SelectedFiltersItemsWidget extends StatefulWidget {
  const SelectedFiltersItemsWidget({
    super.key,
    this.passedData,
  });

  final List<String>? passedData;

  @override
  State<SelectedFiltersItemsWidget> createState() =>
      _SelectedFiltersItemsWidgetState();
}

class _SelectedFiltersItemsWidgetState
    extends State<SelectedFiltersItemsWidget> {
  late SelectedFiltersItemsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectedFiltersItemsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final filterSelected = widget!.passedData?.toList() ?? [];

        return Row(
          mainAxisSize: MainAxisSize.max,
          children: List.generate(filterSelected.length, (filterSelectedIndex) {
            final filterSelectedItem = filterSelected[filterSelectedIndex];
            return Material(
              color: Colors.transparent,
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                width: 100.0,
                height: 35.0,
                decoration: BoxDecoration(
                  color: Color(0xFFE3530F),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color(0xFFE3530F),
                    width: 0.0,
                  ),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    filterSelectedItem,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Mulish',
                          color: Colors.white,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ),
            );
          }).divide(SizedBox(width: 15.0)),
        );
      },
    );
  }
}
