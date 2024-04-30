import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class ResponseLoginModel with _$ResponseLoginModel {
  factory ResponseLoginModel({
    required String? accountId,
    required String? accessToken,
    required String? errorCode,
    required String? errorMessage
  }) = _ResponseLoginModel;

  factory ResponseLoginModel.fromJson(Map<String, dynamic> json) => _$ResponseLoginModelFromJson(json);
}

@freezed
class RequestLoginModel with _$RequestLoginModel {
  factory RequestLoginModel({
    required String? email,
    required String? password
  }) = _RequestLoginModel;

  factory RequestLoginModel.fromJson(Map<String, dynamic> json) => _$RequestLoginModelFromJson(json);
}

@freezed
class LogoutResponse with _$LogoutResponse{
  factory LogoutResponse({
    required String? status,
    required String? errorCode,
    required String? errorMessage
  }) = _LogoutResponse;

  factory LogoutResponse.fromJson(Map<String, dynamic> json) => _$LogoutResponseFromJson(json);
}