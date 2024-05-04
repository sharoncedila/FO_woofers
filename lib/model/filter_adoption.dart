import 'package:freezed_annotation/freezed_annotation.dart';
part 'filter_adoption.freezed.dart';
part 'filter_adoption.g.dart';

@freezed
class FilterAdoption with _$FilterAdoption {
  factory FilterAdoption({
    String? breed,
    String? province,
    // String? gender,
  }) = _FilterAdoption;

  factory FilterAdoption.fromJson(Map<String, dynamic> json) =>
      _$FilterAdoptionFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    if (breed != null) map["breed"] = breed;
    if (province != null) map["province"] = province;
    // if (gender != null) map["gender"] = gender;
    return map;
  }
}
