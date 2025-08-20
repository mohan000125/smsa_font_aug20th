// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ThresholdTempDataModelStruct extends BaseStruct {
  ThresholdTempDataModelStruct({
    int? thresholdId,
    String? msgCurrency,
    String? senderBic,
    String? msgType,
    int? categoryAFromAmount,
    int? categoryAToAmount,
    int? categoryBFromAmount,
    int? categoryBToAmount,
    String? createdBy,
    String? createdDate,
    String? modifiedBy,
    String? modifiedDate,
    String? verifiedBy,
    String? verifiedDate,
    String? action,
  })  : _thresholdId = thresholdId,
        _msgCurrency = msgCurrency,
        _senderBic = senderBic,
        _msgType = msgType,
        _categoryAFromAmount = categoryAFromAmount,
        _categoryAToAmount = categoryAToAmount,
        _categoryBFromAmount = categoryBFromAmount,
        _categoryBToAmount = categoryBToAmount,
        _createdBy = createdBy,
        _createdDate = createdDate,
        _modifiedBy = modifiedBy,
        _modifiedDate = modifiedDate,
        _verifiedBy = verifiedBy,
        _verifiedDate = verifiedDate,
        _action = action;

  // "thresholdId" field.
  int? _thresholdId;
  int get thresholdId => _thresholdId ?? 0;
  set thresholdId(int? val) => _thresholdId = val;

  void incrementThresholdId(int amount) => thresholdId = thresholdId + amount;

  bool hasThresholdId() => _thresholdId != null;

  // "msgCurrency" field.
  String? _msgCurrency;
  String get msgCurrency => _msgCurrency ?? '';
  set msgCurrency(String? val) => _msgCurrency = val;

  bool hasMsgCurrency() => _msgCurrency != null;

  // "senderBic" field.
  String? _senderBic;
  String get senderBic => _senderBic ?? '';
  set senderBic(String? val) => _senderBic = val;

  bool hasSenderBic() => _senderBic != null;

  // "msgType" field.
  String? _msgType;
  String get msgType => _msgType ?? '';
  set msgType(String? val) => _msgType = val;

  bool hasMsgType() => _msgType != null;

  // "categoryAFromAmount" field.
  int? _categoryAFromAmount;
  int get categoryAFromAmount => _categoryAFromAmount ?? 0;
  set categoryAFromAmount(int? val) => _categoryAFromAmount = val;

  void incrementCategoryAFromAmount(int amount) =>
      categoryAFromAmount = categoryAFromAmount + amount;

  bool hasCategoryAFromAmount() => _categoryAFromAmount != null;

  // "categoryAToAmount" field.
  int? _categoryAToAmount;
  int get categoryAToAmount => _categoryAToAmount ?? 0;
  set categoryAToAmount(int? val) => _categoryAToAmount = val;

  void incrementCategoryAToAmount(int amount) =>
      categoryAToAmount = categoryAToAmount + amount;

  bool hasCategoryAToAmount() => _categoryAToAmount != null;

  // "categoryBFromAmount" field.
  int? _categoryBFromAmount;
  int get categoryBFromAmount => _categoryBFromAmount ?? 0;
  set categoryBFromAmount(int? val) => _categoryBFromAmount = val;

  void incrementCategoryBFromAmount(int amount) =>
      categoryBFromAmount = categoryBFromAmount + amount;

  bool hasCategoryBFromAmount() => _categoryBFromAmount != null;

  // "categoryBToAmount" field.
  int? _categoryBToAmount;
  int get categoryBToAmount => _categoryBToAmount ?? 0;
  set categoryBToAmount(int? val) => _categoryBToAmount = val;

  void incrementCategoryBToAmount(int amount) =>
      categoryBToAmount = categoryBToAmount + amount;

  bool hasCategoryBToAmount() => _categoryBToAmount != null;

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

  // "action" field.
  String? _action;
  String get action => _action ?? '';
  set action(String? val) => _action = val;

  bool hasAction() => _action != null;

  static ThresholdTempDataModelStruct fromMap(Map<String, dynamic> data) =>
      ThresholdTempDataModelStruct(
        thresholdId: castToType<int>(data['thresholdId']),
        msgCurrency: data['msgCurrency'] as String?,
        senderBic: data['senderBic'] as String?,
        msgType: data['msgType'] as String?,
        categoryAFromAmount: castToType<int>(data['categoryAFromAmount']),
        categoryAToAmount: castToType<int>(data['categoryAToAmount']),
        categoryBFromAmount: castToType<int>(data['categoryBFromAmount']),
        categoryBToAmount: castToType<int>(data['categoryBToAmount']),
        createdBy: data['createdBy'] as String?,
        createdDate: data['createdDate'] as String?,
        modifiedBy: data['modifiedBy'] as String?,
        modifiedDate: data['modifiedDate'] as String?,
        verifiedBy: data['verifiedBy'] as String?,
        verifiedDate: data['verifiedDate'] as String?,
        action: data['action'] as String?,
      );

  static ThresholdTempDataModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ThresholdTempDataModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'thresholdId': _thresholdId,
        'msgCurrency': _msgCurrency,
        'senderBic': _senderBic,
        'msgType': _msgType,
        'categoryAFromAmount': _categoryAFromAmount,
        'categoryAToAmount': _categoryAToAmount,
        'categoryBFromAmount': _categoryBFromAmount,
        'categoryBToAmount': _categoryBToAmount,
        'createdBy': _createdBy,
        'createdDate': _createdDate,
        'modifiedBy': _modifiedBy,
        'modifiedDate': _modifiedDate,
        'verifiedBy': _verifiedBy,
        'verifiedDate': _verifiedDate,
        'action': _action,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'thresholdId': serializeParam(
          _thresholdId,
          ParamType.int,
        ),
        'msgCurrency': serializeParam(
          _msgCurrency,
          ParamType.String,
        ),
        'senderBic': serializeParam(
          _senderBic,
          ParamType.String,
        ),
        'msgType': serializeParam(
          _msgType,
          ParamType.String,
        ),
        'categoryAFromAmount': serializeParam(
          _categoryAFromAmount,
          ParamType.int,
        ),
        'categoryAToAmount': serializeParam(
          _categoryAToAmount,
          ParamType.int,
        ),
        'categoryBFromAmount': serializeParam(
          _categoryBFromAmount,
          ParamType.int,
        ),
        'categoryBToAmount': serializeParam(
          _categoryBToAmount,
          ParamType.int,
        ),
        'createdBy': serializeParam(
          _createdBy,
          ParamType.String,
        ),
        'createdDate': serializeParam(
          _createdDate,
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
        'action': serializeParam(
          _action,
          ParamType.String,
        ),
      }.withoutNulls;

  static ThresholdTempDataModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ThresholdTempDataModelStruct(
        thresholdId: deserializeParam(
          data['thresholdId'],
          ParamType.int,
          false,
        ),
        msgCurrency: deserializeParam(
          data['msgCurrency'],
          ParamType.String,
          false,
        ),
        senderBic: deserializeParam(
          data['senderBic'],
          ParamType.String,
          false,
        ),
        msgType: deserializeParam(
          data['msgType'],
          ParamType.String,
          false,
        ),
        categoryAFromAmount: deserializeParam(
          data['categoryAFromAmount'],
          ParamType.int,
          false,
        ),
        categoryAToAmount: deserializeParam(
          data['categoryAToAmount'],
          ParamType.int,
          false,
        ),
        categoryBFromAmount: deserializeParam(
          data['categoryBFromAmount'],
          ParamType.int,
          false,
        ),
        categoryBToAmount: deserializeParam(
          data['categoryBToAmount'],
          ParamType.int,
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
        action: deserializeParam(
          data['action'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ThresholdTempDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ThresholdTempDataModelStruct &&
        thresholdId == other.thresholdId &&
        msgCurrency == other.msgCurrency &&
        senderBic == other.senderBic &&
        msgType == other.msgType &&
        categoryAFromAmount == other.categoryAFromAmount &&
        categoryAToAmount == other.categoryAToAmount &&
        categoryBFromAmount == other.categoryBFromAmount &&
        categoryBToAmount == other.categoryBToAmount &&
        createdBy == other.createdBy &&
        createdDate == other.createdDate &&
        modifiedBy == other.modifiedBy &&
        modifiedDate == other.modifiedDate &&
        verifiedBy == other.verifiedBy &&
        verifiedDate == other.verifiedDate &&
        action == other.action;
  }

  @override
  int get hashCode => const ListEquality().hash([
        thresholdId,
        msgCurrency,
        senderBic,
        msgType,
        categoryAFromAmount,
        categoryAToAmount,
        categoryBFromAmount,
        categoryBToAmount,
        createdBy,
        createdDate,
        modifiedBy,
        modifiedDate,
        verifiedBy,
        verifiedDate,
        action
      ]);
}

ThresholdTempDataModelStruct createThresholdTempDataModelStruct({
  int? thresholdId,
  String? msgCurrency,
  String? senderBic,
  String? msgType,
  int? categoryAFromAmount,
  int? categoryAToAmount,
  int? categoryBFromAmount,
  int? categoryBToAmount,
  String? createdBy,
  String? createdDate,
  String? modifiedBy,
  String? modifiedDate,
  String? verifiedBy,
  String? verifiedDate,
  String? action,
}) =>
    ThresholdTempDataModelStruct(
      thresholdId: thresholdId,
      msgCurrency: msgCurrency,
      senderBic: senderBic,
      msgType: msgType,
      categoryAFromAmount: categoryAFromAmount,
      categoryAToAmount: categoryAToAmount,
      categoryBFromAmount: categoryBFromAmount,
      categoryBToAmount: categoryBToAmount,
      createdBy: createdBy,
      createdDate: createdDate,
      modifiedBy: modifiedBy,
      modifiedDate: modifiedDate,
      verifiedBy: verifiedBy,
      verifiedDate: verifiedDate,
      action: action,
    );
