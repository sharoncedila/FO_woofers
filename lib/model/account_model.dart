import 'package:freezed_annotation/freezed_annotation.dart';
part 'account_model.freezed.dart';
part 'account_model.g.dart';

@freezed
class ResponseLoginModel with _$ResponseLoginModel {
  factory ResponseLoginModel(
      {required String? accountId,
      required String? accessToken,
      required String? errorCode,
      required String? errorMessage}) = _ResponseLoginModel;

  factory ResponseLoginModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseLoginModelFromJson(json);
}

@freezed
class RequestLoginModel with _$RequestLoginModel {
  factory RequestLoginModel(
      {required String? email, required String? password}) = _RequestLoginModel;

  factory RequestLoginModel.fromJson(Map<String, dynamic> json) =>
      _$RequestLoginModelFromJson(json);
}

@freezed
class LogoutResponse with _$LogoutResponse {
  factory LogoutResponse(
      {required String? status,
      required String? errorCode,
      required String? errorMessage}) = _LogoutResponse;

  factory LogoutResponse.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseFromJson(json);
}

@freezed
class EditProfileRequest with _$EditProfileRequest {
  factory EditProfileRequest({
    required String? fullName,
    required String? provinceName,
    required String? phoneNumber,
    required String? description,
    String? image,
  }) = _EditProfileRequest;

  factory EditProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$EditProfileRequestFromJson(json);
}
