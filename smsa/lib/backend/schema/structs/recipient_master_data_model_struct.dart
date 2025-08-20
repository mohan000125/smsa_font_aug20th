// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipientMasterDataModelStruct extends BaseStruct {
  RecipientMasterDataModelStruct({
    int? smsaRamId,
    String? recEmpId,
    String? recEmailId,
    String? recEmpName,
    String? recGeoName,
    String? recSenderBic,
    String? recMsgType,
    String? recGrade,
    String? recCreatedBy,
    String? recCreatedDate,
    String? recModifiedBy,
    String? recModifiedDate,
    String? recVerifiedBy,
    String? recVerifiedDate,
    String? recCategory,
    String? recCCEmpId,
    String? recCCMailId,
    String? smsaRecOperation,
    String? smsaRecStatus,
  })  : _smsaRamId = smsaRamId,
        _recEmpId = recEmpId,
        _recEmailId = recEmailId,
        _recEmpName = recEmpName,
        _recGeoName = recGeoName,
        _recSenderBic = recSenderBic,
        _recMsgType = recMsgType,
        _recGrade = recGrade,
        _recCreatedBy = recCreatedBy,
        _recCreatedDate = recCreatedDate,
        _recModifiedBy = recModifiedBy,
        _recModifiedDate = recModifiedDate,
        _recVerifiedBy = recVerifiedBy,
        _recVerifiedDate = recVerifiedDate,
        _recCategory = recCategory,
        _recCCEmpId = recCCEmpId,
        _recCCMailId = recCCMailId,
        _smsaRecOperation = smsaRecOperation,
        _smsaRecStatus = smsaRecStatus;

  // "smsaRamId" field.
  int? _smsaRamId;
  int get smsaRamId => _smsaRamId ?? 0;
  set smsaRamId(int? val) => _smsaRamId = val;

  void incrementSmsaRamId(int amount) => smsaRamId = smsaRamId + amount;

  bool hasSmsaRamId() => _smsaRamId != null;

  // "recEmpId" field.
  String? _recEmpId;
  String get recEmpId => _recEmpId ?? '';
  set recEmpId(String? val) => _recEmpId = val;

  bool hasRecEmpId() => _recEmpId != null;

  // "recEmailId" field.
  String? _recEmailId;
  String get recEmailId => _recEmailId ?? '';
  set recEmailId(String? val) => _recEmailId = val;

  bool hasRecEmailId() => _recEmailId != null;

  // "recEmpName" field.
  String? _recEmpName;
  String get recEmpName => _recEmpName ?? '';
  set recEmpName(String? val) => _recEmpName = val;

  bool hasRecEmpName() => _recEmpName != null;

  // "recGeoName" field.
  String? _recGeoName;
  String get recGeoName => _recGeoName ?? '';
  set recGeoName(String? val) => _recGeoName = val;

  bool hasRecGeoName() => _recGeoName != null;

  // "recSenderBic" field.
  String? _recSenderBic;
  String get recSenderBic => _recSenderBic ?? '';
  set recSenderBic(String? val) => _recSenderBic = val;

  bool hasRecSenderBic() => _recSenderBic != null;

  // "recMsgType" field.
  String? _recMsgType;
  String get recMsgType => _recMsgType ?? '';
  set recMsgType(String? val) => _recMsgType = val;

  bool hasRecMsgType() => _recMsgType != null;

  // "recGrade" field.
  String? _recGrade;
  String get recGrade => _recGrade ?? '';
  set recGrade(String? val) => _recGrade = val;

  bool hasRecGrade() => _recGrade != null;

  // "recCreatedBy" field.
  String? _recCreatedBy;
  String get recCreatedBy => _recCreatedBy ?? '';
  set recCreatedBy(String? val) => _recCreatedBy = val;

  bool hasRecCreatedBy() => _recCreatedBy != null;

  // "recCreatedDate" field.
  String? _recCreatedDate;
  String get recCreatedDate => _recCreatedDate ?? '';
  set recCreatedDate(String? val) => _recCreatedDate = val;

  bool hasRecCreatedDate() => _recCreatedDate != null;

  // "recModifiedBy" field.
  String? _recModifiedBy;
  String get recModifiedBy => _recModifiedBy ?? '';
  set recModifiedBy(String? val) => _recModifiedBy = val;

  bool hasRecModifiedBy() => _recModifiedBy != null;

  // "recModifiedDate" field.
  String? _recModifiedDate;
  String get recModifiedDate => _recModifiedDate ?? '';
  set recModifiedDate(String? val) => _recModifiedDate = val;

  bool hasRecModifiedDate() => _recModifiedDate != null;

  // "recVerifiedBy" field.
  String? _recVerifiedBy;
  String get recVerifiedBy => _recVerifiedBy ?? '';
  set recVerifiedBy(String? val) => _recVerifiedBy = val;

  bool hasRecVerifiedBy() => _recVerifiedBy != null;

  // "recVerifiedDate" field.
  String? _recVerifiedDate;
  String get recVerifiedDate => _recVerifiedDate ?? '';
  set recVerifiedDate(String? val) => _recVerifiedDate = val;

  bool hasRecVerifiedDate() => _recVerifiedDate != null;

  // "recCategory" field.
  String? _recCategory;
  String get recCategory => _recCategory ?? '';
  set recCategory(String? val) => _recCategory = val;

  bool hasRecCategory() => _recCategory != null;

  // "recCCEmpId" field.
  String? _recCCEmpId;
  String get recCCEmpId => _recCCEmpId ?? '';
  set recCCEmpId(String? val) => _recCCEmpId = val;

  bool hasRecCCEmpId() => _recCCEmpId != null;

  // "recCCMailId" field.
  String? _recCCMailId;
  String get recCCMailId => _recCCMailId ?? '';
  set recCCMailId(String? val) => _recCCMailId = val;

  bool hasRecCCMailId() => _recCCMailId != null;

  // "smsaRecOperation" field.
  String? _smsaRecOperation;
  String get smsaRecOperation => _smsaRecOperation ?? '';
  set smsaRecOperation(String? val) => _smsaRecOperation = val;

  bool hasSmsaRecOperation() => _smsaRecOperation != null;

  // "smsaRecStatus" field.
  String? _smsaRecStatus;
  String get smsaRecStatus => _smsaRecStatus ?? '';
  set smsaRecStatus(String? val) => _smsaRecStatus = val;

  bool hasSmsaRecStatus() => _smsaRecStatus != null;

  static RecipientMasterDataModelStruct fromMap(Map<String, dynamic> data) =>
      RecipientMasterDataModelStruct(
        smsaRamId: castToType<int>(data['smsaRamId']),
        recEmpId: data['recEmpId'] as String?,
        recEmailId: data['recEmailId'] as String?,
        recEmpName: data['recEmpName'] as String?,
        recGeoName: data['recGeoName'] as String?,
        recSenderBic: data['recSenderBic'] as String?,
        recMsgType: data['recMsgType'] as String?,
        recGrade: data['recGrade'] as String?,
        recCreatedBy: data['recCreatedBy'] as String?,
        recCreatedDate: data['recCreatedDate'] as String?,
        recModifiedBy: data['recModifiedBy'] as String?,
        recModifiedDate: data['recModifiedDate'] as String?,
        recVerifiedBy: data['recVerifiedBy'] as String?,
        recVerifiedDate: data['recVerifiedDate'] as String?,
        recCategory: data['recCategory'] as String?,
        recCCEmpId: data['recCCEmpId'] as String?,
        recCCMailId: data['recCCMailId'] as String?,
        smsaRecOperation: data['smsaRecOperation'] as String?,
        smsaRecStatus: data['smsaRecStatus'] as String?,
      );

  static RecipientMasterDataModelStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? RecipientMasterDataModelStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'smsaRamId': _smsaRamId,
        'recEmpId': _recEmpId,
        'recEmailId': _recEmailId,
        'recEmpName': _recEmpName,
        'recGeoName': _recGeoName,
        'recSenderBic': _recSenderBic,
        'recMsgType': _recMsgType,
        'recGrade': _recGrade,
        'recCreatedBy': _recCreatedBy,
        'recCreatedDate': _recCreatedDate,
        'recModifiedBy': _recModifiedBy,
        'recModifiedDate': _recModifiedDate,
        'recVerifiedBy': _recVerifiedBy,
        'recVerifiedDate': _recVerifiedDate,
        'recCategory': _recCategory,
        'recCCEmpId': _recCCEmpId,
        'recCCMailId': _recCCMailId,
        'smsaRecOperation': _smsaRecOperation,
        'smsaRecStatus': _smsaRecStatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'smsaRamId': serializeParam(
          _smsaRamId,
          ParamType.int,
        ),
        'recEmpId': serializeParam(
          _recEmpId,
          ParamType.String,
        ),
        'recEmailId': serializeParam(
          _recEmailId,
          ParamType.String,
        ),
        'recEmpName': serializeParam(
          _recEmpName,
          ParamType.String,
        ),
        'recGeoName': serializeParam(
          _recGeoName,
          ParamType.String,
        ),
        'recSenderBic': serializeParam(
          _recSenderBic,
          ParamType.String,
        ),
        'recMsgType': serializeParam(
          _recMsgType,
          ParamType.String,
        ),
        'recGrade': serializeParam(
          _recGrade,
          ParamType.String,
        ),
        'recCreatedBy': serializeParam(
          _recCreatedBy,
          ParamType.String,
        ),
        'recCreatedDate': serializeParam(
          _recCreatedDate,
          ParamType.String,
        ),
        'recModifiedBy': serializeParam(
          _recModifiedBy,
          ParamType.String,
        ),
        'recModifiedDate': serializeParam(
          _recModifiedDate,
          ParamType.String,
        ),
        'recVerifiedBy': serializeParam(
          _recVerifiedBy,
          ParamType.String,
        ),
        'recVerifiedDate': serializeParam(
          _recVerifiedDate,
          ParamType.String,
        ),
        'recCategory': serializeParam(
          _recCategory,
          ParamType.String,
        ),
        'recCCEmpId': serializeParam(
          _recCCEmpId,
          ParamType.String,
        ),
        'recCCMailId': serializeParam(
          _recCCMailId,
          ParamType.String,
        ),
        'smsaRecOperation': serializeParam(
          _smsaRecOperation,
          ParamType.String,
        ),
        'smsaRecStatus': serializeParam(
          _smsaRecStatus,
          ParamType.String,
        ),
      }.withoutNulls;

  static RecipientMasterDataModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RecipientMasterDataModelStruct(
        smsaRamId: deserializeParam(
          data['smsaRamId'],
          ParamType.int,
          false,
        ),
        recEmpId: deserializeParam(
          data['recEmpId'],
          ParamType.String,
          false,
        ),
        recEmailId: deserializeParam(
          data['recEmailId'],
          ParamType.String,
          false,
        ),
        recEmpName: deserializeParam(
          data['recEmpName'],
          ParamType.String,
          false,
        ),
        recGeoName: deserializeParam(
          data['recGeoName'],
          ParamType.String,
          false,
        ),
        recSenderBic: deserializeParam(
          data['recSenderBic'],
          ParamType.String,
          false,
        ),
        recMsgType: deserializeParam(
          data['recMsgType'],
          ParamType.String,
          false,
        ),
        recGrade: deserializeParam(
          data['recGrade'],
          ParamType.String,
          false,
        ),
        recCreatedBy: deserializeParam(
          data['recCreatedBy'],
          ParamType.String,
          false,
        ),
        recCreatedDate: deserializeParam(
          data['recCreatedDate'],
          ParamType.String,
          false,
        ),
        recModifiedBy: deserializeParam(
          data['recModifiedBy'],
          ParamType.String,
          false,
        ),
        recModifiedDate: deserializeParam(
          data['recModifiedDate'],
          ParamType.String,
          false,
        ),
        recVerifiedBy: deserializeParam(
          data['recVerifiedBy'],
          ParamType.String,
          false,
        ),
        recVerifiedDate: deserializeParam(
          data['recVerifiedDate'],
          ParamType.String,
          false,
        ),
        recCategory: deserializeParam(
          data['recCategory'],
          ParamType.String,
          false,
        ),
        recCCEmpId: deserializeParam(
          data['recCCEmpId'],
          ParamType.String,
          false,
        ),
        recCCMailId: deserializeParam(
          data['recCCMailId'],
          ParamType.String,
          false,
        ),
        smsaRecOperation: deserializeParam(
          data['smsaRecOperation'],
          ParamType.String,
          false,
        ),
        smsaRecStatus: deserializeParam(
          data['smsaRecStatus'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RecipientMasterDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RecipientMasterDataModelStruct &&
        smsaRamId == other.smsaRamId &&
        recEmpId == other.recEmpId &&
        recEmailId == other.recEmailId &&
        recEmpName == other.recEmpName &&
        recGeoName == other.recGeoName &&
        recSenderBic == other.recSenderBic &&
        recMsgType == other.recMsgType &&
        recGrade == other.recGrade &&
        recCreatedBy == other.recCreatedBy &&
        recCreatedDate == other.recCreatedDate &&
        recModifiedBy == other.recModifiedBy &&
        recModifiedDate == other.recModifiedDate &&
        recVerifiedBy == other.recVerifiedBy &&
        recVerifiedDate == other.recVerifiedDate &&
        recCategory == other.recCategory &&
        recCCEmpId == other.recCCEmpId &&
        recCCMailId == other.recCCMailId &&
        smsaRecOperation == other.smsaRecOperation &&
        smsaRecStatus == other.smsaRecStatus;
  }

  @override
  int get hashCode => const ListEquality().hash([
        smsaRamId,
        recEmpId,
        recEmailId,
        recEmpName,
        recGeoName,
        recSenderBic,
        recMsgType,
        recGrade,
        recCreatedBy,
        recCreatedDate,
        recModifiedBy,
        recModifiedDate,
        recVerifiedBy,
        recVerifiedDate,
        recCategory,
        recCCEmpId,
        recCCMailId,
        smsaRecOperation,
        smsaRecStatus
      ]);
}

RecipientMasterDataModelStruct createRecipientMasterDataModelStruct({
  int? smsaRamId,
  String? recEmpId,
  String? recEmailId,
  String? recEmpName,
  String? recGeoName,
  String? recSenderBic,
  String? recMsgType,
  String? recGrade,
  String? recCreatedBy,
  String? recCreatedDate,
  String? recModifiedBy,
  String? recModifiedDate,
  String? recVerifiedBy,
  String? recVerifiedDate,
  String? recCategory,
  String? recCCEmpId,
  String? recCCMailId,
  String? smsaRecOperation,
  String? smsaRecStatus,
}) =>
    RecipientMasterDataModelStruct(
      smsaRamId: smsaRamId,
      recEmpId: recEmpId,
      recEmailId: recEmailId,
      recEmpName: recEmpName,
      recGeoName: recGeoName,
      recSenderBic: recSenderBic,
      recMsgType: recMsgType,
      recGrade: recGrade,
      recCreatedBy: recCreatedBy,
      recCreatedDate: recCreatedDate,
      recModifiedBy: recModifiedBy,
      recModifiedDate: recModifiedDate,
      recVerifiedBy: recVerifiedBy,
      recVerifiedDate: recVerifiedDate,
      recCategory: recCategory,
      recCCEmpId: recCCEmpId,
      recCCMailId: recCCMailId,
      smsaRecOperation: smsaRecOperation,
      smsaRecStatus: smsaRecStatus,
    );
