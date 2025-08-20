// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetSearchModelStruct extends BaseStruct {
  GetSearchModelStruct({
    String? fileName,
    String? date,
    String? time,
    int? mtCode,
    int? page,
    String? rawTxt,
    String? instanceRaw,
    String? headerRaw,
    String? priority,
    String? fileType,
    String? smsaHeaderObj,
    String? inputRefNo,
    String? outputRefNo,
    String? inpOut,
    String? msgDesc,
    String? msgType,
    String? slaId,
    String? senderBic,
    String? senderObj,
    String? senderBicDesc,
    String? receiverobj,
    String? receiverBic,
    String? receiverBicDesc,
    String? userRef,
    String? transactionRef,
    String? fileDate,
    String? mur,
    String? uetr,
    int? id,
    int? messageId,
    String? transactionAmount,
    String? currency,
  })  : _fileName = fileName,
        _date = date,
        _time = time,
        _mtCode = mtCode,
        _page = page,
        _rawTxt = rawTxt,
        _instanceRaw = instanceRaw,
        _headerRaw = headerRaw,
        _priority = priority,
        _fileType = fileType,
        _smsaHeaderObj = smsaHeaderObj,
        _inputRefNo = inputRefNo,
        _outputRefNo = outputRefNo,
        _inpOut = inpOut,
        _msgDesc = msgDesc,
        _msgType = msgType,
        _slaId = slaId,
        _senderBic = senderBic,
        _senderObj = senderObj,
        _senderBicDesc = senderBicDesc,
        _receiverobj = receiverobj,
        _receiverBic = receiverBic,
        _receiverBicDesc = receiverBicDesc,
        _userRef = userRef,
        _transactionRef = transactionRef,
        _fileDate = fileDate,
        _mur = mur,
        _uetr = uetr,
        _id = id,
        _messageId = messageId,
        _transactionAmount = transactionAmount,
        _currency = currency;

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

  // "rawTxt" field.
  String? _rawTxt;
  String get rawTxt => _rawTxt ?? '';
  set rawTxt(String? val) => _rawTxt = val;

  bool hasRawTxt() => _rawTxt != null;

  // "instanceRaw" field.
  String? _instanceRaw;
  String get instanceRaw => _instanceRaw ?? '';
  set instanceRaw(String? val) => _instanceRaw = val;

  bool hasInstanceRaw() => _instanceRaw != null;

  // "headerRaw" field.
  String? _headerRaw;
  String get headerRaw => _headerRaw ?? '';
  set headerRaw(String? val) => _headerRaw = val;

  bool hasHeaderRaw() => _headerRaw != null;

  // "priority" field.
  String? _priority;
  String get priority => _priority ?? '';
  set priority(String? val) => _priority = val;

  bool hasPriority() => _priority != null;

  // "fileType" field.
  String? _fileType;
  String get fileType => _fileType ?? '';
  set fileType(String? val) => _fileType = val;

  bool hasFileType() => _fileType != null;

  // "smsaHeaderObj" field.
  String? _smsaHeaderObj;
  String get smsaHeaderObj => _smsaHeaderObj ?? '';
  set smsaHeaderObj(String? val) => _smsaHeaderObj = val;

  bool hasSmsaHeaderObj() => _smsaHeaderObj != null;

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

  // "senderObj" field.
  String? _senderObj;
  String get senderObj => _senderObj ?? '';
  set senderObj(String? val) => _senderObj = val;

  bool hasSenderObj() => _senderObj != null;

  // "senderBicDesc" field.
  String? _senderBicDesc;
  String get senderBicDesc => _senderBicDesc ?? '';
  set senderBicDesc(String? val) => _senderBicDesc = val;

  bool hasSenderBicDesc() => _senderBicDesc != null;

  // "receiverobj" field.
  String? _receiverobj;
  String get receiverobj => _receiverobj ?? '';
  set receiverobj(String? val) => _receiverobj = val;

  bool hasReceiverobj() => _receiverobj != null;

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

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "messageId" field.
  int? _messageId;
  int get messageId => _messageId ?? 0;
  set messageId(int? val) => _messageId = val;

  void incrementMessageId(int amount) => messageId = messageId + amount;

  bool hasMessageId() => _messageId != null;

  // "transactionAmount" field.
  String? _transactionAmount;
  String get transactionAmount => _transactionAmount ?? '';
  set transactionAmount(String? val) => _transactionAmount = val;

  bool hasTransactionAmount() => _transactionAmount != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  static GetSearchModelStruct fromMap(Map<String, dynamic> data) =>
      GetSearchModelStruct(
        fileName: data['fileName'] as String?,
        date: data['date'] as String?,
        time: data['time'] as String?,
        mtCode: castToType<int>(data['mtCode']),
        page: castToType<int>(data['page']),
        rawTxt: data['rawTxt'] as String?,
        instanceRaw: data['instanceRaw'] as String?,
        headerRaw: data['headerRaw'] as String?,
        priority: data['priority'] as String?,
        fileType: data['fileType'] as String?,
        smsaHeaderObj: data['smsaHeaderObj'] as String?,
        inputRefNo: data['inputRefNo'] as String?,
        outputRefNo: data['outputRefNo'] as String?,
        inpOut: data['inpOut'] as String?,
        msgDesc: data['msgDesc'] as String?,
        msgType: data['msgType'] as String?,
        slaId: data['slaId'] as String?,
        senderBic: data['senderBic'] as String?,
        senderObj: data['senderObj'] as String?,
        senderBicDesc: data['senderBicDesc'] as String?,
        receiverobj: data['receiverobj'] as String?,
        receiverBic: data['receiverBic'] as String?,
        receiverBicDesc: data['receiverBicDesc'] as String?,
        userRef: data['userRef'] as String?,
        transactionRef: data['transactionRef'] as String?,
        fileDate: data['fileDate'] as String?,
        mur: data['mur'] as String?,
        uetr: data['uetr'] as String?,
        id: castToType<int>(data['id']),
        messageId: castToType<int>(data['messageId']),
        transactionAmount: data['transactionAmount'] as String?,
        currency: data['currency'] as String?,
      );

  static GetSearchModelStruct? maybeFromMap(dynamic data) => data is Map
      ? GetSearchModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'fileName': _fileName,
        'date': _date,
        'time': _time,
        'mtCode': _mtCode,
        'page': _page,
        'rawTxt': _rawTxt,
        'instanceRaw': _instanceRaw,
        'headerRaw': _headerRaw,
        'priority': _priority,
        'fileType': _fileType,
        'smsaHeaderObj': _smsaHeaderObj,
        'inputRefNo': _inputRefNo,
        'outputRefNo': _outputRefNo,
        'inpOut': _inpOut,
        'msgDesc': _msgDesc,
        'msgType': _msgType,
        'slaId': _slaId,
        'senderBic': _senderBic,
        'senderObj': _senderObj,
        'senderBicDesc': _senderBicDesc,
        'receiverobj': _receiverobj,
        'receiverBic': _receiverBic,
        'receiverBicDesc': _receiverBicDesc,
        'userRef': _userRef,
        'transactionRef': _transactionRef,
        'fileDate': _fileDate,
        'mur': _mur,
        'uetr': _uetr,
        'id': _id,
        'messageId': _messageId,
        'transactionAmount': _transactionAmount,
        'currency': _currency,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
        'rawTxt': serializeParam(
          _rawTxt,
          ParamType.String,
        ),
        'instanceRaw': serializeParam(
          _instanceRaw,
          ParamType.String,
        ),
        'headerRaw': serializeParam(
          _headerRaw,
          ParamType.String,
        ),
        'priority': serializeParam(
          _priority,
          ParamType.String,
        ),
        'fileType': serializeParam(
          _fileType,
          ParamType.String,
        ),
        'smsaHeaderObj': serializeParam(
          _smsaHeaderObj,
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
        'senderObj': serializeParam(
          _senderObj,
          ParamType.String,
        ),
        'senderBicDesc': serializeParam(
          _senderBicDesc,
          ParamType.String,
        ),
        'receiverobj': serializeParam(
          _receiverobj,
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
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'messageId': serializeParam(
          _messageId,
          ParamType.int,
        ),
        'transactionAmount': serializeParam(
          _transactionAmount,
          ParamType.String,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
      }.withoutNulls;

  static GetSearchModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      GetSearchModelStruct(
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
        rawTxt: deserializeParam(
          data['rawTxt'],
          ParamType.String,
          false,
        ),
        instanceRaw: deserializeParam(
          data['instanceRaw'],
          ParamType.String,
          false,
        ),
        headerRaw: deserializeParam(
          data['headerRaw'],
          ParamType.String,
          false,
        ),
        priority: deserializeParam(
          data['priority'],
          ParamType.String,
          false,
        ),
        fileType: deserializeParam(
          data['fileType'],
          ParamType.String,
          false,
        ),
        smsaHeaderObj: deserializeParam(
          data['smsaHeaderObj'],
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
        senderObj: deserializeParam(
          data['senderObj'],
          ParamType.String,
          false,
        ),
        senderBicDesc: deserializeParam(
          data['senderBicDesc'],
          ParamType.String,
          false,
        ),
        receiverobj: deserializeParam(
          data['receiverobj'],
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
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        messageId: deserializeParam(
          data['messageId'],
          ParamType.int,
          false,
        ),
        transactionAmount: deserializeParam(
          data['transactionAmount'],
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
  String toString() => 'GetSearchModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetSearchModelStruct &&
        fileName == other.fileName &&
        date == other.date &&
        time == other.time &&
        mtCode == other.mtCode &&
        page == other.page &&
        rawTxt == other.rawTxt &&
        instanceRaw == other.instanceRaw &&
        headerRaw == other.headerRaw &&
        priority == other.priority &&
        fileType == other.fileType &&
        smsaHeaderObj == other.smsaHeaderObj &&
        inputRefNo == other.inputRefNo &&
        outputRefNo == other.outputRefNo &&
        inpOut == other.inpOut &&
        msgDesc == other.msgDesc &&
        msgType == other.msgType &&
        slaId == other.slaId &&
        senderBic == other.senderBic &&
        senderObj == other.senderObj &&
        senderBicDesc == other.senderBicDesc &&
        receiverobj == other.receiverobj &&
        receiverBic == other.receiverBic &&
        receiverBicDesc == other.receiverBicDesc &&
        userRef == other.userRef &&
        transactionRef == other.transactionRef &&
        fileDate == other.fileDate &&
        mur == other.mur &&
        uetr == other.uetr &&
        id == other.id &&
        messageId == other.messageId &&
        transactionAmount == other.transactionAmount &&
        currency == other.currency;
  }

  @override
  int get hashCode => const ListEquality().hash([
        fileName,
        date,
        time,
        mtCode,
        page,
        rawTxt,
        instanceRaw,
        headerRaw,
        priority,
        fileType,
        smsaHeaderObj,
        inputRefNo,
        outputRefNo,
        inpOut,
        msgDesc,
        msgType,
        slaId,
        senderBic,
        senderObj,
        senderBicDesc,
        receiverobj,
        receiverBic,
        receiverBicDesc,
        userRef,
        transactionRef,
        fileDate,
        mur,
        uetr,
        id,
        messageId,
        transactionAmount,
        currency
      ]);
}

GetSearchModelStruct createGetSearchModelStruct({
  String? fileName,
  String? date,
  String? time,
  int? mtCode,
  int? page,
  String? rawTxt,
  String? instanceRaw,
  String? headerRaw,
  String? priority,
  String? fileType,
  String? smsaHeaderObj,
  String? inputRefNo,
  String? outputRefNo,
  String? inpOut,
  String? msgDesc,
  String? msgType,
  String? slaId,
  String? senderBic,
  String? senderObj,
  String? senderBicDesc,
  String? receiverobj,
  String? receiverBic,
  String? receiverBicDesc,
  String? userRef,
  String? transactionRef,
  String? fileDate,
  String? mur,
  String? uetr,
  int? id,
  int? messageId,
  String? transactionAmount,
  String? currency,
}) =>
    GetSearchModelStruct(
      fileName: fileName,
      date: date,
      time: time,
      mtCode: mtCode,
      page: page,
      rawTxt: rawTxt,
      instanceRaw: instanceRaw,
      headerRaw: headerRaw,
      priority: priority,
      fileType: fileType,
      smsaHeaderObj: smsaHeaderObj,
      inputRefNo: inputRefNo,
      outputRefNo: outputRefNo,
      inpOut: inpOut,
      msgDesc: msgDesc,
      msgType: msgType,
      slaId: slaId,
      senderBic: senderBic,
      senderObj: senderObj,
      senderBicDesc: senderBicDesc,
      receiverobj: receiverobj,
      receiverBic: receiverBic,
      receiverBicDesc: receiverBicDesc,
      userRef: userRef,
      transactionRef: transactionRef,
      fileDate: fileDate,
      mur: mur,
      uetr: uetr,
      id: id,
      messageId: messageId,
      transactionAmount: transactionAmount,
      currency: currency,
    );
