import 'package:freezed_annotation/freezed_annotation.dart';
part 'account_model.freezed.dart';
part 'account_model.g.dart';

@freezed
class EditProfileRequest with _$EditProfileRequest{ 
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