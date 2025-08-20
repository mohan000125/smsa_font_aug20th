// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatesSelectionStruct extends BaseStruct {
  DatesSelectionStruct({
    String? fromSelected,
    String? toSelected,
  })  : _fromSelected = fromSelected,
        _toSelected = toSelected;

  // "FromSelected" field.
  String? _fromSelected;
  String get fromSelected => _fromSelected ?? '';
  set fromSelected(String? val) => _fromSelected = val;

  bool hasFromSelected() => _fromSelected != null;

  // "ToSelected" field.
  String? _toSelected;
  String get toSelected => _toSelected ?? '';
  set toSelected(String? val) => _toSelected = val;

  bool hasToSelected() => _toSelected != null;

  static DatesSelectionStruct fromMap(Map<String, dynamic> data) =>
      DatesSelectionStruct(
        fromSelected: data['FromSelected'] as String?,
        toSelected: data['ToSelected'] as String?,
      );

  static DatesSelectionStruct? maybeFromMap(dynamic data) => data is Map
      ? DatesSelectionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'FromSelected': _fromSelected,
        'ToSelected': _toSelected,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'FromSelected': serializeParam(
          _fromSelected,
          ParamType.String,
        ),
        'ToSelected': serializeParam(
          _toSelected,
          ParamType.String,
        ),
      }.withoutNulls;

  static DatesSelectionStruct fromSerializableMap(Map<String, dynamic> data) =>
      DatesSelectionStruct(
        fromSelected: deserializeParam(
          data['FromSelected'],
          ParamType.String,
          false,
        ),
        toSelected: deserializeParam(
          data['ToSelected'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DatesSelectionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DatesSelectionStruct &&
        fromSelected == other.fromSelected &&
        toSelected == other.toSelected;
  }

  @override
  int get hashCode => const ListEquality().hash([fromSelected, toSelected]);
}

DatesSelectionStruct createDatesSelectionStruct({
  String? fromSelected,
  String? toSelected,
}) =>
    DatesSelectionStruct(
      fromSelected: fromSelected,
      toSelected: toSelected,
    );
