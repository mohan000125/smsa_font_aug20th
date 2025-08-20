import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/country_rows_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'top_countries_widget.dart' show TopCountriesWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class TopCountriesModel extends FlutterFlowModel<TopCountriesWidget> {
  ///  Local state fields for this component.

  List<BicCodesStruct> sendCodes = [];
  void addToSendCodes(BicCodesStruct item) => sendCodes.add(item);
  void removeFromSendCodes(BicCodesStruct item) => sendCodes.remove(item);
  void removeAtIndexFromSendCodes(int index) => sendCodes.removeAt(index);
  void insertAtIndexInSendCodes(int index, BicCodesStruct item) =>
      sendCodes.insert(index, item);
  void updateSendCodesAtIndex(int index, Function(BicCodesStruct) updateFn) =>
      sendCodes[index] = updateFn(sendCodes[index]);

  String? sent = 'sent';

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Bic Code Sent)] action in Top_Countries widget.
  ApiCallResponse? bicCodeSent;
  // Model for CountryRows component.
  late CountryRowsModel countryRowsModel1;
  // Model for CountryRows component.
  late CountryRowsModel countryRowsModel2;
  // Model for CountryRows component.
  late CountryRowsModel countryRowsModel3;
  // Model for CountryRows component.
  late CountryRowsModel countryRowsModel4;
  // Model for CountryRows component.
  late CountryRowsModel countryRowsModel5;

  @override
  void initState(BuildContext context) {
    countryRowsModel1 = createModel(context, () => CountryRowsModel());
    countryRowsModel2 = createModel(context, () => CountryRowsModel());
    countryRowsModel3 = createModel(context, () => CountryRowsModel());
    countryRowsModel4 = createModel(context, () => CountryRowsModel());
    countryRowsModel5 = createModel(context, () => CountryRowsModel());
  }

  @override
  void dispose() {
    countryRowsModel1.dispose();
    countryRowsModel2.dispose();
    countryRowsModel3.dispose();
    countryRowsModel4.dispose();
    countryRowsModel5.dispose();
  }
}
