// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditProfileRequestImpl _$$EditProfileRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$EditProfileRequestImpl(
      fullName: json['fullName'] as String?,
      provinceName: json['provinceName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$EditProfileRequestImplToJson(
        _$EditProfileRequestImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'provinceName': instance.provinceName,
      'phoneNumber': instance.phoneNumber,
      'description': instance.description,
      'image': instance.image,
    };
