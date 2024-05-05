import 'package:freezed_annotation/freezed_annotation.dart';
part 'dog_model.freezed.dart';
part 'dog_model.g.dart';

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
    required String? isOpenAdopt,
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
    required String? errorCode,
    required String? errorMessage,
  }) = _AddDogResponse;

  factory AddDogResponse.fromJson(Map<String, dynamic> json) =>
      _$AddDogResponseFromJson(json);
}

@freezed
class EditDogResponse with _$EditDogResponse{
  factory EditDogResponse({
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
    required String? isOpenAdopt,
    String? image,
  }) = _EditDogRequest;

  factory EditDogRequest.fromJson(Map<String, dynamic> json) =>
      _$EditDogRequestFromJson(json);
}


@freezed
class ResponseDogCard with _$ResponseDogCard {
  factory ResponseDogCard({
    required String dogId,
    required String dogName,
    required String? breedName,
    required String? age,
    String? image,
    required String? isOpenAdopt,
  }) = _ResponseDogCard;

  factory ResponseDogCard.fromJson(Map<String, dynamic> json) =>
      _$ResponseDogCardFromJson(json);
}

@freezed
class DeleteDogResponse with _$DeleteDogResponse{
  factory DeleteDogResponse({
    required String? status,
    required String? errorCode,
    required String? errorMessage,
  }) = _DeleteDogResponse;

  factory DeleteDogResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteDogResponseFromJson(json);
}

@freezed
class Breed with _$Breed {
  factory Breed({
    required String? breedId,
    required String breedName,
    required String? errorCode,
    required String? errorMessage,
  }) = _Breed;

  factory Breed.fromJson(Map<String, dynamic> json) => _$BreedFromJson(json);
}

@freezed
class RetrieveAllBreedResponse with _$RetrieveAllBreedResponse {
  factory RetrieveAllBreedResponse({
    required List<Breed> breedList,
  }) = _RetrieveAllBreedResponse;

  factory RetrieveAllBreedResponse.fromJson(Map<String, dynamic> json) =>
      _$RetrieveAllBreedResponseFromJson(json);
}
