// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecentTransactionsStruct extends BaseStruct {
  RecentTransactionsStruct({
    int? messageId,
    String? fileName,
    String? date,
    String? time,
    int? mtCode,
    int? page,
    String? fileType,
    String? priority,
    String? inputRefNo,
    String? outputRefNo,
    String? inpOut,
    String? msgDesc,
    String? msgType,
    String? slaId,
    String? senderBic,
    String? senderBicDesc,
    String? receiverBic,
    String? receiverBicDesc,
    String? userRef,
    String? transactionRef,
    String? fileDate,
    String? mur,
    String? uetr,
    String? transactionAmount,
    String? transactionResult,
    String? primaryFormat,
    String? secondaryFormat,
    String? currency,
  })  : _messageId = messageId,
        _fileName = fileName,
        _date = date,
        _time = time,
        _mtCode = mtCode,
        _page = page,
        _fileType = fileType,
        _priority = priority,
        _inputRefNo = inputRefNo,
        _outputRefNo = outputRefNo,
        _inpOut = inpOut,
        _msgDesc = msgDesc,
        _msgType = msgType,
        _slaId = slaId,
        _senderBic = senderBic,
        _senderBicDesc = senderBicDesc,
        _receiverBic = receiverBic,
        _receiverBicDesc = receiverBicDesc,
        _userRef = userRef,
        _transactionRef = transactionRef,
        _fileDate = fileDate,
        _mur = mur,
        _uetr = uetr,
        _transactionAmount = transactionAmount,
        _transactionResult = transactionResult,
        _primaryFormat = primaryFormat,
        _secondaryFormat = secondaryFormat,
        _currency = currency;

  // "messageId" field.
  int? _messageId;
  int get messageId => _messageId ?? 0;
  set messageId(int? val) => _messageId = val;

  void incrementMessageId(int amount) => messageId = messageId + amount;

  bool hasMessageId() => _messageId != null;

  // "fileName" field.
  String? _fileName;
  String get fileName => _fileName ?? '';
  set fileName(String? val) => _fileName = val;

  bool hasFileName() => _fileName != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  // "mtCode" field.
  int? _mtCode;
  int get mtCode => _mtCode ?? 0;
  set mtCode(int? val) => _mtCode = val;

  void incrementMtCode(int amount) => mtCode = mtCode + amount;

  bool hasMtCode() => _mtCode != null;

  // "page" field.
  int? _page;
  int get page => _page ?? 0;
  set page(int? val) => _page = val;

  void incrementPage(int amount) => page = page + amount;

  bool hasPage() => _page != null;

  // "fileType" field.
  String? _fileType;
  String get fileType => _fileType ?? '';
  set fileType(String? val) => _fileType = val;

  bool hasFileType() => _fileType != null;

  // "priority" field.
  String? _priority;
  String get priority => _priority ?? '';
  set priority(String? val) => _priority = val;

  bool hasPriority() => _priority != null;

  // "inputRefNo" field.
  String? _inputRefNo;
  String get inputRefNo => _inputRefNo ?? '';
  set inputRefNo(String? val) => _inputRefNo = val;

  bool hasInputRefNo() => _inputRefNo != null;

  // "outputRefNo" field.
  String? _outputRefNo;
  String get outputRefNo => _outputRefNo ?? '';
  set outputRefNo(String? val) => _outputRefNo = val;

  bool hasOutputRefNo() => _outputRefNo != null;

  // "inpOut" field.
  String? _inpOut;
  String get inpOut => _inpOut ?? '';
  set inpOut(String? val) => _inpOut = val;

  bool hasInpOut() => _inpOut != null;

  // "msgDesc" field.
  String? _msgDesc;
  String get msgDesc => _msgDesc ?? '';
  set msgDesc(String? val) => _msgDesc = val;

  bool hasMsgDesc() => _msgDesc != null;

  // "msgType" field.
  String? _msgType;
  String get msgType => _msgType ?? '';
  set msgType(String? val) => _msgType = val;

  bool hasMsgType() => _msgType != null;

  // "slaId" field.
  String? _slaId;
  String get slaId => _slaId ?? '';
  set slaId(String? val) => _slaId = val;

  bool hasSlaId() => _slaId != null;

  // "senderBic" field.
  String? _senderBic;
  String get senderBic => _senderBic ?? '';
  set senderBic(String? val) => _senderBic = val;

  bool hasSenderBic() => _senderBic != null;

  // "senderBicDesc" field.
  String? _senderBicDesc;
  String get senderBicDesc => _senderBicDesc ?? '';
  set senderBicDesc(String? val) => _senderBicDesc = val;

  bool hasSenderBicDesc() => _senderBicDesc != null;

  // "receiverBic" field.
  String? _receiverBic;
  String get receiverBic => _receiverBic ?? '';
  set receiverBic(String? val) => _receiverBic = val;

  bool hasReceiverBic() => _receiverBic != null;

  // "receiverBicDesc" field.
  String? _receiverBicDesc;
  String get receiverBicDesc => _receiverBicDesc ?? '';
  set receiverBicDesc(String? val) => _receiverBicDesc = val;

  bool hasReceiverBicDesc() => _receiverBicDesc != null;

  // "userRef" field.
  String? _userRef;
  String get userRef => _userRef ?? '';
  set userRef(String? val) => _userRef = val;

  bool hasUserRef() => _userRef != null;

  // "transactionRef" field.
  String? _transactionRef;
  String get transactionRef => _transactionRef ?? '';
  set transactionRef(String? val) => _transactionRef = val;

  bool hasTransactionRef() => _transactionRef != null;

  // "fileDate" field.
  String? _fileDate;
  String get fileDate => _fileDate ?? '';
  set fileDate(String? val) => _fileDate = val;

  bool hasFileDate() => _fileDate != null;

  // "mur" field.
  String? _mur;
  String get mur => _mur ?? '';
  set mur(String? val) => _mur = val;

  bool hasMur() => _mur != null;

  // "uetr" field.
  String? _uetr;
  String get uetr => _uetr ?? '';
  set uetr(String? val) => _uetr = val;

  bool hasUetr() => _uetr != null;

  // "transactionAmount" field.
  String? _transactionAmount;
  String get transactionAmount => _transactionAmount ?? '';
  set transactionAmount(String? val) => _transactionAmount = val;

  bool hasTransactionAmount() => _transactionAmount != null;

  // "transactionResult" field.
  String? _transactionResult;
  String get transactionResult => _transactionResult ?? '';
  set transactionResult(String? val) => _transactionResult = val;

  bool hasTransactionResult() => _transactionResult != null;

  // "primaryFormat" field.
  String? _primaryFormat;
  String get primaryFormat => _primaryFormat ?? '';
  set primaryFormat(String? val) => _primaryFormat = val;

  bool hasPrimaryFormat() => _primaryFormat != null;

  // "secondaryFormat" field.
  String? _secondaryFormat;
  String get secondaryFormat => _secondaryFormat ?? '';
  set secondaryFormat(String? val) => _secondaryFormat = val;

  bool hasSecondaryFormat() => _secondaryFormat != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  static RecentTransactionsStruct fromMap(Map<String, dynamic> data) =>
      RecentTransactionsStruct(
        messageId: castToType<int>(data['messageId']),
        fileName: data['fileName'] as String?,
        date: data['date'] as String?,
        time: data['time'] as String?,
        mtCode: castToType<int>(data['mtCode']),
        page: castToType<int>(data['page']),
        fileType: data['fileType'] as String?,
        priority: data['priority'] as String?,
        inputRefNo: data['inputRefNo'] as String?,
        outputRefNo: data['outputRefNo'] as String?,
        inpOut: data['inpOut'] as String?,
        msgDesc: data['msgDesc'] as String?,
        msgType: data['msgType'] as String?,
        slaId: data['slaId'] as String?,
        senderBic: data['senderBic'] as String?,
        senderBicDesc: data['senderBicDesc'] as String?,
        receiverBic: data['receiverBic'] as String?,
        receiverBicDesc: data['receiverBicDesc'] as String?,
        userRef: data['userRef'] as String?,
        transactionRef: data['transactionRef'] as String?,
        fileDate: data['fileDate'] as String?,
        mur: data['mur'] as String?,
        uetr: data['uetr'] as String?,
        transactionAmount: data['transactionAmount'] as String?,
        transactionResult: data['transactionResult'] as String?,
        primaryFormat: data['primaryFormat'] as String?,
        secondaryFormat: data['secondaryFormat'] as String?,
        currency: data['currency'] as String?,
      );

  static RecentTransactionsStruct? maybeFromMap(dynamic data) => data is Map
      ? RecentTransactionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'messageId': _messageId,
        'fileName': _fileName,
        'date': _date,
        'time': _time,
        'mtCode': _mtCode,
        'page': _page,
        'fileType': _fileType,
        'priority': _priority,
        'inputRefNo': _inputRefNo,
        'outputRefNo': _outputRefNo,
        'inpOut': _inpOut,
        'msgDesc': _msgDesc,
        'msgType': _msgType,
        'slaId': _slaId,
        'senderBic': _senderBic,
        'senderBicDesc': _senderBicDesc,
        'receiverBic': _receiverBic,
        'receiverBicDesc': _receiverBicDesc,
        'userRef': _userRef,
        'transactionRef': _transactionRef,
        'fileDate': _fileDate,
        'mur': _mur,
        'uetr': _uetr,
        'transactionAmount': _transactionAmount,
        'transactionResult': _transactionResult,
        'primaryFormat': _primaryFormat,
        'secondaryFormat': _secondaryFormat,
        'currency': _currency,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'messageId': serializeParam(
          _messageId,
          ParamType.int,
        ),
        'fileName': serializeParam(
          _fileName,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
        'mtCode': serializeParam(
          _mtCode,
          ParamType.int,
        ),
        'page': serializeParam(
          _page,
          ParamType.int,
        ),
        'fileType': serializeParam(
          _fileType,
          ParamType.String,
        ),
        'priority': serializeParam(
          _priority,
          ParamType.String,
        ),
        'inputRefNo': serializeParam(
          _inputRefNo,
          ParamType.String,
        ),
        'outputRefNo': serializeParam(
          _outputRefNo,
          ParamType.String,
        ),
        'inpOut': serializeParam(
          _inpOut,
          ParamType.String,
        ),
        'msgDesc': serializeParam(
          _msgDesc,
          ParamType.String,
        ),
        'msgType': serializeParam(
          _msgType,
          ParamType.String,
        ),
        'slaId': serializeParam(
          _slaId,
          ParamType.String,
        ),
        'senderBic': serializeParam(
          _senderBic,
          ParamType.String,
        ),
        'senderBicDesc': serializeParam(
          _senderBicDesc,
          ParamType.String,
        ),
        'receiverBic': serializeParam(
          _receiverBic,
          ParamType.String,
        ),
        'receiverBicDesc': serializeParam(
          _receiverBicDesc,
          ParamType.String,
        ),
        'userRef': serializeParam(
          _userRef,
          ParamType.String,
        ),
        'transactionRef': serializeParam(
          _transactionRef,
          ParamType.String,
        ),
        'fileDate': serializeParam(
          _fileDate,
          ParamType.String,
        ),
        'mur': serializeParam(
          _mur,
          ParamType.String,
        ),
        'uetr': serializeParam(
          _uetr,
          ParamType.String,
        ),
        'transactionAmount': serializeParam(
          _transactionAmount,
          ParamType.String,
        ),
        'transactionResult': serializeParam(
          _transactionResult,
          ParamType.String,
        ),
        'primaryFormat': serializeParam(
          _primaryFormat,
          ParamType.String,
        ),
        'secondaryFormat': serializeParam(
          _secondaryFormat,
          ParamType.String,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
      }.withoutNulls;

  static RecentTransactionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RecentTransactionsStruct(
        messageId: deserializeParam(
          data['messageId'],
          ParamType.int,
          false,
        ),
        fileName: deserializeParam(
          data['fileName'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
        mtCode: deserializeParam(
          data['mtCode'],
          ParamType.int,
          false,
        ),
        page: deserializeParam(
          data['page'],
          ParamType.int,
          false,
        ),
        fileType: deserializeParam(
          data['fileType'],
          ParamType.String,
          false,
        ),
        priority: deserializeParam(
          data['priority'],
          ParamType.String,
          false,
        ),
        inputRefNo: deserializeParam(
          data['inputRefNo'],
          ParamType.String,
          false,
        ),
        outputRefNo: deserializeParam(
          data['outputRefNo'],
          ParamType.String,
          false,
        ),
        inpOut: deserializeParam(
          data['inpOut'],
          ParamType.String,
          false,
        ),
        msgDesc: deserializeParam(
          data['msgDesc'],
          ParamType.String,
          false,
        ),
        msgType: deserializeParam(
          data['msgType'],
          ParamType.String,
          false,
        ),
        slaId: deserializeParam(
          data['slaId'],
          ParamType.String,
          false,
        ),
        senderBic: deserializeParam(
          data['senderBic'],
          ParamType.String,
          false,
        ),
        senderBicDesc: deserializeParam(
          data['senderBicDesc'],
          ParamType.String,
          false,
        ),
        receiverBic: deserializeParam(
          data['receiverBic'],
          ParamType.String,
          false,
        ),
        receiverBicDesc: deserializeParam(
          data['receiverBicDesc'],
          ParamType.String,
          false,
        ),
        userRef: deserializeParam(
          data['userRef'],
          ParamType.String,
          false,
        ),
        transactionRef: deserializeParam(
          data['transactionRef'],
          ParamType.String,
          false,
        ),
        fileDate: deserializeParam(
          data['fileDate'],
          ParamType.String,
          false,
        ),
        mur: deserializeParam(
          data['mur'],
          ParamType.String,
          false,
        ),
        uetr: deserializeParam(
          data['uetr'],
          ParamType.String,
          false,
        ),
        transactionAmount: deserializeParam(
          data['transactionAmount'],
          ParamType.String,
          false,
        ),
        transactionResult: deserializeParam(
          data['transactionResult'],
          ParamType.String,
          false,
        ),
        primaryFormat: deserializeParam(
          data['primaryFormat'],
          ParamType.String,
          false,
        ),
        secondaryFormat: deserializeParam(
          data['secondaryFormat'],
          ParamType.String,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RecentTransactionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RecentTransactionsStruct &&
        messageId == other.messageId &&
        fileName == other.fileName &&
        date == other.date &&
        time == other.time &&
        mtCode == other.mtCode &&
        page == other.page &&
        fileType == other.fileType &&
        priority == other.priority &&
        inputRefNo == other.inputRefNo &&
        outputRefNo == other.outputRefNo &&
        inpOut == other.inpOut &&
        msgDesc == other.msgDesc &&
        msgType == other.msgType &&
        slaId == other.slaId &&
        senderBic == other.senderBic &&
        senderBicDesc == other.senderBicDesc &&
        receiverBic == other.receiverBic &&
        receiverBicDesc == other.receiverBicDesc &&
        userRef == other.userRef &&
        transactionRef == other.transactionRef &&
        fileDate == other.fileDate &&
        mur == other.mur &&
        uetr == other.uetr &&
        transactionAmount == other.transactionAmount &&
        transactionResult == other.transactionResult &&
        primaryFormat == other.primaryFormat &&
        secondaryFormat == other.secondaryFormat &&
        currency == other.currency;
  }

  @override
  int get hashCode => const ListEquality().hash([
        messageId,
        fileName,
        date,
        time,
        mtCode,
        page,
        fileType,
        priority,
        inputRefNo,
        outputRefNo,
        inpOut,
        msgDesc,
        msgType,
        slaId,
        senderBic,
        senderBicDesc,
        receiverBic,
        receiverBicDesc,
        userRef,
        transactionRef,
        fileDate,
        mur,
        uetr,
        transactionAmount,
        transactionResult,
        primaryFormat,
        secondaryFormat,
        currency
      ]);
}

RecentTransactionsStruct createRecentTransactionsStruct({
  int? messageId,
  String? fileName,
  String? date,
  String? time,
  int? mtCode,
  int? page,
  String? fileType,
  String? priority,
  String? inputRefNo,
  String? outputRefNo,
  String? inpOut,
  String? msgDesc,
  String? msgType,
  String? slaId,
  String? senderBic,
  String? senderBicDesc,
  String? receiverBic,
  String? receiverBicDesc,
  String? userRef,
  String? transactionRef,
  String? fileDate,
  String? mur,
  String? uetr,
  String? transactionAmount,
  String? transactionResult,
  String? primaryFormat,
  String? secondaryFormat,
  String? currency,
}) =>
    RecentTransactionsStruct(
      messageId: messageId,
      fileName: fileName,
      date: date,
      time: time,
      mtCode: mtCode,
      page: page,
      fileType: fileType,
      priority: priority,
      inputRefNo: inputRefNo,
      outputRefNo: outputRefNo,
      inpOut: inpOut,
      msgDesc: msgDesc,
      msgType: msgType,
      slaId: slaId,
      senderBic: senderBic,
      senderBicDesc: senderBicDesc,
      receiverBic: receiverBic,
      receiverBicDesc: receiverBicDesc,
      userRef: userRef,
      transactionRef: transactionRef,
      fileDate: fileDate,
      mur: mur,
      uetr: uetr,
      transactionAmount: transactionAmount,
      transactionResult: transactionResult,
      primaryFormat: primaryFormat,
      secondaryFormat: secondaryFormat,
      currency: currency,
    );
