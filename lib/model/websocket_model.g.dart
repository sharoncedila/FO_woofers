// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'websocket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebSocketNotifImpl _$$WebSocketNotifImplFromJson(Map<String, dynamic> json) =>
    _$WebSocketNotifImpl(
      notificationId: json['notificationId'] as String?,
      accountId: json['accountId'] as String?,
      notificationMessage: json['notificationMessage'] as String,
      sendDate: json['sendDate'] as String?,
      status: json['status'] as String?,
      dogId: json['dogId'] as String?,
      dogName: json['dogName'] as String?,
      requesterId: json['requesterId'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$WebSocketNotifImplToJson(
        _$WebSocketNotifImpl instance) =>
    <String, dynamic>{
      'notificationId': instance.notificationId,
      'accountId': instance.accountId,
      'notificationMessage': instance.notificationMessage,
      'sendDate': instance.sendDate,
      'status': instance.status,
      'dogId': instance.dogId,
      'dogName': instance.dogName,
      'requesterId': instance.requesterId,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };

_$WebSocketChatImpl _$$WebSocketChatImplFromJson(Map<String, dynamic> json) =>
    _$WebSocketChatImpl(
      chatMessageId: json['chatMessageId'] as String?,
      chatroomId: json['chatroomId'] as String?,
      senderId: json['senderId'] as String?,
      recipientId: json['recipientId'] as String?,
      message: json['message'] as String,
      timestamp: json['timestamp'] as String?,
    );

Map<String, dynamic> _$$WebSocketChatImplToJson(_$WebSocketChatImpl instance) =>
    <String, dynamic>{
      'chatMessageId': instance.chatMessageId,
      'chatroomId': instance.chatroomId,
      'senderId': instance.senderId,
      'recipientId': instance.recipientId,
      'message': instance.message,
      'timestamp': instance.timestamp,
    };
