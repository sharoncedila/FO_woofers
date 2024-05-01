// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseUserProfileModelImpl _$$ResponseUserProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseUserProfileModelImpl(
      username: json['username'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      provinceName: json['provinceName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$ResponseUserProfileModelImplToJson(
        _$ResponseUserProfileModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'fullName': instance.fullName,
      'email': instance.email,
      'provinceName': instance.provinceName,
      'phoneNumber': instance.phoneNumber,
      'description': instance.description,
      'image': instance.image,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };

_$OtherUserProfileResponseImpl _$$OtherUserProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OtherUserProfileResponseImpl(
      username: json['username'] as String?,
      fullName: json['fullName'] as String?,
      provinceName: json['provinceName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$OtherUserProfileResponseImplToJson(
        _$OtherUserProfileResponseImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'fullName': instance.fullName,
      'provinceName': instance.provinceName,
      'phoneNumber': instance.phoneNumber,
      'description': instance.description,
      'image': instance.image,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };
