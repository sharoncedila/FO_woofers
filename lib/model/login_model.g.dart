// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseLoginModelImpl _$$ResponseLoginModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseLoginModelImpl(
      accountId: json['accountId'] as String,
      accessToken: json['accessToken'] as String,
    );

Map<String, dynamic> _$$ResponseLoginModelImplToJson(
        _$ResponseLoginModelImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'accessToken': instance.accessToken,
    };

_$RequestLoginModelImpl _$$RequestLoginModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestLoginModelImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$RequestLoginModelImplToJson(
        _$RequestLoginModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
