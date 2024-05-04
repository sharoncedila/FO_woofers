// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseRegisterModelImpl _$$ResponseRegisterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseRegisterModelImpl(
      username: json['username'] as String?,
      fullname: json['fullname'] as String?,
      email: json['email'] as String?,
      provinceName: json['provinceName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      accountId: json['accountId'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$ResponseRegisterModelImplToJson(
        _$ResponseRegisterModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'fullname': instance.fullname,
      'email': instance.email,
      'provinceName': instance.provinceName,
      'phoneNumber': instance.phoneNumber,
      'accountId': instance.accountId,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };

_$RequestRegisterModelImpl _$$RequestRegisterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestRegisterModelImpl(
      username: json['username'] as String,
      fullname: json['fullname'] as String?,
      email: json['email'] as String,
      provinceName: json['provinceName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$RequestRegisterModelImplToJson(
        _$RequestRegisterModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'fullname': instance.fullname,
      'email': instance.email,
      'provinceName': instance.provinceName,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
    };
