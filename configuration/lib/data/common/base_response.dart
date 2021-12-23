// ignore_for_file: unnecessary_null_in_if_null_operators

import 'package:configuration/data/common/response_code.dart';

class BaseResponse {
  String? timestamp;
  int? code;
  String? message;
  String? error;
  String? token;
  dynamic errorBody;

  BaseResponse(
      {this.timestamp,
      this.code,
      this.message,
      this.error,
      this.token,
      this.errorBody});

  BaseResponse.fromJson(Map<String, dynamic> json) {
    timestamp = json['timestamp'] ?? "";
    code = json['code'] ?? ResponseCode.SERVER_UNKNOWN_ERROR;
    message = json['message'] ?? ResponseCode.SERVER_UNKNOWN_ERROR.message;
    error = json['error'] ?? "";
    token = json['token'] ?? null;
    errorBody = json['errorBody'];
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'timestamp': timestamp,
        'code': code,
        'message': message,
        'error': error,
        'token': token,
        'errorBody': errorBody,
      };
}