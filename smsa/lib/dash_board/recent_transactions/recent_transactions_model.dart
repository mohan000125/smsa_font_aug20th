import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'recent_transactions_widget.dart' show RecentTransactionsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class RecentTransactionsModel
    extends FlutterFlowModel<RecentTransactionsWidget> {
  ///  Local state fields for this component.

  List<RecentTransactionsStruct> recentTransactions = [];
  void addToRecentTransactions(RecentTransactionsStruct item) =>
      recentTransactions.add(item);
  void removeFromRecentTransactions(RecentTransactionsStruct item) =>
      recentTransactions.remove(item);
  void removeAtIndexFromRecentTransactions(int index) =>
      recentTransactions.removeAt(index);
  void insertAtIndexInRecentTransactions(
          int index, RecentTransactionsStruct item) =>
      recentTransactions.insert(index, item);
  void updateRecentTransactionsAtIndex(
          int index, Function(RecentTransactionsStruct) updateFn) =>
      recentTransactions[index] = updateFn(recentTransactions[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (RecentTransactions)] action in RecentTransactions widget.
  ApiCallResponse? recentTrans;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<RecentTransactionsStruct>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
