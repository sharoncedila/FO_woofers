import 'package:freezed_annotation/freezed_annotation.dart';
part 'dog_profile_model.freezed.dart';
part 'dog_profile_model.g.dart';

@freezed
class ResponseDogProfileModel with _$ResponseDogProfileModel {
  factory ResponseDogProfileModel({
    required String dogId,
    required String dogName,
    required String? breedName,
    String? dateOfBirth,
    required String? gender,
    required String? provinceName,
    required String? vaccination,
    String? description,
    String? image,
    required bool isOpenAdopt,
  }) = _ResponseDogProfileModel;

  factory ResponseDogProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseDogProfileModelFromJson(json);
}

@freezed
class AddDogRequest with _$AddDogRequest {
  factory AddDogRequest({
    required String? dogName,
    required String? breedName,
    required String? dateOfBirth,
    required String? gender,
    required String? provinceName,
    required String? vaccination,
    required String? description,
    required bool? isOpenAdopt,
  }) = _AddDogRequest;

  factory AddDogRequest.fromJson(Map<String, dynamic> json) =>
      _$AddDogRequestFromJson(json);
}

@freezed
class AddDogResponse with _$AddDogResponse {
  factory AddDogResponse({
    required String? dogId,
    required String? breedName,
    required String? dogName,
    required String? gender,
    required String? dateOfBirth,
    required String? description,
    required String? vaccination,
    required String? image,
    required String? isOpenAdopt,
    required String? provinceName,
  }) = _AddDogResponse;

  factory AddDogResponse.fromJson(Map<String, dynamic> json) =>
      _$AddDogResponseFromJson(json);
}

@freezed
class EditDogResponse with _$EditDogResponse{
  factory EditDogResponse({
    required String? dogId,
    required String? breedName,
    required String? dogName,
    required String? gender,
    required String? dateOfBirth,
    required String? description,
    required String? vaccination,
    required String? image,
    required String? isOpenAdopt,
    required String? provinceName,
    required String? errorCode,
    required String? errorMessage,
  }) = _EditDogResponse;

  factory EditDogResponse.fromJson(Map<String, dynamic> json) =>
      _$EditDogResponseFromJson(json);
}

@freezed
class EditDogRequest with _$EditDogRequest{
  factory EditDogRequest({
    required String? dogId,
    required String? dogName,
    required String? breedName,
    required String? dateOfBirth,
    required String? gender,
    required String? provinceName,
    required String? vaccination,
    required String? description,
    required String? isOpenAdopt
  }) = _EditDogRequest;

  factory EditDogRequest.fromJson(Map<String, dynamic> json) =>
      _$EditDogRequestFromJson(json);
}
