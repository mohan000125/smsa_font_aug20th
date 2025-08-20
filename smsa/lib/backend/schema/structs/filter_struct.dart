// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilterStruct extends BaseStruct {
  FilterStruct({
    String? senderBic,
    String? receiverBic,
    String? inputRefNo,
    String? inpOut,
    String? fileName,
    String? mtCode,
    String? time,
    String? transactionRef,
    String? fileType,
    String? msgType,
  })  : _senderBic = senderBic,
        _receiverBic = receiverBic,
        _inputRefNo = inputRefNo,
        _inpOut = inpOut,
        _fileName = fileName,
        _mtCode = mtCode,
        _time = time,
        _transactionRef = transactionRef,
        _fileType = fileType,
        _msgType = msgType;

  // "senderBic" field.
  String? _senderBic;
  String get senderBic => _senderBic ?? '';
  set senderBic(String? val) => _senderBic = val;

  bool hasSenderBic() => _senderBic != null;

  // "receiverBic" field.
  String? _receiverBic;
  String get receiverBic => _receiverBic ?? '';
  set receiverBic(String? val) => _receiverBic = val;

  bool hasReceiverBic() => _receiverBic != null;

  // "inputRefNo" field.
  String? _inputRefNo;
  String get inputRefNo => _inputRefNo ?? '';
  set inputRefNo(String? val) => _inputRefNo = val;

  bool hasInputRefNo() => _inputRefNo != null;

  // "inpOut" field.
  String? _inpOut;
  String get inpOut => _inpOut ?? '';
  set inpOut(String? val) => _inpOut = val;

  bool hasInpOut() => _inpOut != null;

  // "fileName" field.
  String? _fileName;
  String get fileName => _fileName ?? '';
  set fileName(String? val) => _fileName = val;

  bool hasFileName() => _fileName != null;

  // "mtCode" field.
  String? _mtCode;
  String get mtCode => _mtCode ?? '';
  set mtCode(String? val) => _mtCode = val;

  bool hasMtCode() => _mtCode != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  // "transactionRef" field.
  String? _transactionRef;
  String get transactionRef => _transactionRef ?? '';
  set transactionRef(String? val) => _transactionRef = val;

  bool hasTransactionRef() => _transactionRef != null;

  // "fileType" field.
  String? _fileType;
  String get fileType => _fileType ?? '';
  set fileType(String? val) => _fileType = val;

  bool hasFileType() => _fileType != null;

  // "msgType" field.
  String? _msgType;
  String get msgType => _msgType ?? '';
  set msgType(String? val) => _msgType = val;

  bool hasMsgType() => _msgType != null;

  static FilterStruct fromMap(Map<String, dynamic> data) => FilterStruct(
        senderBic: data['senderBic'] as String?,
        receiverBic: data['receiverBic'] as String?,
        inputRefNo: data['inputRefNo'] as String?,
        inpOut: data['inpOut'] as String?,
        fileName: data['fileName'] as String?,
        mtCode: data['mtCode'] as String?,
        time: data['time'] as String?,
        transactionRef: data['transactionRef'] as String?,
        fileType: data['fileType'] as String?,
        msgType: data['msgType'] as String?,
      );

  static FilterStruct? maybeFromMap(dynamic data) =>
      data is Map ? FilterStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'senderBic': _senderBic,
        'receiverBic': _receiverBic,
        'inputRefNo': _inputRefNo,
        'inpOut': _inpOut,
        'fileName': _fileName,
        'mtCode': _mtCode,
        'time': _time,
        'transactionRef': _transactionRef,
        'fileType': _fileType,
        'msgType': _msgType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'senderBic': serializeParam(
          _senderBic,
          ParamType.String,
        ),
        'receiverBic': serializeParam(
          _receiverBic,
          ParamType.String,
        ),
        'inputRefNo': serializeParam(
          _inputRefNo,
          ParamType.String,
        ),
        'inpOut': serializeParam(
          _inpOut,
          ParamType.String,
        ),
        'fileName': serializeParam(
          _fileName,
          ParamType.String,
        ),
        'mtCode': serializeParam(
          _mtCode,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
        'transactionRef': serializeParam(
          _transactionRef,
          ParamType.String,
        ),
        'fileType': serializeParam(
          _fileType,
          ParamType.String,
        ),
        'msgType': serializeParam(
          _msgType,
          ParamType.String,
        ),
      }.withoutNulls;

  static FilterStruct fromSerializableMap(Map<String, dynamic> data) =>
      FilterStruct(
        senderBic: deserializeParam(
          data['senderBic'],
          ParamType.String,
          false,
        ),
        receiverBic: deserializeParam(
          data['receiverBic'],
          ParamType.String,
          false,
        ),
        inputRefNo: deserializeParam(
          data['inputRefNo'],
          ParamType.String,
          false,
        ),
        inpOut: deserializeParam(
          data['inpOut'],
          ParamType.String,
          false,
        ),
        fileName: deserializeParam(
          data['fileName'],
          ParamType.String,
          false,
        ),
        mtCode: deserializeParam(
          data['mtCode'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
        transactionRef: deserializeParam(
          data['transactionRef'],
          ParamType.String,
          false,
        ),
        fileType: deserializeParam(
          data['fileType'],
          ParamType.String,
          false,
        ),
        msgType: deserializeParam(
          data['msgType'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FilterStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FilterStruct &&
        senderBic == other.senderBic &&
        receiverBic == other.receiverBic &&
        inputRefNo == other.inputRefNo &&
        inpOut == other.inpOut &&
        fileName == other.fileName &&
        mtCode == other.mtCode &&
        time == other.time &&
        transactionRef == other.transactionRef &&
        fileType == other.fileType &&
        msgType == other.msgType;
  }

  @override
  int get hashCode => const ListEquality().hash([
        senderBic,
        receiverBic,
        inputRefNo,
        inpOut,
        fileName,
        mtCode,
        time,
        transactionRef,
        fileType,
        msgType
      ]);
}

FilterStruct createFilterStruct({
  String? senderBic,
  String? receiverBic,
  String? inputRefNo,
  String? inpOut,
  String? fileName,
  String? mtCode,
  String? time,
  String? transactionRef,
  String? fileType,
  String? msgType,
}) =>
    FilterStruct(
      senderBic: senderBic,
      receiverBic: receiverBic,
      inputRefNo: inputRefNo,
      inpOut: inpOut,
      fileName: fileName,
      mtCode: mtCode,
      time: time,
      transactionRef: transactionRef,
      fileType: fileType,
      msgType: msgType,
    );
