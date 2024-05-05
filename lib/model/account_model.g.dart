// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseLoginModelImpl _$$ResponseLoginModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseLoginModelImpl(
      accountId: json['accountId'] as String?,
      accessToken: json['accessToken'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$ResponseLoginModelImplToJson(
        _$ResponseLoginModelImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'accessToken': instance.accessToken,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };

_$RequestLoginModelImpl _$$RequestLoginModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestLoginModelImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$RequestLoginModelImplToJson(
        _$RequestLoginModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$LogoutResponseImpl _$$LogoutResponseImplFromJson(Map<String, dynamic> json) =>
    _$LogoutResponseImpl(
      status: json['status'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$LogoutResponseImplToJson(
        _$LogoutResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };

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
