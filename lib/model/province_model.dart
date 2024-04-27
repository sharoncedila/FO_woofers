import 'package:freezed_annotation/freezed_annotation.dart';
part 'province_model.freezed.dart';
part 'province_model.g.dart';

@freezed
class RetrieveAllProvinceResponse with _$RetrieveAllProvinceResponse {
  factory RetrieveAllProvinceResponse({
    required String? provinceId,
    required String? provinceName,
    required String? errorCode,
    required String? errorMessage
  }) = _RetrieveAllProvinceResponse;

  factory RetrieveAllProvinceResponse.fromJson(Map<String, dynamic> json) => _$RetrieveAllProvinceResponseFromJson(json);
}