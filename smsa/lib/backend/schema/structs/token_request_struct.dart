// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TokenRequestStruct extends BaseStruct {
  TokenRequestStruct({
    String? token,
    String? deviceHash,
  })  : _token = token,
        _deviceHash = deviceHash;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;

  bool hasToken() => _token != null;

  // "DeviceHash" field.
  String? _deviceHash;
  String get deviceHash => _deviceHash ?? '';
  set deviceHash(String? val) => _deviceHash = val;

  bool hasDeviceHash() => _deviceHash != null;

  static TokenRequestStruct fromMap(Map<String, dynamic> data) =>
      TokenRequestStruct(
        token: data['token'] as String?,
        deviceHash: data['DeviceHash'] as String?,
      );

  static TokenRequestStruct? maybeFromMap(dynamic data) => data is Map
      ? TokenRequestStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'token': _token,
        'DeviceHash': _deviceHash,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
        'DeviceHash': serializeParam(
          _deviceHash,
          ParamType.String,
        ),
      }.withoutNulls;

  static TokenRequestStruct fromSerializableMap(Map<String, dynamic> data) =>
      TokenRequestStruct(
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
        deviceHash: deserializeParam(
          data['DeviceHash'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TokenRequestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TokenRequestStruct &&
        token == other.token &&
        deviceHash == other.deviceHash;
  }

  @override
  int get hashCode => const ListEquality().hash([token, deviceHash]);
}

TokenRequestStruct createTokenRequestStruct({
  String? token,
  String? deviceHash,
}) =>
    TokenRequestStruct(
      token: token,
      deviceHash: deviceHash,
    );
