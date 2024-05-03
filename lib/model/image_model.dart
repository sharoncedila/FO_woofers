import 'package:freezed_annotation/freezed_annotation.dart';
part 'image_model.freezed.dart';
part 'image_model.g.dart';

@freezed
class UploadProfilePicResponse with _$UploadProfilePicResponse{
  factory UploadProfilePicResponse({
    required String? fileName,
    required String? errorCode,
    required String? errorMessage
  }) = _UploadProfilePicResponse;

  factory UploadProfilePicResponse.fromJson(Map<String, dynamic> json) => _$UploadProfilePicResponseFromJson(json);
}