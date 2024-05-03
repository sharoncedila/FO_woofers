// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadProfilePicResponseImpl _$$UploadProfilePicResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadProfilePicResponseImpl(
      fileName: json['fileName'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$UploadProfilePicResponseImplToJson(
        _$UploadProfilePicResponseImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };
