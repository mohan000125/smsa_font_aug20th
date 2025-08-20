// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ModulesStruct extends BaseStruct {
  ModulesStruct({
    int? moduleId,
    String? moduleName,
    String? isActive,
    String? createdDate,
  })  : _moduleId = moduleId,
        _moduleName = moduleName,
        _isActive = isActive,
        _createdDate = createdDate;

  // "moduleId" field.
  int? _moduleId;
  int get moduleId => _moduleId ?? 0;
  set moduleId(int? val) => _moduleId = val;

  void incrementModuleId(int amount) => moduleId = moduleId + amount;

  bool hasModuleId() => _moduleId != null;

  // "moduleName" field.
  String? _moduleName;
  String get moduleName => _moduleName ?? '';
  set moduleName(String? val) => _moduleName = val;

  bool hasModuleName() => _moduleName != null;

  // "isActive" field.
  String? _isActive;
  String get isActive => _isActive ?? '';
  set isActive(String? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

  // "createdDate" field.
  String? _createdDate;
  String get createdDate => _createdDate ?? '';
  set createdDate(String? val) => _createdDate = val;

  bool hasCreatedDate() => _createdDate != null;

  static ModulesStruct fromMap(Map<String, dynamic> data) => ModulesStruct(
        moduleId: castToType<int>(data['moduleId']),
        moduleName: data['moduleName'] as String?,
        isActive: data['isActive'] as String?,
        createdDate: data['createdDate'] as String?,
      );

  static ModulesStruct? maybeFromMap(dynamic data) =>
      data is Map ? ModulesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'moduleId': _moduleId,
        'moduleName': _moduleName,
        'isActive': _isActive,
        'createdDate': _createdDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'moduleId': serializeParam(
          _moduleId,
          ParamType.int,
        ),
        'moduleName': serializeParam(
          _moduleName,
          ParamType.String,
        ),
        'isActive': serializeParam(
          _isActive,
          ParamType.String,
        ),
        'createdDate': serializeParam(
          _createdDate,
          ParamType.String,
        ),
      }.withoutNulls;

  static ModulesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ModulesStruct(
        moduleId: deserializeParam(
          data['moduleId'],
          ParamType.int,
          false,
        ),
        moduleName: deserializeParam(
          data['moduleName'],
          ParamType.String,
          false,
        ),
        isActive: deserializeParam(
          data['isActive'],
          ParamType.String,
          false,
        ),
        createdDate: deserializeParam(
          data['createdDate'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ModulesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ModulesStruct &&
        moduleId == other.moduleId &&
        moduleName == other.moduleName &&
        isActive == other.isActive &&
        createdDate == other.createdDate;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([moduleId, moduleName, isActive, createdDate]);
}

ModulesStruct createModulesStruct({
  int? moduleId,
  String? moduleName,
  String? isActive,
  String? createdDate,
}) =>
    ModulesStruct(
      moduleId: moduleId,
      moduleName: moduleName,
      isActive: isActive,
      createdDate: createdDate,
    );
