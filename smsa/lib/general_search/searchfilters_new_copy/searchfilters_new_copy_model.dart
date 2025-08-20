import '/backend/schema/structs/index.dart';
import '/components/general_search_b_uttonto_open_menu_widget.dart';
import '/components/general_search_filter_text_fields_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'searchfilters_new_copy_widget.dart' show SearchfiltersNewCopyWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class SearchfiltersNewCopyModel
    extends FlutterFlowModel<SearchfiltersNewCopyWidget> {
  ///  Local state fields for this component.

  FiltersStruct? identifierSent;
  void updateIdentifierSentStruct(Function(FiltersStruct) updateFn) {
    updateFn(identifierSent ??= FiltersStruct());
  }

  FiltersStruct? identifierReceived;
  void updateIdentifierReceivedStruct(Function(FiltersStruct) updateFn) {
    updateFn(identifierReceived ??= FiltersStruct());
  }

  List<String> senderBic = [''];
  void addToSenderBic(String item) => senderBic.add(item);
  void removeFromSenderBic(String item) => senderBic.remove(item);
  void removeAtIndexFromSenderBic(int index) => senderBic.removeAt(index);
  void insertAtIndexInSenderBic(int index, String item) =>
      senderBic.insert(index, item);
  void updateSenderBicAtIndex(int index, Function(String) updateFn) =>
      senderBic[index] = updateFn(senderBic[index]);

  List<String> receiverBic = [''];
  void addToReceiverBic(String item) => receiverBic.add(item);
  void removeFromReceiverBic(String item) => receiverBic.remove(item);
  void removeAtIndexFromReceiverBic(int index) => receiverBic.removeAt(index);
  void insertAtIndexInReceiverBic(int index, String item) =>
      receiverBic.insert(index, item);
  void updateReceiverBicAtIndex(int index, Function(String) updateFn) =>
      receiverBic[index] = updateFn(receiverBic[index]);

  bool sendRecvIcon = false;

  FiltersStruct? fileTypeNack;
  void updateFileTypeNackStruct(Function(FiltersStruct) updateFn) {
    updateFn(fileTypeNack ??= FiltersStruct());
  }

  FiltersStruct? fileTypeACK;
  void updateFileTypeACKStruct(Function(FiltersStruct) updateFn) {
    updateFn(fileTypeACK ??= FiltersStruct());
  }

  bool msgsearch = false;

  List<String> selectedItems = [];
  void addToSelectedItems(String item) => selectedItems.add(item);
  void removeFromSelectedItems(String item) => selectedItems.remove(item);
  void removeAtIndexFromSelectedItems(int index) =>
      selectedItems.removeAt(index);
  void insertAtIndexInSelectedItems(int index, String item) =>
      selectedItems.insert(index, item);
  void updateSelectedItemsAtIndex(int index, Function(String) updateFn) =>
      selectedItems[index] = updateFn(selectedItems[index]);

  List<String> emptyListt = [];
  void addToEmptyListt(String item) => emptyListt.add(item);
  void removeFromEmptyListt(String item) => emptyListt.remove(item);
  void removeAtIndexFromEmptyListt(int index) => emptyListt.removeAt(index);
  void insertAtIndexInEmptyListt(int index, String item) =>
      emptyListt.insert(index, item);
  void updateEmptyListtAtIndex(int index, Function(String) updateFn) =>
      emptyListt[index] = updateFn(emptyListt[index]);

  List<String> mtTypess = [];
  void addToMtTypess(String item) => mtTypess.add(item);
  void removeFromMtTypess(String item) => mtTypess.remove(item);
  void removeAtIndexFromMtTypess(int index) => mtTypess.removeAt(index);
  void insertAtIndexInMtTypess(int index, String item) =>
      mtTypess.insert(index, item);
  void updateMtTypessAtIndex(int index, Function(String) updateFn) =>
      mtTypess[index] = updateFn(mtTypess[index]);

  List<int> emptyId = [];
  void addToEmptyId(int item) => emptyId.add(item);
  void removeFromEmptyId(int item) => emptyId.remove(item);
  void removeAtIndexFromEmptyId(int index) => emptyId.removeAt(index);
  void insertAtIndexInEmptyId(int index, int item) =>
      emptyId.insert(index, item);
  void updateEmptyIdAtIndex(int index, Function(int) updateFn) =>
      emptyId[index] = updateFn(emptyId[index]);

  bool selectDate = true;

  List<String> amount = [];
  void addToAmount(String item) => amount.add(item);
  void removeFromAmount(String item) => amount.remove(item);
  void removeAtIndexFromAmount(int index) => amount.removeAt(index);
  void insertAtIndexInAmount(int index, String item) =>
      amount.insert(index, item);
  void updateAmountAtIndex(int index, Function(String) updateFn) =>
      amount[index] = updateFn(amount[index]);

  List<String> currency = [];
  void addToCurrency(String item) => currency.add(item);
  void removeFromCurrency(String item) => currency.remove(item);
  void removeAtIndexFromCurrency(int index) => currency.removeAt(index);
  void insertAtIndexInCurrency(int index, String item) =>
      currency.insert(index, item);
  void updateCurrencyAtIndex(int index, Function(String) updateFn) =>
      currency[index] = updateFn(currency[index]);

  String dateFrom = '  ';

  String? dateTo = ' ';

  List<dynamic> msgTypesList = [];
  void addToMsgTypesList(dynamic item) => msgTypesList.add(item);
  void removeFromMsgTypesList(dynamic item) => msgTypesList.remove(item);
  void removeAtIndexFromMsgTypesList(int index) => msgTypesList.removeAt(index);
  void insertAtIndexInMsgTypesList(int index, dynamic item) =>
      msgTypesList.insert(index, item);
  void updateMsgTypesListAtIndex(int index, Function(dynamic) updateFn) =>
      msgTypesList[index] = updateFn(msgTypesList[index]);

  String? refNumber;

  String? uetr = ' ';

  String? generatlText = ' ';

  String? exactTime;

  double? amountSlider = 0.0;

  double? fromAmount;

  double? toAmount;

  String? fromTime = '00:00';

  String? toTime = '23:59';

  bool reducewidth = false;

  ///  State fields for stateful widgets in this component.

  // Model for GeneralSearchBUttontoOpenMenu component.
  late GeneralSearchBUttontoOpenMenuModel generalSearchBUttontoOpenMenuModel1;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Model for GeneralSearchBUttontoOpenMenu component.
  late GeneralSearchBUttontoOpenMenuModel generalSearchBUttontoOpenMenuModel2;
  // Model for GeneralSearchBUttontoOpenMenu component.
  late GeneralSearchBUttontoOpenMenuModel generalSearchBUttontoOpenMenuModel3;
  // Model for GeneralSearchBUttontoOpenMenu component.
  late GeneralSearchBUttontoOpenMenuModel generalSearchBUttontoOpenMenuModel4;
  // Model for GeneralSearchFilterTextFields component.
  late GeneralSearchFilterTextFieldsModel generalSearchFilterTextFieldsModel1;
  // Model for GeneralSearchFilterTextFields component.
  late GeneralSearchFilterTextFieldsModel generalSearchFilterTextFieldsModel2;
  // Model for GeneralSearchFilterTextFields component.
  late GeneralSearchFilterTextFieldsModel generalSearchFilterTextFieldsModel3;
  // Model for GeneralSearchFilterTextFields component.
  late GeneralSearchFilterTextFieldsModel generalSearchFilterTextFieldsModel4;
  // Model for GeneralSearchFilterTextFields component.
  late GeneralSearchFilterTextFieldsModel generalSearchFilterTextFieldsModel5;
  // State field(s) for currency widget.
  List<String>? currencyValue;
  FormFieldController<List<String>>? currencyValueController;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue;
  FormFieldController<List<String>>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    generalSearchBUttontoOpenMenuModel1 =
        createModel(context, () => GeneralSearchBUttontoOpenMenuModel());
    generalSearchBUttontoOpenMenuModel2 =
        createModel(context, () => GeneralSearchBUttontoOpenMenuModel());
    generalSearchBUttontoOpenMenuModel3 =
        createModel(context, () => GeneralSearchBUttontoOpenMenuModel());
    generalSearchBUttontoOpenMenuModel4 =
        createModel(context, () => GeneralSearchBUttontoOpenMenuModel());
    generalSearchFilterTextFieldsModel1 =
        createModel(context, () => GeneralSearchFilterTextFieldsModel());
    generalSearchFilterTextFieldsModel2 =
        createModel(context, () => GeneralSearchFilterTextFieldsModel());
    generalSearchFilterTextFieldsModel3 =
        createModel(context, () => GeneralSearchFilterTextFieldsModel());
    generalSearchFilterTextFieldsModel4 =
        createModel(context, () => GeneralSearchFilterTextFieldsModel());
    generalSearchFilterTextFieldsModel5 =
        createModel(context, () => GeneralSearchFilterTextFieldsModel());
  }

  @override
  void dispose() {
    generalSearchBUttontoOpenMenuModel1.dispose();
    generalSearchBUttontoOpenMenuModel2.dispose();
    generalSearchBUttontoOpenMenuModel3.dispose();
    generalSearchBUttontoOpenMenuModel4.dispose();
    generalSearchFilterTextFieldsModel1.dispose();
    generalSearchFilterTextFieldsModel2.dispose();
    generalSearchFilterTextFieldsModel3.dispose();
    generalSearchFilterTextFieldsModel4.dispose();
    generalSearchFilterTextFieldsModel5.dispose();
  }
}
