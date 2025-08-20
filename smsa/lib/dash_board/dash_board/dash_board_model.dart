import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/background_i_mage_widget.dart';
import '/components/drawer_widget.dart';
import '/components/header_widget.dart';
import '/dash_board/b_i_c_received_counts/b_i_c_received_counts_widget.dart';
import '/dash_board/b_i_c_sent_counts/b_i_c_sent_counts_widget.dart';
import '/dash_board/payment_analysis/payment_analysis_widget.dart';
import '/dash_board/recent_transactions/recent_transactions_widget.dart';
import '/dash_board/top_swift_messages_tyoes/top_swift_messages_tyoes_widget.dart';
import '/dash_board/year_wise_volumen_trends/year_wise_volumen_trends_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'dash_board_widget.dart' show DashBoardWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class DashBoardModel extends FlutterFlowModel<DashBoardWidget> {
  ///  Local state fields for this page.

  bool ismsgCount = false;

  bool countriesTop5 = false;

  dynamic countriesGlobe;

  bool globeLoad = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (MessageCounts)] action in DashBoard widget.
  ApiCallResponse? msgCounts;
  // Stores action output result for [Backend Call - API (GlobeData)] action in DashBoard widget.
  ApiCallResponse? globeResult;
  // Stores action output result for [Backend Call - API (Bic Code Sent)] action in DashBoard widget.
  ApiCallResponse? bicCodesSent;
  // Stores action output result for [Backend Call - API (Bic Code Received)] action in DashBoard widget.
  ApiCallResponse? bicRecCounts;
  // Stores action output result for [Backend Call - API (MessageTypeCounts)] action in DashBoard widget.
  ApiCallResponse? msgTypeCountss;
  // Model for drawer component.
  late DrawerModel drawerModel;
  // Model for BackgroundIMage component.
  late BackgroundIMageModel backgroundIMageModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Stores action output result for [Backend Call - API (MessageCounts)] action in Header widget.
  ApiCallResponse? msgCounts1;
  // Stores action output result for [Backend Call - API (GlobeData)] action in Header widget.
  ApiCallResponse? globeResult1;
  // Stores action output result for [Backend Call - API (Bic Code Sent)] action in Header widget.
  ApiCallResponse? bicCodesSent1;
  // Stores action output result for [Backend Call - API (Bic Code Received)] action in Header widget.
  ApiCallResponse? bicRecCounts1;
  // Stores action output result for [Backend Call - API (MessageTypeCounts)] action in Header widget.
  ApiCallResponse? msgTypeCountss1;
  // Model for paymentAnalysis component.
  late PaymentAnalysisModel paymentAnalysisModel;
  // Model for BIC_Sent_Counts component.
  late BICSentCountsModel bICSentCountsModel;
  // Model for BIC_Received_Counts component.
  late BICReceivedCountsModel bICReceivedCountsModel;
  // Model for Year_Wise_Volumen_Trends component.
  late YearWiseVolumenTrendsModel yearWiseVolumenTrendsModel;
  // Model for Top_Swift_Messages_Tyoes component.
  late TopSwiftMessagesTyoesModel topSwiftMessagesTyoesModel;
  // Model for RecentTransactions component.
  late RecentTransactionsModel recentTransactionsModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
    backgroundIMageModel = createModel(context, () => BackgroundIMageModel());
    headerModel = createModel(context, () => HeaderModel());
    paymentAnalysisModel = createModel(context, () => PaymentAnalysisModel());
    bICSentCountsModel = createModel(context, () => BICSentCountsModel());
    bICReceivedCountsModel =
        createModel(context, () => BICReceivedCountsModel());
    yearWiseVolumenTrendsModel =
        createModel(context, () => YearWiseVolumenTrendsModel());
    topSwiftMessagesTyoesModel =
        createModel(context, () => TopSwiftMessagesTyoesModel());
    recentTransactionsModel =
        createModel(context, () => RecentTransactionsModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
    backgroundIMageModel.dispose();
    headerModel.dispose();
    paymentAnalysisModel.dispose();
    bICSentCountsModel.dispose();
    bICReceivedCountsModel.dispose();
    yearWiseVolumenTrendsModel.dispose();
    topSwiftMessagesTyoesModel.dispose();
    recentTransactionsModel.dispose();
  }
}
