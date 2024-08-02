import 'package:freezed_annotation/freezed_annotation.dart';
part 'admin_model.freezed.dart';
part 'admin_model.g.dart';

@freezed
class Account with _$Account {
  factory Account(
      {required String? accountId,
      required String? username,
      required String? image}) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

@freezed
class AdminLoginRequest with _$AdminLoginRequest {
  factory AdminLoginRequest(
      {required String? email, required String? password}) = _AdminLoginRequest;

  factory AdminLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminLoginRequestFromJson(json);
}

@freezed
class AdminLoginResponse with _$AdminLoginResponse {
  factory AdminLoginResponse(
      {required String? accountId,
      required String? accessToken,
      required String? errorCode,
      required String? errorMessage}) = _AdminLoginResponse;

  factory AdminLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminLoginResponseFromJson(json);
}

@freezed
class AdminDeleteAccountResponse with _$AdminDeleteAccountResponse {
  factory AdminDeleteAccountResponse(
      {required String? status,
      required String? errorCode,
      required String? errorMessage}) = _AdminDeleteAccountResponse;

  factory AdminDeleteAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminDeleteAccountResponseFromJson(json);
}

@freezed
class AdminDeleteDogResponse with _$AdminDeleteDogResponse {
  factory AdminDeleteDogResponse(
      {required String? status,
      required String? errorCode,
      required String? errorMessage}) = _AdminDeleteDogResponse;

  factory AdminDeleteDogResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminDeleteDogResponseFromJson(json);
}

@freezed
class AdminDeleteFeedsResponse with _$AdminDeleteFeedsResponse {
  factory AdminDeleteFeedsResponse(
      {required String? status,
      required String? errorCode,
      required String? errorMessage}) = _AdminDeleteFeedsResponse;

  factory AdminDeleteFeedsResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminDeleteFeedsResponseFromJson(json);
}

@freezed
class ShowAccountsResponse with _$ShowAccountsResponse {
  factory ShowAccountsResponse(
      {required String? status,
      required String? errorCode,
      required String? errorMessage,
      required String accountId,
      required String? username,
      required String? image}) = _ShowAccountsResponse;

  factory ShowAccountsResponse.fromJson(Map<String, dynamic> json) =>
      _$ShowAccountsResponseFromJson(json);
}

@freezed
class Dog with _$Dog {
  factory Dog({
    required String dogId,
    required String dogName,
    required String? dogBreed,
    String? image,
  }) = _Dog;

  factory Dog.fromJson(Map<String, dynamic> json) => _$DogFromJson(json);
}

@freezed
class ShowDogsResponse with _$ShowDogsResponse {
  factory ShowDogsResponse({
    required String? errorCode,
    required String? errorMessage,
    required String dogId,
    required String dogName,
    required String? dogBreed,
    String? image
  }) = _ShowDogsResponse;

  factory ShowDogsResponse.fromJson(Map<String, dynamic> json) =>
      _$ShowDogsResponseFromJson(json);
}

@freezed
class Feeds with _$Feeds {
  factory Feeds({
    required String? username,
    required String feedsId,
    required String? caption,
    required String? image,
    required String? postDate,
    required String? errorCode,
    required String? errorMessage,
    required String? profilePicture,
  }) = _Feeds;

  factory Feeds.fromJson(Map<String, dynamic> json) => _$FeedsFromJson(json);
}

@freezed
class ShowFeedsResponse with _$ShowFeedsResponse {
  factory ShowFeedsResponse(
      {required String? errorCode,
      required String? errorMessage,
      required String? username,
      required String feedsId,
      required String? caption,
      required String? image,
      required String? postDate,
      required String? profilePicture}) = _ShowFeedsResponse;

  factory ShowFeedsResponse.fromJson(Map<String, dynamic> json) =>
      _$ShowFeedsResponseFromJson(json);
}
