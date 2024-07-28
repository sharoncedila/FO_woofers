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
class ResponseRegisterModel with _$ResponseRegisterModel {
  factory ResponseRegisterModel(
      {required String? username,
      required String? fullname,
      required String? email,
      required String? provinceName,
      required String? phoneNumber,
      required String? accountId,
      required String? errorCode,
      required String? errorMessage}) = _ResponseRegisterModel;

  factory ResponseRegisterModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseRegisterModelFromJson(json);
}

@freezed
class RequestRegisterModel with _$RequestRegisterModel {
  factory RequestRegisterModel(
      {required String username,
      required String fullName,
      required String email,
      required String provinceName,
      required String phoneNumber,
      required String password}) = _RequestRegisterModel;

  factory RequestRegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RequestRegisterModelFromJson(json);
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

@freezed
class ResponseUserProfileModel with _$ResponseUserProfileModel {
  factory ResponseUserProfileModel(
      {required String? username,
      required String? fullName,
      required String? email,
      required String? provinceName,
      required String? phoneNumber,
      required String? description,
      required String? image,
      required String? errorCode,
      required String? errorMessage}) = _ResponseUserProfileModel;

  factory ResponseUserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseUserProfileModelFromJson(json);
}

@freezed
class OtherUserProfileResponse with _$OtherUserProfileResponse {
  factory OtherUserProfileResponse(
      {required String? username,
      required String? fullName,
      required String? provinceName,
      required String? phoneNumber,
      required String? description,
      required String? image,
      required String? errorCode,
      required String? errorMessage}) = _OtherUserProfileResponse;

  factory OtherUserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$OtherUserProfileResponseFromJson(json);
}



@freezed
class AllUsers with _$AllUsers {
  factory AllUsers(
      {required String dogId,
      required String? breedName,
      required String? dogName,
      required String? gender,
      required String? age,
      required String? image,
      required String? errorCode,
      // required String? accountId,
      required String? errorMessage}) = _AllUsers;

  factory AllUsers.fromJson(Map<String, dynamic> json) =>
      _$AllUsersFromJson(json);
}