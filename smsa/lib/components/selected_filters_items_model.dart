import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'selected_filters_items_widget.dart' show SelectedFiltersItemsWidget;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectedFiltersItemsModel
    extends FlutterFlowModel<SelectedFiltersItemsWidget> {
  ///  Local state fields for this component.

  List<String> itemsListt = [];
  void addToItemsListt(String item) => itemsListt.add(item);
  void removeFromItemsListt(String item) => itemsListt.remove(item);
  void removeAtIndexFromItemsListt(int index) => itemsListt.removeAt(index);
  void insertAtIndexInItemsListt(int index, String item) =>
      itemsListt.insert(index, item);
  void updateItemsListtAtIndex(int index, Function(String) updateFn) =>
      itemsListt[index] = updateFn(itemsListt[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
