// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BicCodesStruct extends BaseStruct {
  BicCodesStruct({
    String? bicData,
    int? count,
  })  : _bicData = bicData,
        _count = count;

  // "bicData" field.
  String? _bicData;
  String get bicData => _bicData ?? '';
  set bicData(String? val) => _bicData = val;

  bool hasBicData() => _bicData != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  static BicCodesStruct fromMap(Map<String, dynamic> data) => BicCodesStruct(
        bicData: data['bicData'] as String?,
        count: castToType<int>(data['count']),
      );

  static BicCodesStruct? maybeFromMap(dynamic data) =>
      data is Map ? BicCodesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'bicData': _bicData,
        'count': _count,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'bicData': serializeParam(
          _bicData,
          ParamType.String,
        ),
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
      }.withoutNulls;

  static BicCodesStruct fromSerializableMap(Map<String, dynamic> data) =>
      BicCodesStruct(
        bicData: deserializeParam(
          data['bicData'],
          ParamType.String,
          false,
        ),
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'BicCodesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BicCodesStruct &&
        bicData == other.bicData &&
        count == other.count;
  }

  @override
  int get hashCode => const ListEquality().hash([bicData, count]);
}

BicCodesStruct createBicCodesStruct({
  String? bicData,
  int? count,
}) =>
    BicCodesStruct(
      bicData: bicData,
      count: count,
    );
