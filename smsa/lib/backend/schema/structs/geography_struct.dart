// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GeographyStruct extends BaseStruct {
  GeographyStruct({
    int? geogId,
    String? geogCode,
    String? geogName,
  })  : _geogId = geogId,
        _geogCode = geogCode,
        _geogName = geogName;

  // "geogId" field.
  int? _geogId;
  int get geogId => _geogId ?? 0;
  set geogId(int? val) => _geogId = val;

  void incrementGeogId(int amount) => geogId = geogId + amount;

  bool hasGeogId() => _geogId != null;

  // "geogCode" field.
  String? _geogCode;
  String get geogCode => _geogCode ?? '';
  set geogCode(String? val) => _geogCode = val;

  bool hasGeogCode() => _geogCode != null;

  // "geogName" field.
  String? _geogName;
  String get geogName => _geogName ?? '';
  set geogName(String? val) => _geogName = val;

  bool hasGeogName() => _geogName != null;

  static GeographyStruct fromMap(Map<String, dynamic> data) => GeographyStruct(
        geogId: castToType<int>(data['geogId']),
        geogCode: data['geogCode'] as String?,
        geogName: data['geogName'] as String?,
      );

  static GeographyStruct? maybeFromMap(dynamic data) => data is Map
      ? GeographyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'geogId': _geogId,
        'geogCode': _geogCode,
        'geogName': _geogName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'geogId': serializeParam(
          _geogId,
          ParamType.int,
        ),
        'geogCode': serializeParam(
          _geogCode,
          ParamType.String,
        ),
        'geogName': serializeParam(
          _geogName,
          ParamType.String,
        ),
      }.withoutNulls;

  static GeographyStruct fromSerializableMap(Map<String, dynamic> data) =>
      GeographyStruct(
        geogId: deserializeParam(
          data['geogId'],
          ParamType.int,
          false,
        ),
        geogCode: deserializeParam(
          data['geogCode'],
          ParamType.String,
          false,
        ),
        geogName: deserializeParam(
          data['geogName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GeographyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GeographyStruct &&
        geogId == other.geogId &&
        geogCode == other.geogCode &&
        geogName == other.geogName;
  }

  @override
  int get hashCode => const ListEquality().hash([geogId, geogCode, geogName]);
}

GeographyStruct createGeographyStruct({
  int? geogId,
  String? geogCode,
  String? geogName,
}) =>
    GeographyStruct(
      geogId: geogId,
      geogCode: geogCode,
      geogName: geogName,
    );
