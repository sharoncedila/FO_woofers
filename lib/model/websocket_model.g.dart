// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'websocket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebSocketNotifImpl _$$WebSocketNotifImplFromJson(Map<String, dynamic> json) =>
    _$WebSocketNotifImpl(
      notificationMessage: json['notificationMessage'] as String,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$WebSocketNotifImplToJson(
        _$WebSocketNotifImpl instance) =>
    <String, dynamic>{
      'notificationMessage': instance.notificationMessage,
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
