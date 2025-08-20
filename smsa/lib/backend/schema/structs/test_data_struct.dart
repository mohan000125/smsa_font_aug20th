// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestDataStruct extends BaseStruct {
  TestDataStruct({
    int? sentPayments,
    int? receivedPayments,
    String? countryCode,
    String? countryName,
    double? latitude,
    double? longitude,
  })  : _sentPayments = sentPayments,
        _receivedPayments = receivedPayments,
        _countryCode = countryCode,
        _countryName = countryName,
        _latitude = latitude,
        _longitude = longitude;

  // "sentPayments" field.
  int? _sentPayments;
  int get sentPayments => _sentPayments ?? 0;
  set sentPayments(int? val) => _sentPayments = val;

  void incrementSentPayments(int amount) =>
      sentPayments = sentPayments + amount;

  bool hasSentPayments() => _sentPayments != null;

  // "receivedPayments" field.
  int? _receivedPayments;
  int get receivedPayments => _receivedPayments ?? 0;
  set receivedPayments(int? val) => _receivedPayments = val;

  void incrementReceivedPayments(int amount) =>
      receivedPayments = receivedPayments + amount;

  bool hasReceivedPayments() => _receivedPayments != null;

  // "countryCode" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  set countryCode(String? val) => _countryCode = val;

  bool hasCountryCode() => _countryCode != null;

  // "countryName" field.
  String? _countryName;
  String get countryName => _countryName ?? '';
  set countryName(String? val) => _countryName = val;

  bool hasCountryName() => _countryName != null;

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  set latitude(double? val) => _latitude = val;

  void incrementLatitude(double amount) => latitude = latitude + amount;

  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  set longitude(double? val) => _longitude = val;

  void incrementLongitude(double amount) => longitude = longitude + amount;

  bool hasLongitude() => _longitude != null;

  static TestDataStruct fromMap(Map<String, dynamic> data) => TestDataStruct(
        sentPayments: castToType<int>(data['sentPayments']),
        receivedPayments: castToType<int>(data['receivedPayments']),
        countryCode: data['countryCode'] as String?,
        countryName: data['countryName'] as String?,
        latitude: castToType<double>(data['latitude']),
        longitude: castToType<double>(data['longitude']),
      );

  static TestDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? TestDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'sentPayments': _sentPayments,
        'receivedPayments': _receivedPayments,
        'countryCode': _countryCode,
        'countryName': _countryName,
        'latitude': _latitude,
        'longitude': _longitude,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sentPayments': serializeParam(
          _sentPayments,
          ParamType.int,
        ),
        'receivedPayments': serializeParam(
          _receivedPayments,
          ParamType.int,
        ),
        'countryCode': serializeParam(
          _countryCode,
          ParamType.String,
        ),
        'countryName': serializeParam(
          _countryName,
          ParamType.String,
        ),
        'latitude': serializeParam(
          _latitude,
          ParamType.double,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.double,
        ),
      }.withoutNulls;

  static TestDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      TestDataStruct(
        sentPayments: deserializeParam(
          data['sentPayments'],
          ParamType.int,
          false,
        ),
        receivedPayments: deserializeParam(
          data['receivedPayments'],
          ParamType.int,
          false,
        ),
        countryCode: deserializeParam(
          data['countryCode'],
          ParamType.String,
          false,
        ),
        countryName: deserializeParam(
          data['countryName'],
          ParamType.String,
          false,
        ),
        latitude: deserializeParam(
          data['latitude'],
          ParamType.double,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'TestDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TestDataStruct &&
        sentPayments == other.sentPayments &&
        receivedPayments == other.receivedPayments &&
        countryCode == other.countryCode &&
        countryName == other.countryName &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode => const ListEquality().hash([
        sentPayments,
        receivedPayments,
        countryCode,
        countryName,
        latitude,
        longitude
      ]);
}

TestDataStruct createTestDataStruct({
  int? sentPayments,
  int? receivedPayments,
  String? countryCode,
  String? countryName,
  double? latitude,
  double? longitude,
}) =>
    TestDataStruct(
      sentPayments: sentPayments,
      receivedPayments: receivedPayments,
      countryCode: countryCode,
      countryName: countryName,
      latitude: latitude,
      longitude: longitude,
    );
