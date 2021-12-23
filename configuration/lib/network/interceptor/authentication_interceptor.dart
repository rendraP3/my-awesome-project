// ignore_for_file: constant_identifier_names

import 'package:configuration/data/data_source/local/session_pref.dart';
import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  static const String X_API_KEY = 'x-api-key';
  static const String ACCESS_TOKEN = 'Authorization';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Accept'] = 'application/json';
    final session = SessionPref.getAccessToken();
    options.headers[ACCESS_TOKEN] = 'Bearer $session';
    super.onRequest(options, handler);
  }
}