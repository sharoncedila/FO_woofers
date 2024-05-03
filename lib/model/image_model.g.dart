// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadImageResponseImpl _$$UploadImageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadImageResponseImpl(
      fileName: json['fileName'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$UploadImageResponseImplToJson(
        _$UploadImageResponseImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };
