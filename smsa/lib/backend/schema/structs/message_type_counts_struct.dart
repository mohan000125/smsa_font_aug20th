// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessageTypeCountsStruct extends BaseStruct {
  MessageTypeCountsStruct({
    int? fin05,
    int? fin081,
    int? fin999,
    int? fin082,
    int? apc081,
  })  : _fin05 = fin05,
        _fin081 = fin081,
        _fin999 = fin999,
        _fin082 = fin082,
        _apc081 = apc081;

  // "FIN05" field.
  int? _fin05;
  int get fin05 => _fin05 ?? 0;
  set fin05(int? val) => _fin05 = val;

  void incrementFin05(int amount) => fin05 = fin05 + amount;

  bool hasFin05() => _fin05 != null;

  // "FIN081" field.
  int? _fin081;
  int get fin081 => _fin081 ?? 0;
  set fin081(int? val) => _fin081 = val;

  void incrementFin081(int amount) => fin081 = fin081 + amount;

  bool hasFin081() => _fin081 != null;

  // "FIN999" field.
  int? _fin999;
  int get fin999 => _fin999 ?? 0;
  set fin999(int? val) => _fin999 = val;

  void incrementFin999(int amount) => fin999 = fin999 + amount;

  bool hasFin999() => _fin999 != null;

  // "FIN082" field.
  int? _fin082;
  int get fin082 => _fin082 ?? 0;
  set fin082(int? val) => _fin082 = val;

  void incrementFin082(int amount) => fin082 = fin082 + amount;

  bool hasFin082() => _fin082 != null;

  // "APC081" field.
  int? _apc081;
  int get apc081 => _apc081 ?? 0;
  set apc081(int? val) => _apc081 = val;

  void incrementApc081(int amount) => apc081 = apc081 + amount;

  bool hasApc081() => _apc081 != null;

  static MessageTypeCountsStruct fromMap(Map<String, dynamic> data) =>
      MessageTypeCountsStruct(
        fin05: castToType<int>(data['FIN05']),
        fin081: castToType<int>(data['FIN081']),
        fin999: castToType<int>(data['FIN999']),
        fin082: castToType<int>(data['FIN082']),
        apc081: castToType<int>(data['APC081']),
      );

  static MessageTypeCountsStruct? maybeFromMap(dynamic data) => data is Map
      ? MessageTypeCountsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'FIN05': _fin05,
        'FIN081': _fin081,
        'FIN999': _fin999,
        'FIN082': _fin082,
        'APC081': _apc081,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'FIN05': serializeParam(
          _fin05,
          ParamType.int,
        ),
        'FIN081': serializeParam(
          _fin081,
          ParamType.int,
        ),
        'FIN999': serializeParam(
          _fin999,
          ParamType.int,
        ),
        'FIN082': serializeParam(
          _fin082,
          ParamType.int,
        ),
        'APC081': serializeParam(
          _apc081,
          ParamType.int,
        ),
      }.withoutNulls;

  static MessageTypeCountsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MessageTypeCountsStruct(
        fin05: deserializeParam(
          data['FIN05'],
          ParamType.int,
          false,
        ),
        fin081: deserializeParam(
          data['FIN081'],
          ParamType.int,
          false,
        ),
        fin999: deserializeParam(
          data['FIN999'],
          ParamType.int,
          false,
        ),
        fin082: deserializeParam(
          data['FIN082'],
          ParamType.int,
          false,
        ),
        apc081: deserializeParam(
          data['APC081'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'MessageTypeCountsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MessageTypeCountsStruct &&
        fin05 == other.fin05 &&
        fin081 == other.fin081 &&
        fin999 == other.fin999 &&
        fin082 == other.fin082 &&
        apc081 == other.apc081;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([fin05, fin081, fin999, fin082, apc081]);
}

MessageTypeCountsStruct createMessageTypeCountsStruct({
  int? fin05,
  int? fin081,
  int? fin999,
  int? fin082,
  int? apc081,
}) =>
    MessageTypeCountsStruct(
      fin05: fin05,
      fin081: fin081,
      fin999: fin999,
      fin082: fin082,
      apc081: apc081,
    );
