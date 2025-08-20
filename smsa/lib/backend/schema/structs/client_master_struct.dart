// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientMasterStruct extends BaseStruct {
  ClientMasterStruct({
    int? id,
    String? customerId,
    String? customerEmail,
    String? customerAccountNo,
    String? messageType,
    String? fieldName,
    String? fieldValue,
    String? clientRequestType,
    String? nameIdentifiers,
    String? triggerFor,
    String? createdBy,
    String? createdDate,
    String? deleteDate,
    String? modifiedBy,
    String? modifiedDate,
    String? verifiedBy,
    String? verifiedDate,
    String? clientMasterMstId,
  })  : _id = id,
        _customerId = customerId,
        _customerEmail = customerEmail,
        _customerAccountNo = customerAccountNo,
        _messageType = messageType,
        _fieldName = fieldName,
        _fieldValue = fieldValue,
        _clientRequestType = clientRequestType,
        _nameIdentifiers = nameIdentifiers,
        _triggerFor = triggerFor,
        _createdBy = createdBy,
        _createdDate = createdDate,
        _deleteDate = deleteDate,
        _modifiedBy = modifiedBy,
        _modifiedDate = modifiedDate,
        _verifiedBy = verifiedBy,
        _verifiedDate = verifiedDate,
        _clientMasterMstId = clientMasterMstId;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "customerId" field.
  String? _customerId;
  String get customerId => _customerId ?? '';
  set customerId(String? val) => _customerId = val;

  bool hasCustomerId() => _customerId != null;

  // "customerEmail" field.
  String? _customerEmail;
  String get customerEmail => _customerEmail ?? '';
  set customerEmail(String? val) => _customerEmail = val;

  bool hasCustomerEmail() => _customerEmail != null;

  // "customerAccountNo" field.
  String? _customerAccountNo;
  String get customerAccountNo => _customerAccountNo ?? '';
  set customerAccountNo(String? val) => _customerAccountNo = val;

  bool hasCustomerAccountNo() => _customerAccountNo != null;

  // "messageType" field.
  String? _messageType;
  String get messageType => _messageType ?? '';
  set messageType(String? val) => _messageType = val;

  bool hasMessageType() => _messageType != null;

  // "fieldName" field.
  String? _fieldName;
  String get fieldName => _fieldName ?? '';
  set fieldName(String? val) => _fieldName = val;

  bool hasFieldName() => _fieldName != null;

  // "fieldValue" field.
  String? _fieldValue;
  String get fieldValue => _fieldValue ?? '';
  set fieldValue(String? val) => _fieldValue = val;

  bool hasFieldValue() => _fieldValue != null;

  // "clientRequestType" field.
  String? _clientRequestType;
  String get clientRequestType => _clientRequestType ?? '';
  set clientRequestType(String? val) => _clientRequestType = val;

  bool hasClientRequestType() => _clientRequestType != null;

  // "nameIdentifiers" field.
  String? _nameIdentifiers;
  String get nameIdentifiers => _nameIdentifiers ?? '';
  set nameIdentifiers(String? val) => _nameIdentifiers = val;

  bool hasNameIdentifiers() => _nameIdentifiers != null;

  // "triggerFor" field.
  String? _triggerFor;
  String get triggerFor => _triggerFor ?? '';
  set triggerFor(String? val) => _triggerFor = val;

  bool hasTriggerFor() => _triggerFor != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  set createdBy(String? val) => _createdBy = val;

  bool hasCreatedBy() => _createdBy != null;

  // "createdDate" field.
  String? _createdDate;
  String get createdDate => _createdDate ?? '';
  set createdDate(String? val) => _createdDate = val;

  bool hasCreatedDate() => _createdDate != null;

  // "deleteDate" field.
  String? _deleteDate;
  String get deleteDate => _deleteDate ?? '';
  set deleteDate(String? val) => _deleteDate = val;

  bool hasDeleteDate() => _deleteDate != null;

  // "modifiedBy" field.
  String? _modifiedBy;
  String get modifiedBy => _modifiedBy ?? '';
  set modifiedBy(String? val) => _modifiedBy = val;

  bool hasModifiedBy() => _modifiedBy != null;

  // "modifiedDate" field.
  String? _modifiedDate;
  String get modifiedDate => _modifiedDate ?? '';
  set modifiedDate(String? val) => _modifiedDate = val;

  bool hasModifiedDate() => _modifiedDate != null;

  // "verifiedBy" field.
  String? _verifiedBy;
  String get verifiedBy => _verifiedBy ?? '';
  set verifiedBy(String? val) => _verifiedBy = val;

  bool hasVerifiedBy() => _verifiedBy != null;

  // "verifiedDate" field.
  String? _verifiedDate;
  String get verifiedDate => _verifiedDate ?? '';
  set verifiedDate(String? val) => _verifiedDate = val;

  bool hasVerifiedDate() => _verifiedDate != null;

  // "client_master_mst_id" field.
  String? _clientMasterMstId;
  String get clientMasterMstId => _clientMasterMstId ?? '';
  set clientMasterMstId(String? val) => _clientMasterMstId = val;

  bool hasClientMasterMstId() => _clientMasterMstId != null;

  static ClientMasterStruct fromMap(Map<String, dynamic> data) =>
      ClientMasterStruct(
        id: castToType<int>(data['id']),
        customerId: data['customerId'] as String?,
        customerEmail: data['customerEmail'] as String?,
        customerAccountNo: data['customerAccountNo'] as String?,
        messageType: data['messageType'] as String?,
        fieldName: data['fieldName'] as String?,
        fieldValue: data['fieldValue'] as String?,
        clientRequestType: data['clientRequestType'] as String?,
        nameIdentifiers: data['nameIdentifiers'] as String?,
        triggerFor: data['triggerFor'] as String?,
        createdBy: data['createdBy'] as String?,
        createdDate: data['createdDate'] as String?,
        deleteDate: data['deleteDate'] as String?,
        modifiedBy: data['modifiedBy'] as String?,
        modifiedDate: data['modifiedDate'] as String?,
        verifiedBy: data['verifiedBy'] as String?,
        verifiedDate: data['verifiedDate'] as String?,
        clientMasterMstId: data['client_master_mst_id'] as String?,
      );

  static ClientMasterStruct? maybeFromMap(dynamic data) => data is Map
      ? ClientMasterStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'customerId': _customerId,
        'customerEmail': _customerEmail,
        'customerAccountNo': _customerAccountNo,
        'messageType': _messageType,
        'fieldName': _fieldName,
        'fieldValue': _fieldValue,
        'clientRequestType': _clientRequestType,
        'nameIdentifiers': _nameIdentifiers,
        'triggerFor': _triggerFor,
        'createdBy': _createdBy,
        'createdDate': _createdDate,
        'deleteDate': _deleteDate,
        'modifiedBy': _modifiedBy,
        'modifiedDate': _modifiedDate,
        'verifiedBy': _verifiedBy,
        'verifiedDate': _verifiedDate,
        'client_master_mst_id': _clientMasterMstId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'customerId': serializeParam(
          _customerId,
          ParamType.String,
        ),
        'customerEmail': serializeParam(
          _customerEmail,
          ParamType.String,
        ),
        'customerAccountNo': serializeParam(
          _customerAccountNo,
          ParamType.String,
        ),
        'messageType': serializeParam(
          _messageType,
          ParamType.String,
        ),
        'fieldName': serializeParam(
          _fieldName,
          ParamType.String,
        ),
        'fieldValue': serializeParam(
          _fieldValue,
          ParamType.String,
        ),
        'clientRequestType': serializeParam(
          _clientRequestType,
          ParamType.String,
        ),
        'nameIdentifiers': serializeParam(
          _nameIdentifiers,
          ParamType.String,
        ),
        'triggerFor': serializeParam(
          _triggerFor,
          ParamType.String,
        ),
        'createdBy': serializeParam(
          _createdBy,
          ParamType.String,
        ),
        'createdDate': serializeParam(
          _createdDate,
          ParamType.String,
        ),
        'deleteDate': serializeParam(
          _deleteDate,
          ParamType.String,
        ),
        'modifiedBy': serializeParam(
          _modifiedBy,
          ParamType.String,
        ),
        'modifiedDate': serializeParam(
          _modifiedDate,
          ParamType.String,
        ),
        'verifiedBy': serializeParam(
          _verifiedBy,
          ParamType.String,
        ),
        'verifiedDate': serializeParam(
          _verifiedDate,
          ParamType.String,
        ),
        'client_master_mst_id': serializeParam(
          _clientMasterMstId,
          ParamType.String,
        ),
      }.withoutNulls;

  static ClientMasterStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClientMasterStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        customerId: deserializeParam(
          data['customerId'],
          ParamType.String,
          false,
        ),
        customerEmail: deserializeParam(
          data['customerEmail'],
          ParamType.String,
          false,
        ),
        customerAccountNo: deserializeParam(
          data['customerAccountNo'],
          ParamType.String,
          false,
        ),
        messageType: deserializeParam(
          data['messageType'],
          ParamType.String,
          false,
        ),
        fieldName: deserializeParam(
          data['fieldName'],
          ParamType.String,
          false,
        ),
        fieldValue: deserializeParam(
          data['fieldValue'],
          ParamType.String,
          false,
        ),
        clientRequestType: deserializeParam(
          data['clientRequestType'],
          ParamType.String,
          false,
        ),
        nameIdentifiers: deserializeParam(
          data['nameIdentifiers'],
          ParamType.String,
          false,
        ),
        triggerFor: deserializeParam(
          data['triggerFor'],
          ParamType.String,
          false,
        ),
        createdBy: deserializeParam(
          data['createdBy'],
          ParamType.String,
          false,
        ),
        createdDate: deserializeParam(
          data['createdDate'],
          ParamType.String,
          false,
        ),
        deleteDate: deserializeParam(
          data['deleteDate'],
          ParamType.String,
          false,
        ),
        modifiedBy: deserializeParam(
          data['modifiedBy'],
          ParamType.String,
          false,
        ),
        modifiedDate: deserializeParam(
          data['modifiedDate'],
          ParamType.String,
          false,
        ),
        verifiedBy: deserializeParam(
          data['verifiedBy'],
          ParamType.String,
          false,
        ),
        verifiedDate: deserializeParam(
          data['verifiedDate'],
          ParamType.String,
          false,
        ),
        clientMasterMstId: deserializeParam(
          data['client_master_mst_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ClientMasterStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClientMasterStruct &&
        id == other.id &&
        customerId == other.customerId &&
        customerEmail == other.customerEmail &&
        customerAccountNo == other.customerAccountNo &&
        messageType == other.messageType &&
        fieldName == other.fieldName &&
        fieldValue == other.fieldValue &&
        clientRequestType == other.clientRequestType &&
        nameIdentifiers == other.nameIdentifiers &&
        triggerFor == other.triggerFor &&
        createdBy == other.createdBy &&
        createdDate == other.createdDate &&
        deleteDate == other.deleteDate &&
        modifiedBy == other.modifiedBy &&
        modifiedDate == other.modifiedDate &&
        verifiedBy == other.verifiedBy &&
        verifiedDate == other.verifiedDate &&
        clientMasterMstId == other.clientMasterMstId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        customerId,
        customerEmail,
        customerAccountNo,
        messageType,
        fieldName,
        fieldValue,
        clientRequestType,
        nameIdentifiers,
        triggerFor,
        createdBy,
        createdDate,
        deleteDate,
        modifiedBy,
        modifiedDate,
        verifiedBy,
        verifiedDate,
        clientMasterMstId
      ]);
}

ClientMasterStruct createClientMasterStruct({
  int? id,
  String? customerId,
  String? customerEmail,
  String? customerAccountNo,
  String? messageType,
  String? fieldName,
  String? fieldValue,
  String? clientRequestType,
  String? nameIdentifiers,
  String? triggerFor,
  String? createdBy,
  String? createdDate,
  String? deleteDate,
  String? modifiedBy,
  String? modifiedDate,
  String? verifiedBy,
  String? verifiedDate,
  String? clientMasterMstId,
}) =>
    ClientMasterStruct(
      id: id,
      customerId: customerId,
      customerEmail: customerEmail,
      customerAccountNo: customerAccountNo,
      messageType: messageType,
      fieldName: fieldName,
      fieldValue: fieldValue,
      clientRequestType: clientRequestType,
      nameIdentifiers: nameIdentifiers,
      triggerFor: triggerFor,
      createdBy: createdBy,
      createdDate: createdDate,
      deleteDate: deleteDate,
      modifiedBy: modifiedBy,
      modifiedDate: modifiedDate,
      verifiedBy: verifiedBy,
      verifiedDate: verifiedDate,
      clientMasterMstId: clientMasterMstId,
    );
