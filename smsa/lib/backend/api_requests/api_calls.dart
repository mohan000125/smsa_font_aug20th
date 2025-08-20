import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start DashBoardandSearch Group Code

class DashBoardandSearchGroup {
  static String getBaseUrl({
    String? apiBaseURL,
  }) {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    return '${apiBaseURL}';
  }

  static Map<String, String> headers = {};
  static DashBoardCall dashBoardCall = DashBoardCall();
  static FetchDataCall fetchDataCall = FetchDataCall();
  static SearchApiCall searchApiCall = SearchApiCall();
  static DownloadCheckCall downloadCheckCall = DownloadCheckCall();
  static MessageCountsCall messageCountsCall = MessageCountsCall();
  static MessageTypeCountsCall messageTypeCountsCall = MessageTypeCountsCall();
  static RecentTransactionsCall recentTransactionsCall =
      RecentTransactionsCall();
  static BicCodeSentCall bicCodeSentCall = BicCodeSentCall();
  static BicCodeReceivedCall bicCodeReceivedCall = BicCodeReceivedCall();
  static MessageTypesListCall messageTypesListCall = MessageTypesListCall();
  static GlobeDataCall globeDataCall = GlobeDataCall();
  static DownloadXLSApiCall downloadXLSApiCall = DownloadXLSApiCall();
}

