import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
class ResponseUserProfileModel with _$ResponseUserProfileModel {
  factory ResponseUserProfileModel({
    required String username,
    required String fullName,
    required String email,
    required String provinceName,
    required String phoneNumber,
    required String description,
    required String image
  }) = _ResponseUserProfileModel;

  factory ResponseUserProfileModel.fromJson(Map<String, dynamic> json) => _$ResponseUserProfileModelFromJson(json);
}   