import 'package:freezed_annotation/freezed_annotation.dart';
part 'dog_profile_model.freezed.dart';
part 'dog_profile_model.g.dart';

@freezed
class ResponseDogProfileModel with _$ResponseDogProfileModel {
  factory ResponseDogProfileModel({
    required String? dogId,
    required String? dogName,
    required String? breedName,
    required String? dateOfBirth,
    required String? gender,
    required String? provinceName,
    required String? vaccination,
    required String? description,
    required String? image,
    required String? isOpenAdopt,
    required String? errorCode,
    required String? errorMessage
  }) = _ResponseDogProfileModel;

  factory ResponseDogProfileModel.fromJson(Map<String, dynamic> json) => _$ResponseDogProfileModelFromJson(json);
}