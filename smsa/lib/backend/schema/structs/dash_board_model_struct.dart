// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DashBoardModelStruct extends BaseStruct {
  DashBoardModelStruct({
    int? totalSwiftPaymentsCount,
    int? recivedPayments,
    int? sentPayments,
    MessageTypeCountsStruct? messageTypeCounts,
  })  : _totalSwiftPaymentsCount = totalSwiftPaymentsCount,
        _recivedPayments = recivedPayments,
        _sentPayments = sentPayments,
        _messageTypeCounts = messageTypeCounts;

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

  // "messageTypeCounts" field.
  MessageTypeCountsStruct? _messageTypeCounts;
  MessageTypeCountsStruct get messageTypeCounts =>
      _messageTypeCounts ?? MessageTypeCountsStruct();
  set messageTypeCounts(MessageTypeCountsStruct? val) =>
      _messageTypeCounts = val;

  void updateMessageTypeCounts(Function(MessageTypeCountsStruct) updateFn) {
    updateFn(_messageTypeCounts ??= MessageTypeCountsStruct());
  }

  bool hasMessageTypeCounts() => _messageTypeCounts != null;

  static DashBoardModelStruct fromMap(Map<String, dynamic> data) =>
      DashBoardModelStruct(
        totalSwiftPaymentsCount:
            castToType<int>(data['totalSwiftPaymentsCount']),
        recivedPayments: castToType<int>(data['recivedPayments']),
        sentPayments: castToType<int>(data['sentPayments']),
        messageTypeCounts: data['messageTypeCounts'] is MessageTypeCountsStruct
            ? data['messageTypeCounts']
            : MessageTypeCountsStruct.maybeFromMap(data['messageTypeCounts']),
      );

  static DashBoardModelStruct? maybeFromMap(dynamic data) => data is Map
      ? DashBoardModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'totalSwiftPaymentsCount': _totalSwiftPaymentsCount,
        'recivedPayments': _recivedPayments,
        'sentPayments': _sentPayments,
        'messageTypeCounts': _messageTypeCounts?.toMap(),
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
        'messageTypeCounts': serializeParam(
          _messageTypeCounts,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static DashBoardModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      DashBoardModelStruct(
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
        messageTypeCounts: deserializeStructParam(
          data['messageTypeCounts'],
          ParamType.DataStruct,
          false,
          structBuilder: MessageTypeCountsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DashBoardModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DashBoardModelStruct &&
        totalSwiftPaymentsCount == other.totalSwiftPaymentsCount &&
        recivedPayments == other.recivedPayments &&
        sentPayments == other.sentPayments &&
        messageTypeCounts == other.messageTypeCounts;
  }

  @override
  int get hashCode => const ListEquality().hash([
        totalSwiftPaymentsCount,
        recivedPayments,
        sentPayments,
        messageTypeCounts
      ]);
}

DashBoardModelStruct createDashBoardModelStruct({
  int? totalSwiftPaymentsCount,
  int? recivedPayments,
  int? sentPayments,
  MessageTypeCountsStruct? messageTypeCounts,
}) =>
    DashBoardModelStruct(
      totalSwiftPaymentsCount: totalSwiftPaymentsCount,
      recivedPayments: recivedPayments,
      sentPayments: sentPayments,
      messageTypeCounts: messageTypeCounts ?? MessageTypeCountsStruct(),
    );
