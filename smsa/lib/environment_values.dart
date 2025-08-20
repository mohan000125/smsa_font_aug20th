import 'dart:convert';
import 'package:flutter/services.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFDevEnvironmentValues {
  static const String currentEnvironment = 'uat';
  static const String environmentValuesPath =
      'assets/environment_values/environment.json';

  static final FFDevEnvironmentValues _instance =
      FFDevEnvironmentValues._internal();

  factory FFDevEnvironmentValues() {
    return _instance;
  }

  FFDevEnvironmentValues._internal();

  Future<void> initialize() async {
    try {
      final String response =
          await rootBundle.loadString(environmentValuesPath);
      final data = await json.decode(response);
      _applicationId = data['applicationId'];
      _applicationName = data['applicationName'];
      _applicationSecret = data['applicationSecret'];
      _initializeFaceIDURL = data['initializeFaceIDURL'];
      _validateFaceIDURL = data['validateFaceIDURL'];
      _srURL = data['srURL'];
      _erURL = data['erURL'];
      _dimfaRegisterUrl = data['dimfaRegisterUrl'];
      _dimfaAuthUrl = data['dimfaAuthUrl'];
      _dimfaRedirectUrl = data['dimfaRedirectUrl'];
      _apiKey = data['apiKey'];
      _apiBaseURL = data['apiBaseURL'];
    } catch (e) {
      print('Error loading environment values: $e');
    }
  }

  String _applicationId = '';
  String get applicationId => _applicationId;

  String _applicationName = '';
  String get applicationName => _applicationName;

  String _applicationSecret = '';
  String get applicationSecret => _applicationSecret;

  String _initializeFaceIDURL = '';
  String get initializeFaceIDURL => _initializeFaceIDURL;

  String _validateFaceIDURL = '';
  String get validateFaceIDURL => _validateFaceIDURL;

  String _srURL = '';
  String get srURL => _srURL;

  String _erURL = '';
  String get erURL => _erURL;

  String _dimfaRegisterUrl = '';
  String get dimfaRegisterUrl => _dimfaRegisterUrl;

  String _dimfaAuthUrl = '';
  String get dimfaAuthUrl => _dimfaAuthUrl;

  String _dimfaRedirectUrl = '';
  String get dimfaRedirectUrl => _dimfaRedirectUrl;

  String _apiKey = '';
  String get apiKey => _apiKey;

  String _apiBaseURL = '';
  String get apiBaseURL => _apiBaseURL;
}
