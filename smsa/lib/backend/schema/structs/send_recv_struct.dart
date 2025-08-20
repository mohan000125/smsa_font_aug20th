// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SendRecvStruct extends BaseStruct {
  SendRecvStruct({
    String? sender,
    String? receiver,
  })  : _sender = sender,
        _receiver = receiver;

  // "sender" field.
  String? _sender;
  String get sender => _sender ?? '';
  set sender(String? val) => _sender = val;

  bool hasSender() => _sender != null;

  // "receiver" field.
  String? _receiver;
  String get receiver => _receiver ?? '';
  set receiver(String? val) => _receiver = val;

  bool hasReceiver() => _receiver != null;

  static SendRecvStruct fromMap(Map<String, dynamic> data) => SendRecvStruct(
        sender: data['sender'] as String?,
        receiver: data['receiver'] as String?,
      );

  static SendRecvStruct? maybeFromMap(dynamic data) =>
      data is Map ? SendRecvStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'sender': _sender,
        'receiver': _receiver,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sender': serializeParam(
          _sender,
          ParamType.String,
        ),
        'receiver': serializeParam(
          _receiver,
          ParamType.String,
        ),
      }.withoutNulls;

  static SendRecvStruct fromSerializableMap(Map<String, dynamic> data) =>
      SendRecvStruct(
        sender: deserializeParam(
          data['sender'],
          ParamType.String,
          false,
        ),
        receiver: deserializeParam(
          data['receiver'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SendRecvStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SendRecvStruct &&
        sender == other.sender &&
        receiver == other.receiver;
  }

  @override
  int get hashCode => const ListEquality().hash([sender, receiver]);
}

SendRecvStruct createSendRecvStruct({
  String? sender,
  String? receiver,
}) =>
    SendRecvStruct(
      sender: sender,
      receiver: receiver,
    );
