// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FiltersStruct extends BaseStruct {
  FiltersStruct({
    List<String>? field,
    bool? status,
  })  : _field = field,
        _status = status;

  // "field" field.
  List<String>? _field;
  List<String> get field => _field ?? const [];
  set field(List<String>? val) => _field = val;

  void updateField(Function(List<String>) updateFn) {
    updateFn(_field ??= []);
  }

  bool hasField() => _field != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  static FiltersStruct fromMap(Map<String, dynamic> data) => FiltersStruct(
        field: getDataList(data['field']),
        status: data['status'] as bool?,
      );

  static FiltersStruct? maybeFromMap(dynamic data) =>
      data is Map ? FiltersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'field': _field,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'field': serializeParam(
          _field,
          ParamType.String,
          isList: true,
        ),
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
      }.withoutNulls;

  static FiltersStruct fromSerializableMap(Map<String, dynamic> data) =>
      FiltersStruct(
        field: deserializeParam<String>(
          data['field'],
          ParamType.String,
          true,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'FiltersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is FiltersStruct &&
        listEquality.equals(field, other.field) &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([field, status]);
}

FiltersStruct createFiltersStruct({
  bool? status,
}) =>
    FiltersStruct(
      status: status,
    );
