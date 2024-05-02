// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ViewNotificationResponseImpl _$$ViewNotificationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ViewNotificationResponseImpl(
      notificationId: json['notificationId'] as String?,
      accountId: json['accountId'] as String?,
      notifMessage: json['notifMessage'] as String?,
      sendDate: json['sendDate'] as String?,
      status: json['status'] as String?,
      dogId: json['dogId'] as String?,
      dogName: json['dogName'] as String?,
      requesterId: json['requesterId'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$ViewNotificationResponseImplToJson(
        _$ViewNotificationResponseImpl instance) =>
    <String, dynamic>{
      'notificationId': instance.notificationId,
      'accountId': instance.accountId,
      'notifMessage': instance.notifMessage,
      'sendDate': instance.sendDate,
      'status': instance.status,
      'dogId': instance.dogId,
      'dogName': instance.dogName,
      'requesterId': instance.requesterId,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };

_$AcceptRejectNotificationImpl _$$AcceptRejectNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$AcceptRejectNotificationImpl(
      notificationId: json['notificationId'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$AcceptRejectNotificationImplToJson(
        _$AcceptRejectNotificationImpl instance) =>
    <String, dynamic>{
      'notificationId': instance.notificationId,
      'status': instance.status,
    };
