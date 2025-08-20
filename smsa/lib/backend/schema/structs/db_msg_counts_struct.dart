// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DbMsgCountsStruct extends BaseStruct {
  DbMsgCountsStruct({
    int? totalSwiftPaymentsCount,
    int? recivedPayments,
    int? sentPayments,
  })  : _totalSwiftPaymentsCount = totalSwiftPaymentsCount,
        _recivedPayments = recivedPayments,
        _sentPayments = sentPayments;

  // "totalSwiftPaymentsCount" field.
  int? _totalSwiftPaymentsCount;
  int get totalSwiftPaymentsCount => _totalSwiftPaymentsCount ?? 0;
  set totalSwiftPaymentsCount(int? val) => _totalSwiftPaymentsCount = val;

  void incrementTotalSwiftPaymentsCount(int amount) =>
      totalSwiftPaymentsCount = totalSwiftPaymentsCount + amount;

  bool hasTotalSwiftPaymentsCount() => _totalSwiftPaymentsCount != null;

  // "recivedPayments" field.
  int? _recivedPayments;
  int get recivedPayments => _recivedPayments ?? 0;
  set recivedPayments(int? val) => _recivedPayments = val;

  void incrementRecivedPayments(int amount) =>
      recivedPayments = recivedPayments + amount;

  bool hasRecivedPayments() => _recivedPayments != null;

  // "sentPayments" field.
  int? _sentPayments;
  int get sentPayments => _sentPayments ?? 0;
  set sentPayments(int? val) => _sentPayments = val;

  void incrementSentPayments(int amount) =>
      sentPayments = sentPayments + amount;

  bool hasSentPayments() => _sentPayments != null;

  static DbMsgCountsStruct fromMap(Map<String, dynamic> data) =>
      DbMsgCountsStruct(
        totalSwiftPaymentsCount:
            castToType<int>(data['totalSwiftPaymentsCount']),
        recivedPayments: castToType<int>(data['recivedPayments']),
        sentPayments: castToType<int>(data['sentPayments']),
      );

  static DbMsgCountsStruct? maybeFromMap(dynamic data) => data is Map
      ? DbMsgCountsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'totalSwiftPaymentsCount': _totalSwiftPaymentsCount,
        'recivedPayments': _recivedPayments,
        'sentPayments': _sentPayments,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'totalSwiftPaymentsCount': serializeParam(
          _totalSwiftPaymentsCount,
          ParamType.int,
        ),
        'recivedPayments': serializeParam(
          _recivedPayments,
          ParamType.int,
        ),
        'sentPayments': serializeParam(
          _sentPayments,
          ParamType.int,
        ),
      }.withoutNulls;

  static DbMsgCountsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DbMsgCountsStruct(
        totalSwiftPaymentsCount: deserializeParam(
          data['totalSwiftPaymentsCount'],
          ParamType.int,
          false,
        ),
        recivedPayments: deserializeParam(
          data['recivedPayments'],
          ParamType.int,
          false,
        ),
        sentPayments: deserializeParam(
          data['sentPayments'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DbMsgCountsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DbMsgCountsStruct &&
        totalSwiftPaymentsCount == other.totalSwiftPaymentsCount &&
        recivedPayments == other.recivedPayments &&
        sentPayments == other.sentPayments;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([totalSwiftPaymentsCount, recivedPayments, sentPayments]);
}

DbMsgCountsStruct createDbMsgCountsStruct({
  int? totalSwiftPaymentsCount,
  int? recivedPayments,
  int? sentPayments,
}) =>
    DbMsgCountsStruct(
      totalSwiftPaymentsCount: totalSwiftPaymentsCount,
      recivedPayments: recivedPayments,
      sentPayments: sentPayments,
    );
