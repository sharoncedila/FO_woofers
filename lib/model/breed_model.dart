import 'package:freezed_annotation/freezed_annotation.dart';
part 'breed_model.freezed.dart';
part 'breed_model.g.dart';

@freezed
class Breed with _$Breed {
  factory Breed({
    required String? breedId,
    required String breedName,
    required String? errorCode,
    required String? errorMessage,
  }) = _Breed;

  factory Breed.fromJson(Map<String, dynamic> json) =>
      _$BreedFromJson(json);
}

@freezed
class RetrieveAllBreedResponse with _$RetrieveAllBreedResponse {
  factory RetrieveAllBreedResponse({
    required List<Breed> breedList,
  }) = _RetrieveAllBreedResponse;

  factory RetrieveAllBreedResponse.fromJson(Map<String, dynamic> json) =>
      _$RetrieveAllBreedResponseFromJson(json);
}
