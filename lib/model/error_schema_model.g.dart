// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_schema_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorSchemaImpl _$$ErrorSchemaImplFromJson(Map<String, dynamic> json) =>
    _$ErrorSchemaImpl(
      errorCode: json['errorCode'] as String,
      errorMessage: json['errorMessage'] as String,
    );

Map<String, dynamic> _$$ErrorSchemaImplToJson(_$ErrorSchemaImpl instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };
