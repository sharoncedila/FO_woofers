import 'package:freezed_annotation/freezed_annotation.dart';
part 'image_model.freezed.dart';
part 'image_model.g.dart';

@freezed
class UploadImageResponse with _$UploadImageResponse{
  factory UploadImageResponse({
    required String? fileName,
    required String? errorCode,
    required String? errorMessage
  }) = _UploadImageResponse;

  factory UploadImageResponse.fromJson(Map<String, dynamic> json) => _$UploadImageResponseFromJson(json);
}