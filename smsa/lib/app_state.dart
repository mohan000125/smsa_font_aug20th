import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _AccessToken = prefs.getString('ff_AccessToken') ?? _AccessToken;
    });
    _safeInit(() {
      _DeviceHash = prefs.getString('ff_DeviceHash') ?? _DeviceHash;
    });
    _safeInit(() {
      _userID = prefs.getString('ff_userID') ?? _userID;
    });
    _safeInit(() {
      _geoSelected = prefs.getString('ff_geoSelected') ?? _geoSelected;
    });
    _safeInit(() {
      _module = prefs.getString('ff_module') ?? _module;
    });
    _safeInit(() {
      _darkMode = prefs.getBool('ff_darkMode') ?? _darkMode;
    });
    _safeInit(() {
      _loginPassword = prefs.getString('ff_loginPassword') ?? _loginPassword;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<int> _chartValues = [5, 3, 7, 9, 1, 4];
  List<int> get chartValues => _chartValues;
  set chartValues(List<int> value) {
    _chartValues = value;
  }

  void addToChartValues(int value) {
    chartValues.add(value);
  }

  void removeFromChartValues(int value) {
    chartValues.remove(value);
  }

  void removeAtIndexFromChartValues(int index) {
    chartValues.removeAt(index);
  }

  void updateChartValuesAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    chartValues[index] = updateFn(_chartValues[index]);
  }

  void insertAtIndexInChartValues(int index, int value) {
    chartValues.insert(index, value);
  }

  List<String> _chartLables = ['2020', '2021', '2022', '2023', '2024', '2025'];
  List<String> get chartLables => _chartLables;
  set chartLables(List<String> value) {
    _chartLables = value;
  }

  void addToChartLables(String value) {
    chartLables.add(value);
  }

  void removeFromChartLables(String value) {
    chartLables.remove(value);
  }

  void removeAtIndexFromChartLables(int index) {
    chartLables.removeAt(index);
  }

  void updateChartLablesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    chartLables[index] = updateFn(_chartLables[index]);
  }

  void insertAtIndexInChartLables(int index, String value) {
    chartLables.insert(index, value);
  }

  bool _showIcon = false;
  bool get showIcon => _showIcon;
  set showIcon(bool value) {
    _showIcon = value;
  }

  String _AccessToken = '';
  String get AccessToken => _AccessToken;
  set AccessToken(String value) {
    _AccessToken = value;
    prefs.setString('ff_AccessToken', value);
  }

  List<GetSearchModelStruct> _getSearchData = [];
  List<GetSearchModelStruct> get getSearchData => _getSearchData;
  set getSearchData(List<GetSearchModelStruct> value) {
    _getSearchData = value;
  }

  void addToGetSearchData(GetSearchModelStruct value) {
    getSearchData.add(value);
  }

  void removeFromGetSearchData(GetSearchModelStruct value) {
    getSearchData.remove(value);
  }

  void removeAtIndexFromGetSearchData(int index) {
    getSearchData.removeAt(index);
  }

  void updateGetSearchDataAtIndex(
    int index,
    GetSearchModelStruct Function(GetSearchModelStruct) updateFn,
  ) {
    getSearchData[index] = updateFn(_getSearchData[index]);
  }

  void insertAtIndexInGetSearchData(int index, GetSearchModelStruct value) {
    getSearchData.insert(index, value);
  }

  FiltersStruct _filteringDataValues = FiltersStruct();
  FiltersStruct get filteringDataValues => _filteringDataValues;
  set filteringDataValues(FiltersStruct value) {
    _filteringDataValues = value;
  }

  void updateFilteringDataValuesStruct(Function(FiltersStruct) updateFn) {
    updateFn(_filteringDataValues);
  }

  dynamic _dummyJson = jsonDecode(
      '[{\"sentPayments\":0,\"receivedPayments\":0,\"countryCode\":\"DE\",\"countryName\":\"Germany\",\"latitude\":51.1657,\"longitude\":10.4515},{\"sentPayments\":0,\"receivedPayments\":0,\"countryCode\":\"BE\",\"countryName\":\"Belgium\",\"latitude\":50.8503,\"longitude\":4.3517},{\"sentPayments\":0,\"receivedPayments\":8,\"countryCode\":\"HK\",\"countryName\":\"Hong Kong\",\"latitude\":22.3193,\"longitude\":114.1694},{\"sentPayments\":0,\"receivedPayments\":0,\"countryCode\":\"RU\",\"countryName\":\"Russia\",\"latitude\":61.524,\"longitude\":105.3188},{\"sentPayments\":576,\"receivedPayments\":1579,\"countryCode\":\"AE\",\"countryName\":\"Dubai\",\"latitude\":25.276987,\"longitude\":55.296249},{\"sentPayments\":16,\"receivedPayments\":301,\"countryCode\":\"IN\",\"countryName\":\"India\",\"latitude\":20.5937,\"longitude\":78.9629}]');
  dynamic get dummyJson => _dummyJson;
  set dummyJson(dynamic value) {
    _dummyJson = value;
  }

  bool _flipdownload = false;
  bool get flipdownload => _flipdownload;
  set flipdownload(bool value) {
    _flipdownload = value;
  }

  int _pageIndex = 0;
  int get pageIndex => _pageIndex;
  set pageIndex(int value) {
    _pageIndex = value;
  }

  FiltersStruct _identifierSent = FiltersStruct();
  FiltersStruct get identifierSent => _identifierSent;
  set identifierSent(FiltersStruct value) {
    _identifierSent = value;
  }

  void updateIdentifierSentStruct(Function(FiltersStruct) updateFn) {
    updateFn(_identifierSent);
  }

  FiltersStruct _identifierRecv = FiltersStruct();
  FiltersStruct get identifierRecv => _identifierRecv;
  set identifierRecv(FiltersStruct value) {
    _identifierRecv = value;
  }

  void updateIdentifierRecvStruct(Function(FiltersStruct) updateFn) {
    updateFn(_identifierRecv);
  }

  SendRecvStruct _sendRecv = SendRecvStruct();
  SendRecvStruct get sendRecv => _sendRecv;
  set sendRecv(SendRecvStruct value) {
    _sendRecv = value;
  }

  void updateSendRecvStruct(Function(SendRecvStruct) updateFn) {
    updateFn(_sendRecv);
  }

  FiltersStruct _fileTypeNACK = FiltersStruct();
  FiltersStruct get fileTypeNACK => _fileTypeNACK;
  set fileTypeNACK(FiltersStruct value) {
    _fileTypeNACK = value;
  }

  void updateFileTypeNACKStruct(Function(FiltersStruct) updateFn) {
    updateFn(_fileTypeNACK);
  }

  FiltersStruct _fileTypeACK = FiltersStruct();
  FiltersStruct get fileTypeACK => _fileTypeACK;
  set fileTypeACK(FiltersStruct value) {
    _fileTypeACK = value;
  }

  void updateFileTypeACKStruct(Function(FiltersStruct) updateFn) {
    updateFn(_fileTypeACK);
  }

  int _totalPages = 0;
  int get totalPages => _totalPages;
  set totalPages(int value) {
    _totalPages = value;
  }

  int _totalElements = 0;
  int get totalElements => _totalElements;
  set totalElements(int value) {
    _totalElements = value;
  }

  bool _isPaginateLoader = false;
  bool get isPaginateLoader => _isPaginateLoader;
  set isPaginateLoader(bool value) {
    _isPaginateLoader = value;
  }

  List<int> _updateCheck = [];
  List<int> get updateCheck => _updateCheck;
  set updateCheck(List<int> value) {
    _updateCheck = value;
  }

  void addToUpdateCheck(int value) {
    updateCheck.add(value);
  }

  void removeFromUpdateCheck(int value) {
    updateCheck.remove(value);
  }

  void removeAtIndexFromUpdateCheck(int index) {
    updateCheck.removeAt(index);
  }

  void updateUpdateCheckAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    updateCheck[index] = updateFn(_updateCheck[index]);
  }

  void insertAtIndexInUpdateCheck(int index, int value) {
    updateCheck.insert(index, value);
  }

  List<int> _Indexes = [];
  List<int> get Indexes => _Indexes;
  set Indexes(List<int> value) {
    _Indexes = value;
  }

  void addToIndexes(int value) {
    Indexes.add(value);
  }

  void removeFromIndexes(int value) {
    Indexes.remove(value);
  }

  void removeAtIndexFromIndexes(int index) {
    Indexes.removeAt(index);
  }

  void updateIndexesAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    Indexes[index] = updateFn(_Indexes[index]);
  }

  void insertAtIndexInIndexes(int index, int value) {
    Indexes.insert(index, value);
  }

  String _DeviceHash = '';
  String get DeviceHash => _DeviceHash;
  set DeviceHash(String value) {
    _DeviceHash = value;
    prefs.setString('ff_DeviceHash', value);
  }

  String _userID = '';
  String get userID => _userID;
  set userID(String value) {
    _userID = value;
    prefs.setString('ff_userID', value);
  }

  bool _isDownloaded = false;
  bool get isDownloaded => _isDownloaded;
  set isDownloaded(bool value) {
    _isDownloaded = value;
  }

  String _senderSearch = '';
  String get senderSearch => _senderSearch;
  set senderSearch(String value) {
    _senderSearch = value;
  }

  String _receiverSearch = '';
  String get receiverSearch => _receiverSearch;
  set receiverSearch(String value) {
    _receiverSearch = value;
  }

  List<String> _identifiersDownload = [];
  List<String> get identifiersDownload => _identifiersDownload;
  set identifiersDownload(List<String> value) {
    _identifiersDownload = value;
  }

  void addToIdentifiersDownload(String value) {
    identifiersDownload.add(value);
  }

  void removeFromIdentifiersDownload(String value) {
    identifiersDownload.remove(value);
  }

  void removeAtIndexFromIdentifiersDownload(int index) {
    identifiersDownload.removeAt(index);
  }

  void updateIdentifiersDownloadAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    identifiersDownload[index] = updateFn(_identifiersDownload[index]);
  }

  void insertAtIndexInIdentifiersDownload(int index, String value) {
    identifiersDownload.insert(index, value);
  }

  List<String> _fileTypeDownload = [];
  List<String> get fileTypeDownload => _fileTypeDownload;
  set fileTypeDownload(List<String> value) {
    _fileTypeDownload = value;
  }

  void addToFileTypeDownload(String value) {
    fileTypeDownload.add(value);
  }

  void removeFromFileTypeDownload(String value) {
    fileTypeDownload.remove(value);
  }

  void removeAtIndexFromFileTypeDownload(int index) {
    fileTypeDownload.removeAt(index);
  }

  void updateFileTypeDownloadAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    fileTypeDownload[index] = updateFn(_fileTypeDownload[index]);
  }

  void insertAtIndexInFileTypeDownload(int index, String value) {
    fileTypeDownload.insert(index, value);
  }

  String _inpOutDownload = '';
  String get inpOutDownload => _inpOutDownload;
  set inpOutDownload(String value) {
    _inpOutDownload = value;
  }

  List<GetSearchModelStruct> _selectedRowDataDownload = [];
  List<GetSearchModelStruct> get selectedRowDataDownload =>
      _selectedRowDataDownload;
  set selectedRowDataDownload(List<GetSearchModelStruct> value) {
    _selectedRowDataDownload = value;
  }

  void addToSelectedRowDataDownload(GetSearchModelStruct value) {
    selectedRowDataDownload.add(value);
  }

  void removeFromSelectedRowDataDownload(GetSearchModelStruct value) {
    selectedRowDataDownload.remove(value);
  }

  void removeAtIndexFromSelectedRowDataDownload(int index) {
    selectedRowDataDownload.removeAt(index);
  }

  void updateSelectedRowDataDownloadAtIndex(
    int index,
    GetSearchModelStruct Function(GetSearchModelStruct) updateFn,
  ) {
    selectedRowDataDownload[index] = updateFn(_selectedRowDataDownload[index]);
  }

  void insertAtIndexInSelectedRowDataDownload(
      int index, GetSearchModelStruct value) {
    selectedRowDataDownload.insert(index, value);
  }

  bool _isRowChecked = false;
  bool get isRowChecked => _isRowChecked;
  set isRowChecked(bool value) {
    _isRowChecked = value;
  }

  dynamic _checkPayload;
  dynamic get checkPayload => _checkPayload;
  set checkPayload(dynamic value) {
    _checkPayload = value;
  }

  List<String> _msgTypesListt = [];
  List<String> get msgTypesListt => _msgTypesListt;
  set msgTypesListt(List<String> value) {
    _msgTypesListt = value;
  }

  void addToMsgTypesListt(String value) {
    msgTypesListt.add(value);
  }

  void removeFromMsgTypesListt(String value) {
    msgTypesListt.remove(value);
  }

  void removeAtIndexFromMsgTypesListt(int index) {
    msgTypesListt.removeAt(index);
  }

  void updateMsgTypesListtAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    msgTypesListt[index] = updateFn(_msgTypesListt[index]);
  }

  void insertAtIndexInMsgTypesListt(int index, String value) {
    msgTypesListt.insert(index, value);
  }

  DatesSelectionStruct _datesSelected = DatesSelectionStruct();
  DatesSelectionStruct get datesSelected => _datesSelected;
  set datesSelected(DatesSelectionStruct value) {
    _datesSelected = value;
  }

  void updateDatesSelectedStruct(Function(DatesSelectionStruct) updateFn) {
    updateFn(_datesSelected);
  }

  String _storeGeo = '';
  String get storeGeo => _storeGeo;
  set storeGeo(String value) {
    _storeGeo = value;
  }

  String _geoSelected = '';
  String get geoSelected => _geoSelected;
  set geoSelected(String value) {
    _geoSelected = value;
    prefs.setString('ff_geoSelected', value);
  }

  String _module = '';
  String get module => _module;
  set module(String value) {
    _module = value;
    prefs.setString('ff_module', value);
  }

  double _amount = 0.0;
  double get amount => _amount;
  set amount(double value) {
    _amount = value;
  }

  bool _darkMode = false;
  bool get darkMode => _darkMode;
  set darkMode(bool value) {
    _darkMode = value;
    prefs.setBool('ff_darkMode', value);
  }

  bool _downloadSuccess = false;
  bool get downloadSuccess => _downloadSuccess;
  set downloadSuccess(bool value) {
    _downloadSuccess = value;
  }

  dynamic _chartJson = jsonDecode(
      '[{\"year\":\"2025\",\"countPerYear\":779},{\"year\":\"2024\",\"countPerYear\":1366}]');
  dynamic get chartJson => _chartJson;
  set chartJson(dynamic value) {
    _chartJson = value;
  }

  List<TestDataStruct> _testtTable = [
    TestDataStruct.fromSerializableMap(jsonDecode(
        '{\"sentPayments\":\"1\",\"receivedPayments\":\"0\",\"countryCode\":\"Hello World\",\"countryName\":\"Hello World\",\"latitude\":\"0\",\"longitude\":\"0\"}'))
  ];
  List<TestDataStruct> get testtTable => _testtTable;
  set testtTable(List<TestDataStruct> value) {
    _testtTable = value;
  }

  void addToTesttTable(TestDataStruct value) {
    testtTable.add(value);
  }

  void removeFromTesttTable(TestDataStruct value) {
    testtTable.remove(value);
  }

  void removeAtIndexFromTesttTable(int index) {
    testtTable.removeAt(index);
  }

  void updateTesttTableAtIndex(
    int index,
    TestDataStruct Function(TestDataStruct) updateFn,
  ) {
    testtTable[index] = updateFn(_testtTable[index]);
  }

  void insertAtIndexInTesttTable(int index, TestDataStruct value) {
    testtTable.insert(index, value);
  }

  dynamic _json2 = jsonDecode(
      '[{\"sentPayments\":2,\"receivedPayments\":12,\"countryCode\":\"BH\",\"countryName\":\"Bahrain\",\"latitude\":26.0667,\"longitude\":50.5577},{\"sentPayments\":0,\"receivedPayments\":0,\"countryCode\":\"ZA\",\"countryName\":\"South Africa\",\"latitude\":-30.5595,\"longitude\":22.9375},{\"sentPayments\":0,\"receivedPayments\":0,\"countryCode\":\"IS\",\"countryName\":\"INDIA-SFMS\",\"latitude\":21,\"longitude\":78},{\"sentPayments\":0,\"receivedPayments\":0,\"countryCode\":\"CN\",\"countryName\":\"SHANGHAI\",\"latitude\":31.2304,\"longitude\":121.4737},{\"sentPayments\":0,\"receivedPayments\":0,\"countryCode\":\"QA\",\"countryName\":\"QATAR\",\"latitude\":25.276987,\"longitude\":51.52},{\"sentPayments\":0,\"receivedPayments\":6,\"countryCode\":\"SG\",\"countryName\":\"Singapore\",\"latitude\":1.3521,\"longitude\":103.8198}]');
  dynamic get json2 => _json2;
  set json2(dynamic value) {
    _json2 = value;
  }

  dynamic _json3 = jsonDecode(
      '[{\"sentPayments\":0,\"receivedPayments\":0,\"countryCode\":\"GB\",\"countryName\":\"UK\",\"latitude\":54,\"longitude\":-2},{\"sentPayments\":0,\"receivedPayments\":0,\"countryCode\":\"CA\",\"countryName\":\"Canada\",\"latitude\":56.1304,\"longitude\":-106.3468},{\"sentPayments\":0,\"receivedPayments\":0,\"countryCode\":\"IG\",\"countryName\":\"IBUGIFT\",\"latitude\":0,\"longitude\":0},{\"sentPayments\":0,\"receivedPayments\":0,\"countryCode\":\"US\",\"countryName\":\"USA\",\"latitude\":38,\"longitude\":-97},{\"sentPayments\":0,\"receivedPayments\":0,\"countryCode\":\"LK\",\"countryName\":\"SriLanka\",\"latitude\":7.8731,\"longitude\":80.7718}]');
  dynamic get json3 => _json3;
  set json3(dynamic value) {
    _json3 = value;
  }

  bool _isDownloadLoader = false;
  bool get isDownloadLoader => _isDownloadLoader;
  set isDownloadLoader(bool value) {
    _isDownloadLoader = value;
  }

  String _username = '';
  String get username => _username;
  set username(String value) {
    _username = value;
  }

  String _password = '';
  String get password => _password;
  set password(String value) {
    _password = value;
  }

  String _modulelogin = '';
  String get modulelogin => _modulelogin;
  set modulelogin(String value) {
    _modulelogin = value;
  }

  String _geographylogin = '';
  String get geographylogin => _geographylogin;
  set geographylogin(String value) {
    _geographylogin = value;
  }

  String _loginPassword = '';
  String get loginPassword => _loginPassword;
  set loginPassword(String value) {
    _loginPassword = value;
    prefs.setString('ff_loginPassword', value);
  }

  bool _dBApis = false;
  bool get dBApis => _dBApis;
  set dBApis(bool value) {
    _dBApis = value;
  }

  dynamic _dbGlobeData;
  dynamic get dbGlobeData => _dbGlobeData;
  set dbGlobeData(dynamic value) {
    _dbGlobeData = value;
  }

  List<BicCodesStruct> _dbSentCounts = [];
  List<BicCodesStruct> get dbSentCounts => _dbSentCounts;
  set dbSentCounts(List<BicCodesStruct> value) {
    _dbSentCounts = value;
  }

  void addToDbSentCounts(BicCodesStruct value) {
    dbSentCounts.add(value);
  }

  void removeFromDbSentCounts(BicCodesStruct value) {
    dbSentCounts.remove(value);
  }

  void removeAtIndexFromDbSentCounts(int index) {
    dbSentCounts.removeAt(index);
  }

  void updateDbSentCountsAtIndex(
    int index,
    BicCodesStruct Function(BicCodesStruct) updateFn,
  ) {
    dbSentCounts[index] = updateFn(_dbSentCounts[index]);
  }

  void insertAtIndexInDbSentCounts(int index, BicCodesStruct value) {
    dbSentCounts.insert(index, value);
  }

  List<BicCodesStruct> _dbRecvCounts = [];
  List<BicCodesStruct> get dbRecvCounts => _dbRecvCounts;
  set dbRecvCounts(List<BicCodesStruct> value) {
    _dbRecvCounts = value;
  }

  void addToDbRecvCounts(BicCodesStruct value) {
    dbRecvCounts.add(value);
  }

  void removeFromDbRecvCounts(BicCodesStruct value) {
    dbRecvCounts.remove(value);
  }

  void removeAtIndexFromDbRecvCounts(int index) {
    dbRecvCounts.removeAt(index);
  }

  void updateDbRecvCountsAtIndex(
    int index,
    BicCodesStruct Function(BicCodesStruct) updateFn,
  ) {
    dbRecvCounts[index] = updateFn(_dbRecvCounts[index]);
  }

  void insertAtIndexInDbRecvCounts(int index, BicCodesStruct value) {
    dbRecvCounts.insert(index, value);
  }

  dynamic _dbMsgsTypes;
  dynamic get dbMsgsTypes => _dbMsgsTypes;
  set dbMsgsTypes(dynamic value) {
    _dbMsgsTypes = value;
  }

  DbMsgCountsStruct _dbCounts = DbMsgCountsStruct();
  DbMsgCountsStruct get dbCounts => _dbCounts;
  set dbCounts(DbMsgCountsStruct value) {
    _dbCounts = value;
  }

  void updateDbCountsStruct(Function(DbMsgCountsStruct) updateFn) {
    updateFn(_dbCounts);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