class DashBoardCall {
  Future<ApiCallResponse> call({
    String? apiBaseURL,
  }) async {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    final baseUrl = DashBoardandSearchGroup.getBaseUrl(
      apiBaseURL: apiBaseURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'DashBoard',
      apiUrl: '${baseUrl}/SmsaDashboard/dashBoard',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchDataCall {
  Future<ApiCallResponse> call({
    String? apiBaseURL,
  }) async {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    final baseUrl = DashBoardandSearchGroup.getBaseUrl(
      apiBaseURL: apiBaseURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'fetchData',
      apiUrl: '${baseUrl}/SmsaDashboard/getSmsaData',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchApiCall {
  Future<ApiCallResponse> call({
    String? token = '',
    List<String>? senderBicList,
    List<String>? receiverList,
    List<String>? inputreferenceList,
    List<String>? fileNemList,
    List<String>? inpOutList,
    List<String>? emptyCodeList,
    List<String>? timeList,
    List<String>? transactionRefList,
    List<String>? fileTypeList,
    List<String>? msgTypeList,
    int? page,
    String? deviceHash = '',
    String? encrypted = '',
    String? fromTime = '',
    String? toTime = '',
    String? fromAmount = '',
    String? toAmount = '',
    String? rawMessageData = '',
    String? apiBaseURL,
  }) async {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    final baseUrl = DashBoardandSearchGroup.getBaseUrl(
      apiBaseURL: apiBaseURL,
    );
    final senderBic = _serializeList(senderBicList);
    final receiver = _serializeList(receiverList);
    final inputreference = _serializeList(inputreferenceList);
    final fileNem = _serializeList(fileNemList);
    final inpOut = _serializeList(inpOutList);
    final emptyCode = _serializeList(emptyCodeList);
    final time = _serializeList(timeList);
    final transactionRef = _serializeList(transactionRefList);
    final fileType = _serializeList(fileTypeList);
    final msgType = _serializeList(msgTypeList);

    final ffApiRequestBody = '''
{
  "encryptedPayload": "${escapeStringForJson(encrypted)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'searchApi',
      apiUrl: '${baseUrl}/smsa-search-api/searchApi?page=${page}&size=10',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DownloadCheckCall {
  Future<ApiCallResponse> call({
    String? token = '',
    List<String>? senderBicList,
    List<String>? receiverList,
    List<String>? inputreferenceList,
    List<String>? fileNemList,
    List<String>? inpOutList,
    List<String>? emptyCodeList,
    List<String>? timeList,
    List<String>? transactionRefList,
    List<String>? fileTypeList,
    List<String>? msgTypeList,
    int? page,
    String? deviceHash = '',
    String? downloadFormat = '',
    String? apiBaseURL,
  }) async {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    final baseUrl = DashBoardandSearchGroup.getBaseUrl(
      apiBaseURL: apiBaseURL,
    );
    final senderBic = _serializeList(senderBicList);
    final receiver = _serializeList(receiverList);
    final inputreference = _serializeList(inputreferenceList);
    final fileNem = _serializeList(fileNemList);
    final inpOut = _serializeList(inpOutList);
    final emptyCode = _serializeList(emptyCodeList);
    final time = _serializeList(timeList);
    final transactionRef = _serializeList(transactionRefList);
    final fileType = _serializeList(fileTypeList);
    final msgType = _serializeList(msgTypeList);

    final ffApiRequestBody = '''
{
  "tokenRequest": {
    "token": "${escapeStringForJson(token)}",
    "DeviceHash": "${escapeStringForJson(deviceHash)}"
  },
  "filter": {
    "senderBic": ${senderBic},
    "receiverBic": ${receiver},
    "inputRefNo": ${inputreference},
    "inpOut": ${inpOut},
    "fileName": ${fileNem},
    "mtCode": ${emptyCode},
    "time": ${time},
    "transactionRef": ${transactionRef},
    "fileType": ${fileType},
    "msgType": ${msgType}
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'downloadCheck',
      apiUrl:
          '${baseUrl}/smsa-search-api/download?downloadType=${downloadFormat}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MessageCountsCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? deviceHash = '',
    String? apiBaseURL,
  }) async {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    final baseUrl = DashBoardandSearchGroup.getBaseUrl(
      apiBaseURL: apiBaseURL,
    );

    final ffApiRequestBody = '''
{
  "token": "${escapeStringForJson(token)}",
  "deviceHash": "${escapeStringForJson(deviceHash)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'MessageCounts',
      apiUrl: '${baseUrl}/SmsaDashboard/dashboard/counts',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MessageTypeCountsCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? deviceHash = '',
    String? apiBaseURL,
  }) async {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    final baseUrl = DashBoardandSearchGroup.getBaseUrl(
      apiBaseURL: apiBaseURL,
    );

    final ffApiRequestBody = '''
{
  "token": "${escapeStringForJson(token)}",
  "deviceHash": "${escapeStringForJson(deviceHash)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'MessageTypeCounts',
      apiUrl: '${baseUrl}/SmsaDashboard/dashboard/message-type-counts',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RecentTransactionsCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? deviceHash = '',
    String? apiBaseURL,
  }) async {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    final baseUrl = DashBoardandSearchGroup.getBaseUrl(
      apiBaseURL: apiBaseURL,
    );

    final ffApiRequestBody = '''
{
  "token": "${escapeStringForJson(token)}",
  "deviceHash": "${escapeStringForJson(deviceHash)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RecentTransactions',
      apiUrl: '${baseUrl}/smsa-search-api/getRecentTransactions',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BicCodeSentCall {
  Future<ApiCallResponse> call({
    String? apiBaseURL,
  }) async {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    final baseUrl = DashBoardandSearchGroup.getBaseUrl(
      apiBaseURL: apiBaseURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Bic Code Sent',
      apiUrl: '${baseUrl}/smsa-search-api/getSenderBicData',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BicCodeReceivedCall {
  Future<ApiCallResponse> call({
    String? apiBaseURL,
  }) async {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    final baseUrl = DashBoardandSearchGroup.getBaseUrl(
      apiBaseURL: apiBaseURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Bic Code Received',
      apiUrl: '${baseUrl}/smsa-search-api/getReciverBicData',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MessageTypesListCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? deviceHash = '',
    String? apiBaseURL,
  }) async {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    final baseUrl = DashBoardandSearchGroup.getBaseUrl(
      apiBaseURL: apiBaseURL,
    );

    final ffApiRequestBody = '''
{
  "token": "${escapeStringForJson(token)}",
  "deviceHash": "${escapeStringForJson(deviceHash)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'MessageTypesList',
      apiUrl: '${baseUrl}/smsa-search-api/getMessageTypes',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GlobeDataCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? deviceHash = '',
    String? apiBaseURL,
  }) async {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    final baseUrl = DashBoardandSearchGroup.getBaseUrl(
      apiBaseURL: apiBaseURL,
    );

    final ffApiRequestBody = '''
{
  "token": "${escapeStringForJson(token)}",
  "deviceHash": "${escapeStringForJson(deviceHash)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GlobeData',
      apiUrl: '${baseUrl}/SmsaDashboard/geo/fetchGeoData',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DownloadXLSApiCall {
  Future<ApiCallResponse> call({
    String? apiBaseURL,
  }) async {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    final baseUrl = DashBoardandSearchGroup.getBaseUrl(
      apiBaseURL: apiBaseURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'downloadXLSApi',
      apiUrl: '${baseUrl}/smsa-search-api/download/XLSX?downloadType=XLSX',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End DashBoardandSearch Group Code

/// Start Authentication Group Code

class AuthenticationGroup {
  static String getBaseUrl({
    String? apiBaseURL,
  }) {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    return '${apiBaseURL}';
  }

  static Map<String, String> headers = {};
  static LoginApiCall loginApiCall = LoginApiCall();
  static RefreshTokenCall refreshTokenCall = RefreshTokenCall();
  static LastLoginCall lastLoginCall = LastLoginCall();
  static LogoutApiCall logoutApiCall = LogoutApiCall();
  static GetModulesCall getModulesCall = GetModulesCall();
  static GeographyListCall geographyListCall = GeographyListCall();
}

class LoginApiCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? deviceHash = '',
    String? geogId = '',
    String? moduleId = '',
    String? apiBaseURL,
  }) async {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    final baseUrl = AuthenticationGroup.getBaseUrl(
      apiBaseURL: apiBaseURL,
    );

    final ffApiRequestBody = '''
{
  "username": "${escapeStringForJson(username)}",
  "password": "${escapeStringForJson(password)}",
  "deviceHase": "${escapeStringForJson(deviceHash)}",
  "geogId": "${escapeStringForJson(geogId)}",
  "moduleId": "${escapeStringForJson(moduleId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginApi',
      apiUrl: '${baseUrl}/authentication_api/authenticate',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RefreshTokenCall {
  Future<ApiCallResponse> call({
    String? apiBaseURL,
  }) async {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    final baseUrl = AuthenticationGroup.getBaseUrl(
      apiBaseURL: apiBaseURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'RefreshToken',
      apiUrl: '${baseUrl}/authentication_api/refresh-token',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LastLoginCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? deviceHash = '',
    String? apiBaseURL,
  }) async {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    final baseUrl = AuthenticationGroup.getBaseUrl(
      apiBaseURL: apiBaseURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'LastLogin',
      apiUrl: '${baseUrl}/authentication_api/loginDetails',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${token}',
        'DeviceHash': '${deviceHash}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LogoutApiCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? deviceHash = '',
    String? apiBaseURL,
  }) async {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    final baseUrl = AuthenticationGroup.getBaseUrl(
      apiBaseURL: apiBaseURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'logoutApi',
      apiUrl: '${baseUrl}/authentication_api/logout',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${token}',
        'DeviceHash': '${deviceHash}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetModulesCall {
  Future<ApiCallResponse> call({
    String? apiBaseURL,
  }) async {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    final baseUrl = AuthenticationGroup.getBaseUrl(
      apiBaseURL: apiBaseURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getModules',
      apiUrl: '${baseUrl}/authentication_api/getModules',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GeographyListCall {
  Future<ApiCallResponse> call({
    String? apiBaseURL,
  }) async {
    apiBaseURL ??= FFDevEnvironmentValues().apiBaseURL;
    final baseUrl = AuthenticationGroup.getBaseUrl(
      apiBaseURL: apiBaseURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GeographyList',
      apiUrl: '${baseUrl}/authentication_api/getGeography',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Authentication Group Code

/// Start ThresholdApis Group Code

class ThresholdApisGroup {
  static String getBaseUrl() => 'https://icmsuat.icicibank.com';
  static Map<String, String> headers = {};
  static ThresholdDataAddCall thresholdDataAddCall = ThresholdDataAddCall();
  static ThresholdDataDeleteCall thresholdDataDeleteCall =
      ThresholdDataDeleteCall();
  static ThresholdDataApproveCall thresholdDataApproveCall =
      ThresholdDataApproveCall();
  static ThresholdDataRejectCall thresholdDataRejectCall =
      ThresholdDataRejectCall();
  static ThresholdDataUpdateCall thresholdDataUpdateCall =
      ThresholdDataUpdateCall();
  static FetchThresholdTempDataCall fetchThresholdTempDataCall =
      FetchThresholdTempDataCall();
  static FetchThresholdMasterDataCall fetchThresholdMasterDataCall =
      FetchThresholdMasterDataCall();
}

class ThresholdDataAddCall {
  Future<ApiCallResponse> call({
    String? msgCurrency = '',
    String? senderBic = '',
    String? msgType = '',
    int? categoryAFromAmount,
    int? categoryAToAmount,
    int? categoryBFromAmount,
    int? categoryBToAmount,
    String? createdBy = '',
    String? createdDate = '',
    String? modifiedBy = '',
    String? modifiedDate = '',
    String? action = '',
    String? operation = '',
  }) async {
    final baseUrl = ThresholdApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "tokenMap": {
    "additionalProp1": "string",
    "additionalProp2": "string",
    "additionalProp3": "string"
  },
  "thresholdDTO": {
    "msgCurrency": "${escapeStringForJson(msgCurrency)}",
    "senderBic": "${escapeStringForJson(senderBic)}",
    "msgType": "${escapeStringForJson(msgType)}",
    "categoryAFromAmount": ${categoryAFromAmount},
    "categoryAToAmount": ${categoryAToAmount},
    "categoryBFromAmount": ${categoryBFromAmount},
    "categoryBToAmount": ${categoryBToAmount},
    "createdBy": "${escapeStringForJson(createdBy)}",
    "createdDate": "${escapeStringForJson(createdDate)}",
    "action": "${escapeStringForJson(action)}"
  },
  "operation": "${escapeStringForJson(operation)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ThresholdDataAdd',
      apiUrl: '${baseUrl}/high-value-alerts-api/threshold/actions',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ThresholdDataDeleteCall {
  Future<ApiCallResponse> call({
    String? msgCurrency = '',
    String? senderBic = '',
    String? msgType = '',
    int? categoryAFromAmount,
    int? categoryAToAmount,
    int? categoryBFromAmount,
    int? categoryBToAmount,
    String? createdBy = '',
    String? createdDate = '',
    String? modifiedBy = '',
    String? modifiedDate = '',
    String? action = '',
    String? operation = '',
    int? thresholdId,
  }) async {
    final baseUrl = ThresholdApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "tokenMap": {
    "additionalProp1": "string",
    "additionalProp2": "string",
    "additionalProp3": "string"
  },
  "thresholdDTO": {
    "thresholdId": ${thresholdId},
    "action": "${escapeStringForJson(action)}"
  },
  "operation": "${escapeStringForJson(operation)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ThresholdDataDelete',
      apiUrl: '${baseUrl}/high-value-alerts-api/threshold/actions',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ThresholdDataApproveCall {
  Future<ApiCallResponse> call({
    String? msgCurrency = '',
    String? senderBic = '',
    String? msgType = '',
    int? categoryAFromAmount,
    int? categoryAToAmount,
    int? categoryBFromAmount,
    int? categoryBToAmount,
    String? createdBy = '',
    String? createdDate = '',
    String? modifiedBy = '',
    String? modifiedDate = '',
    String? action = '',
    String? operation = '',
    String? verifiedBy = '',
    String? verifiedDate = '',
    int? thresholdId,
  }) async {
    final baseUrl = ThresholdApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "tokenMap": {
    "additionalProp1": "string",
    "additionalProp2": "string",
    "additionalProp3": "string"
  },
  "thresholdDTO": {
    "thresholdId": ${thresholdId},
    "msgCurrency": "${escapeStringForJson(msgCurrency)}",
    "senderBic": "${escapeStringForJson(senderBic)}",
    "msgType": "${escapeStringForJson(msgType)}",
    "categoryAFromAmount": ${categoryAFromAmount},
    "categoryAToAmount": ${categoryAToAmount},
    "categoryBFromAmount": ${categoryBFromAmount},
    "categoryBToAmount": ${categoryBToAmount},
    "createdBy": "${escapeStringForJson(createdBy)}",
    "createdDate": "${escapeStringForJson(createdDate)}",
    "verifiedBy": "${escapeStringForJson(verifiedBy)}",
    "verifiedDate": "${escapeStringForJson(verifiedDate)}",
    "action":"${escapeStringForJson(action)}"
  },
  "operation": "${escapeStringForJson(operation)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ThresholdDataApprove',
      apiUrl: '${baseUrl}/high-value-alerts-api/threshold/actions',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ThresholdDataRejectCall {
  Future<ApiCallResponse> call({
    String? msgCurrency = '',
    String? senderBic = '',
    String? msgType = '',
    int? categoryAFromAmount,
    int? categoryAToAmount,
    int? categoryBFromAmount,
    int? categoryBToAmount,
    String? createdBy = '',
    String? createdDate = '',
    String? modifiedBy = '',
    String? modifiedDate = '',
    String? action = '',
    String? operation = '',
    String? verifiedBy = '',
    String? verifiedDate = '',
    int? thresholdId,
  }) async {
    final baseUrl = ThresholdApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "tokenMap": {
    "additionalProp1": "string",
    "additionalProp2": "string",
    "additionalProp3": "string"
  },
  "thresholdDTO": {
    "thresholdId": ${thresholdId},
    "msgCurrency": "${escapeStringForJson(msgCurrency)}",
    "senderBic": "${escapeStringForJson(senderBic)}",
    "msgType": "${escapeStringForJson(msgType)}",
    "categoryAFromAmount": ${categoryAFromAmount},
    "categoryAToAmount": ${categoryAToAmount},
    "categoryBFromAmount": ${categoryBFromAmount},
    "categoryBToAmount": ${categoryBToAmount},
    "createdBy": "${escapeStringForJson(createdBy)}",
    "createdDate": "${escapeStringForJson(createdDate)}",
    "verifiedBy": "${escapeStringForJson(verifiedBy)}",
    "verifiedDate": "${escapeStringForJson(verifiedDate)}",
    "action": "${escapeStringForJson(action)}"
  },
  "operation": "${escapeStringForJson(operation)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ThresholdDataReject',
      apiUrl: '${baseUrl}/high-value-alerts-api/threshold/actions',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ThresholdDataUpdateCall {
  Future<ApiCallResponse> call({
    String? msgCurrency = '',
    String? senderBic = '',
    String? msgType = '',
    int? categoryAFromAmount,
    int? categoryAToAmount,
    int? categoryBFromAmount,
    int? categoryBToAmount,
    String? createdBy = '',
    String? createdDate = '',
    String? modifiedBy = '',
    String? modifiedDate = '',
    String? action = '',
    String? operation = '',
    int? thresholdId,
  }) async {
    final baseUrl = ThresholdApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "tokenMap": {
    "additionalProp1": "string",
    "additionalProp2": "string",
    "additionalProp3": "string"
  },
  "thresholdDTO": {
    "thresholdId": ${thresholdId},
    "msgCurrency": "${escapeStringForJson(msgCurrency)}",
    "senderBic": "${escapeStringForJson(senderBic)}",
    "msgType": "${escapeStringForJson(msgType)}",
    "categoryAFromAmount": ${categoryAFromAmount},
    "categoryAToAmount": ${categoryAToAmount},
    "categoryBFromAmount": ${categoryBFromAmount},
    "categoryBToAmount": ${categoryBToAmount},
    "modifiedBy": "${escapeStringForJson(modifiedBy)}",
    "modifiedDate": "${escapeStringForJson(modifiedDate)}",
    "action": "${escapeStringForJson(action)}",
    "createdBy": "${escapeStringForJson(createdBy)}",
    "createdDate": "${escapeStringForJson(createdDate)}"
  },
  "operation": "${escapeStringForJson(operation)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ThresholdDataUpdate',
      apiUrl: '${baseUrl}/high-value-alerts-api/threshold/actions',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchThresholdTempDataCall {
  Future<ApiCallResponse> call({
    String? recEmpId = '',
  }) async {
    final baseUrl = ThresholdApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "RecEmpId": "${escapeStringForJson(recEmpId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'fetchThresholdTempData',
      apiUrl:
          '${baseUrl}/high-value-alerts-api/threshold/fetchThresholdTempData',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchThresholdMasterDataCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ThresholdApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "additionalProp1": "string",
  "additionalProp2": "string",
  "additionalProp3": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'fetchThresholdMasterData',
      apiUrl:
          '${baseUrl}/high-value-alerts-api/threshold/fetchThresholdMasterData',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End ThresholdApis Group Code

/// Start RecipientApis Group Code

class RecipientApisGroup {
  static String getBaseUrl() => 'https://icmsuat.icicibank.com';
  static Map<String, String> headers = {};
  static FetchRecepientTempDataCall fetchRecepientTempDataCall =
      FetchRecepientTempDataCall();
  static RecipientDataAddCall recipientDataAddCall = RecipientDataAddCall();
  static RecipientDataApproveCall recipientDataApproveCall =
      RecipientDataApproveCall();
  static RecipientDataRejectCall recipientDataRejectCall =
      RecipientDataRejectCall();
  static RecipientDataUpdateCall recipientDataUpdateCall =
      RecipientDataUpdateCall();
  static RecipientDataDeleteCall recipientDataDeleteCall =
      RecipientDataDeleteCall();
  static FetchRecepientMasterDataCall fetchRecepientMasterDataCall =
      FetchRecepientMasterDataCall();
  static SearchByIDCall searchByIDCall = SearchByIDCall();
}

class FetchRecepientTempDataCall {
  Future<ApiCallResponse> call({
    String? recEmpId = '',
  }) async {
    final baseUrl = RecipientApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "RecEmpId": "${escapeStringForJson(recEmpId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'fetchRecepientTempData',
      apiUrl:
          '${baseUrl}/high-value-alerts-api/recepient/fetchRecepientTempData',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RecipientDataAddCall {
  Future<ApiCallResponse> call({
    String? smsaEmpId = '',
    String? smsaGeoName = '',
    String? smsaSenderBic = '',
    String? smsaMsgType = '',
    String? smsaEmpName = '',
    String? smsaGrade = '',
    String? smsaCreatedBy = '',
    String? smsaAction = '',
    String? operation = '',
    String? recEmailId = '',
    String? recCreatedDate = '',
    String? recModifiedBy = '',
    String? recModifiedDate = '',
    String? recVerifiedBy = '',
    String? recVerifiedDate = '',
    String? recCategory = '',
    String? recCCEmpId = '',
    String? recCCMailId = '',
    String? smsaRecOperation = '',
    String? smsaRecStatus = '',
  }) async {
    final baseUrl = RecipientApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "tokenMap": {
    "additionalProp1": "string",
    "additionalProp2": "string",
    "additionalProp3": "string"
  },
  "recepientDTO": {
    "recEmpId": "${escapeStringForJson(smsaEmpId)}",
    "recEmailId": "${escapeStringForJson(recEmailId)}",
    "recEmpName": "${escapeStringForJson(smsaEmpName)}",
    "recGeoName": "${escapeStringForJson(smsaGeoName)}",
    "recSenderBic": "${escapeStringForJson(smsaSenderBic)}",
    "recMsgType": "${escapeStringForJson(smsaMsgType)}",
    "recGrade": "${escapeStringForJson(smsaGrade)}",
    "recCreatedBy": "${escapeStringForJson(smsaCreatedBy)}",
    "recCreatedDate": "${escapeStringForJson(recCreatedDate)}",
    "recCategory": "${escapeStringForJson(recCategory)}",
    "recCCEmpId": "${escapeStringForJson(recCCEmpId)}",
    "recCCMailId": "${escapeStringForJson(recCCMailId)}",
    "smsaRecOperation": "${escapeStringForJson(smsaRecOperation)}"
  },
  "operation": "${escapeStringForJson(operation)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RecipientDataAdd',
      apiUrl: '${baseUrl}/high-value-alerts-api/recipient/actions',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RecipientDataApproveCall {
  Future<ApiCallResponse> call({
    String? smsaEmpId = '',
    String? smsaGeoName = '',
    String? smsaSenderBic = '',
    String? smsaMsgType = '',
    String? smsaEmpName = '',
    String? smsaGrade = '',
    String? smsaCreatedBy = '',
    String? smsaAction = '',
    String? operation = '',
    String? recEmailId = '',
    String? recCreatedDate = '',
    String? recModifiedBy = '',
    String? recModifiedDate = '',
    String? recVerifiedBy = '',
    String? recVerifiedDate = '',
    String? recCategory = '',
    String? recCCEmpId = '',
    String? recCCMailId = '',
    String? smsaRecOperation = '',
    int? smsaRamId,
  }) async {
    final baseUrl = RecipientApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "tokenMap": {
    "additionalProp1": "string",
    "additionalProp2": "string",
    "additionalProp3": "string"
  },
  "recepientDTO": {
    "smsaRamId": ${smsaRamId},
    "recEmpId": "${escapeStringForJson(smsaEmpId)}",
    "recEmailId": "${escapeStringForJson(recEmailId)}",
    "recEmpName": "${escapeStringForJson(smsaEmpName)}",
    "recGeoName": "${escapeStringForJson(smsaGeoName)}",
    "recSenderBic": "${escapeStringForJson(smsaSenderBic)}",
    "recMsgType": "${escapeStringForJson(smsaMsgType)}",
    "recGrade": "${escapeStringForJson(smsaGrade)}",
    "recCreatedBy": "${escapeStringForJson(smsaCreatedBy)}",
    "recCreatedDate": "${escapeStringForJson(recCreatedDate)}",
    "recCategory": "${escapeStringForJson(recCategory)}",
    "recCCEmpId": "${escapeStringForJson(recCCEmpId)}",
    "recCCMailId": "${escapeStringForJson(recCCMailId)}",
    "recVerifiedBy": "${escapeStringForJson(recVerifiedBy)}",
    "recVerifiedDate": "${escapeStringForJson(recVerifiedDate)}",
    "smsaRecOperation": "${escapeStringForJson(smsaRecOperation)}"
  },
  "operation": "${escapeStringForJson(operation)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RecipientDataApprove',
      apiUrl: '${baseUrl}/high-value-alerts-api/recipient/actions',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RecipientDataRejectCall {
  Future<ApiCallResponse> call({
    String? smsaEmpId = '',
    String? smsaGeoName = '',
    String? smsaSenderBic = '',
    String? smsaMsgType = '',
    String? smsaEmpName = '',
    String? smsaGrade = '',
    String? smsaCreatedBy = '',
    String? smsaAction = '',
    String? operation = '',
    String? recEmailId = '',
    String? recCreatedDate = '',
    String? recModifiedBy = '',
    String? recModifiedDate = '',
    String? recVerifiedBy = '',
    String? recVerifiedDate = '',
    String? recCategory = '',
    String? recCCEmpId = '',
    String? recCCMailId = '',
    String? smsaRecOperation = '',
    String? smsaRecStatus = '',
    int? smsaRamId,
  }) async {
    final baseUrl = RecipientApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "tokenMap": {
    "additionalProp1": "string",
    "additionalProp2": "string",
    "additionalProp3": "string"
  },
  "recepientDTO": {
    "smsaRamId": ${smsaRamId},
    "recEmpId": "${escapeStringForJson(smsaEmpId)}",
    "recEmailId": "${escapeStringForJson(recEmailId)}",
    "recEmpName": "${escapeStringForJson(smsaEmpName)}",
    "recGeoName": "${escapeStringForJson(smsaGeoName)}",
    "recSenderBic": "${escapeStringForJson(smsaSenderBic)}",
    "recMsgType": "${escapeStringForJson(smsaMsgType)}",
    "recGrade": "${escapeStringForJson(smsaGrade)}",
    "recCreatedBy": "${escapeStringForJson(smsaCreatedBy)}",
    "recCreatedDate": "${escapeStringForJson(recCreatedDate)}",
    "recCategory": "${escapeStringForJson(recCategory)}",
    "recCCEmpId": "${escapeStringForJson(recCCEmpId)}",
    "recCCMailId": "${escapeStringForJson(recCCMailId)}",
    "recVerifiedBy": "${escapeStringForJson(recVerifiedBy)}",
    "recVerifiedDate": "${escapeStringForJson(recVerifiedDate)}",
    "smsaRecOperation": "${escapeStringForJson(smsaRecOperation)}"
  },
  "operation": "${escapeStringForJson(operation)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RecipientDataReject',
      apiUrl: '${baseUrl}/high-value-alerts-api/recipient/actions',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RecipientDataUpdateCall {
  Future<ApiCallResponse> call({
    String? smsaEmpId = '',
    String? smsaGeoName = '',
    String? smsaSenderBic = '',
    String? smsaMsgType = '',
    String? smsaEmpName = '',
    String? smsaGrade = '',
    String? smsaCreatedBy = '',
    String? smsaAction = '',
    String? operation = '',
    String? recEmailId = '',
    String? recCreatedDate = '',
    String? recModifiedBy = '',
    String? recModifiedDate = '',
    String? recVerifiedBy = '',
    String? recVerifiedDate = '',
    String? recCategory = '',
    String? recCCEmpId = '',
    String? recCCMailId = '',
    String? smsaRecOperation = '',
    String? smsaRecStatus = '',
    int? smsaRamId,
  }) async {
    final baseUrl = RecipientApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "tokenMap": {
    "additionalProp1": "string",
    "additionalProp2": "string",
    "additionalProp3": "string"
  },
  "recepientDTO": {
    "smsaRamId": ${smsaRamId},
    "recEmpId": "${escapeStringForJson(smsaEmpId)}",
    "recEmailId": "${escapeStringForJson(recEmailId)}",
    "recEmpName": "${escapeStringForJson(smsaEmpName)}",
    "recGeoName": "${escapeStringForJson(smsaGeoName)}",
    "recSenderBic": "${escapeStringForJson(smsaSenderBic)}",
    "recMsgType": "${escapeStringForJson(smsaMsgType)}",
    "recGrade": "${escapeStringForJson(smsaGrade)}",
    "recModifiedBy": "${escapeStringForJson(recModifiedBy)}",
    "recModifiedDate": "${escapeStringForJson(recModifiedDate)}",
    "recCategory": "${escapeStringForJson(recCategory)}",
    "recCCEmpId": "${escapeStringForJson(recCCEmpId)}",
    "recCCMailId": "${escapeStringForJson(recCCMailId)}",
    "smsaRecOperation": "${escapeStringForJson(smsaRecOperation)}",
    "recCreatedBy": "${escapeStringForJson(smsaCreatedBy)}",
    "recCreatedDate": "${escapeStringForJson(recCreatedDate)}"
  },
  "operation": "${escapeStringForJson(operation)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RecipientDataUpdate',
      apiUrl: '${baseUrl}/high-value-alerts-api/recipient/actions',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RecipientDataDeleteCall {
  Future<ApiCallResponse> call({
    int? smsaEmpId,
    String? smsaGeoName = '',
    String? smsaSenderBic = '',
    String? smsaMsgType = '',
    String? smsaEmpName = '',
    String? smsaGrade = '',
    String? smsaCreatedBy = '',
    String? smsaAction = '',
    String? operation = '',
    String? recEmailId = '',
    String? recCreatedDate = '',
    String? recModifiedBy = '',
    String? recModifiedDate = '',
    String? recVerifiedBy = '',
    String? recVerifiedDate = '',
    String? recCategory = '',
    String? recCCEmpId = '',
    String? recCCMailId = '',
    String? smsaRecOperation = '',
    String? smsaRecStatus = '',
    int? smsaRamId,
  }) async {
    final baseUrl = RecipientApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "tokenMap": {
    "additionalProp1": "string",
    "additionalProp2": "string",
    "additionalProp3": "string"
  },
  "recepientDTO": {
    "smsaRamId":${smsaRamId}
  },
  "operation": "${escapeStringForJson(operation)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RecipientDataDelete',
      apiUrl: '${baseUrl}/high-value-alerts-api/recipient/actions',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchRecepientMasterDataCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = RecipientApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "additionalProp1": "string",
  "additionalProp2": "string",
  "additionalProp3": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'fetchRecepientMasterData',
      apiUrl:
          '${baseUrl}/high-value-alerts-api/recepient/fetchRecepientMasterData',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchByIDCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? userPassword = '',
    String? searchId = '',
  }) async {
    final baseUrl = RecipientApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user_id": "${escapeStringForJson(userId)}",
  "user_password": "${escapeStringForJson(userPassword)}",
  "searchId": "${escapeStringForJson(searchId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'searchByID',
      apiUrl: '${baseUrl}/high-value-alerts-api/searchId',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End RecipientApis Group Code

/// Start ClientMaster Group Code

class ClientMasterGroup {
  static String getBaseUrl() => 'http://10.11.100.46:8001/smsa_client_master';
  static Map<String, String> headers = {};
  static AddClientCall addClientCall = AddClientCall();
  static PendingRequestsCall pendingRequestsCall = PendingRequestsCall();
  static MAsterDataCall mAsterDataCall = MAsterDataCall();
  static CustomerIDFetchCall customerIDFetchCall = CustomerIDFetchCall();
  static UpdateAndDeleteCall updateAndDeleteCall = UpdateAndDeleteCall();
  static ApproveAndRejectCall approveAndRejectCall = ApproveAndRejectCall();
}

class AddClientCall {
  Future<ApiCallResponse> call({
    String? messageType = '',
    String? fieldName = '',
    String? fieldValue = '',
    String? nameIdentifiers = '',
    String? customerId = '',
    String? customerMailId = '',
    String? customerAccountNo = '',
    String? triggerFor = '',
    String? createdBy = '',
    String? status = '',
  }) async {
    final baseUrl = ClientMasterGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "MESSAGE_TYPE": "${escapeStringForJson(messageType)}",
  "FIELD_NAME": "${escapeStringForJson(fieldName)}",
  "FIELD_VALUE": "${escapeStringForJson(fieldValue)}",
  "NAME_IDENTIFIERS": "${escapeStringForJson(nameIdentifiers)}",
  "CUSTOMER_ID": "${escapeStringForJson(customerId)}",
  "CUSTOMER_MAIL_ID": "${escapeStringForJson(customerMailId)}",
  "CUSTOMER_ACCOUNT_NO": "${escapeStringForJson(customerAccountNo)}",
  "TRIGGER_FOR": "${escapeStringForJson(triggerFor)}",
  "CREATED_BY": "${escapeStringForJson(createdBy)}",
  "status": "${escapeStringForJson(status)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AddClient',
      apiUrl: '${baseUrl}add/clientMaster',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PendingRequestsCall {
  Future<ApiCallResponse> call({
    String? banID = '',
  }) async {
    final baseUrl = ClientMasterGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'PendingRequests',
      apiUrl: '${baseUrl}/getAllRequest/clientMaster/${banID}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MAsterDataCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ClientMasterGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MAsterData',
      apiUrl: '${baseUrl}/getAll/clientMaster',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CustomerIDFetchCall {
  Future<ApiCallResponse> call({
    String? customerId = '',
  }) async {
    final baseUrl = ClientMasterGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'customerIDFetch',
      apiUrl: '${baseUrl}/clientMaster?customerId=${customerId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'customerId': customerId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAndDeleteCall {
  Future<ApiCallResponse> call({
    String? messageType = '',
    String? fieldName = '',
    String? fieldValue = '',
    String? nameIdentifiers = '',
    String? customerId = '',
    String? customerMailId = '',
    String? customerAccountNo = '',
    String? triggerFor = '',
    String? createdBy = '',
    String? status = '',
    String? updatedBy = '',
    String? clientMasterMstId = '',
  }) async {
    final baseUrl = ClientMasterGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "MESSAGE_TYPE": "${escapeStringForJson(messageType)}",
  "FIELD_NAME": "${escapeStringForJson(fieldName)}",
  "FIELD_VALUE": "${escapeStringForJson(fieldValue)}",
  "NAME_IDENTIFIERS": "${escapeStringForJson(nameIdentifiers)}",
  "CUSTOMER_ID": "${escapeStringForJson(customerId)}",
  "CUSTOMER_MAIL_ID": "${escapeStringForJson(customerMailId)}",
  "CUSTOMER_ACCOUNT_NO": "${escapeStringForJson(customerAccountNo)}",
  "TRIGGER_FOR": "${escapeStringForJson(triggerFor)}",
  "CREATED_BY": "${escapeStringForJson(createdBy)}",
  "status": "${escapeStringForJson(status)}",
  "UPDATED_BY": "${escapeStringForJson(updatedBy)}",
  "client_master_mst_id": "${escapeStringForJson(clientMasterMstId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateAndDelete',
      apiUrl: '${baseUrl}/update-client-master',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApproveAndRejectCall {
  Future<ApiCallResponse> call({
    String? status = '',
    String? requestId = '',
    String? approveBy = '',
  }) async {
    final baseUrl = ClientMasterGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "status": "${escapeStringForJson(status)}",
  "request_id": "${escapeStringForJson(requestId)}",
  "approve_by": "${escapeStringForJson(approveBy)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'approve and Reject',
      apiUrl: '${baseUrl}/verify-client-master',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End ClientMaster Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
