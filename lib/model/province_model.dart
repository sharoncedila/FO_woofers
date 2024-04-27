import 'package:freezed_annotation/freezed_annotation.dart';

part 'province_model.freezed.dart';
part 'province_model.g.dart';

@freezed
class Province with _$Province {
  factory Province({
    required String? provinceId,
    required String provinceName,
    required String? errorCode,
    required String? errorMessage,
  }) = _Province;

  factory Province.fromJson(Map<String, dynamic> json) => _$ProvinceFromJson(json);
}

@freezed
class RetrieveAllProvinceResponse with _$RetrieveAllProvinceResponse {
  factory RetrieveAllProvinceResponse({
    required List<Province> provinceList,
  }) = _RetrieveAllProvinceResponse;

  factory RetrieveAllProvinceResponse.fromJson(Map<String, dynamic> json) => _$RetrieveAllProvinceResponseFromJson(json);
}

