import 'package:freezed_annotation/freezed_annotation.dart';
part 'adoption_list_model.freezed.dart';
part 'adoption_list_model.g.dart';

@freezed
class AdoptionDetail with _$AdoptionDetail {
  factory AdoptionDetail({
    required String dogId,
    required String breedName,
    required String dogName,
    required String? gender,
    required String age,
    required String? image,
    required String provinceName
  }) = _AdoptionDetail;

  factory AdoptionDetail.fromJson(Map<String, dynamic> json) => _$AdoptionDetailFromJson(json);
}

// @freezed
// class RequestAdoptionListModel with _$RequestAdoptionListModel {
//   factory RequestAdoptionListModel({
//     required String dogId,
//     required String breedName,
//     required String dogName,
//     required String gender,
//     required String age,
//     required String image,
//     required String provinceName
//   }) = _RequestAdoptionListModel;

//   factory RequestAdoptionListModel.fromJson(Map<String, dynamic> json) => _$RequestAdoptionListModelFromJson(json);
// }