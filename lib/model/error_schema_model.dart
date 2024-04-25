import 'package:freezed_annotation/freezed_annotation.dart';
part 'error_schema_model.freezed.dart';
part 'error_schema_model.g.dart';

@freezed
class ErrorSchema with _$ErrorSchema {
  factory ErrorSchema({
    required String errorCode,
    required String errorMessage
  }) = _ErrorSchema;

  factory ErrorSchema.fromJson(Map<String, dynamic> json) => _$ErrorSchemaFromJson(json);
}