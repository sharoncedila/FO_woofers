// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatroom_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenChatRequestImpl _$$OpenChatRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenChatRequestImpl(
      chatroomId: json['chatroomId'] as String?,
      recipientId: json['recipientId'] as String?,
    );

Map<String, dynamic> _$$OpenChatRequestImplToJson(
        _$OpenChatRequestImpl instance) =>
    <String, dynamic>{
      'chatroomId': instance.chatroomId,
      'recipientId': instance.recipientId,
    };

_$SendChatRequestImpl _$$SendChatRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SendChatRequestImpl(
      recipientId: json['recipientId'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$SendChatRequestImplToJson(
        _$SendChatRequestImpl instance) =>
    <String, dynamic>{
      'recipientId': instance.recipientId,
      'message': instance.message,
    };

_$OpenChatResponseImpl _$$OpenChatResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenChatResponseImpl(
      chatroomId: json['chatroomId'] as String?,
      senderId: json['senderId'] as String?,
      recipientId: json['recipientId'] as String?,
      senderChatId: json['senderChatId'] as String?,
      recipientChatId: json['recipientChatId'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      chatMessageId: json['chatMessageId'] as String?,
      message: json['message'] as String?,
      timestamp: json['timestamp'] as String?,
    );

Map<String, dynamic> _$$OpenChatResponseImplToJson(
        _$OpenChatResponseImpl instance) =>
    <String, dynamic>{
      'chatroomId': instance.chatroomId,
      'senderId': instance.senderId,
      'recipientId': instance.recipientId,
      'senderChatId': instance.senderChatId,
      'recipientChatId': instance.recipientChatId,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'chatMessageId': instance.chatMessageId,
      'message': instance.message,
      'timestamp': instance.timestamp,
    };

_$SendChatResponseImpl _$$SendChatResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SendChatResponseImpl(
      chatMessageId: json['chatMessageId'] as String?,
      chatroomId: json['chatroomId'] as String?,
      senderId: json['senderId'] as String?,
      recipientId: json['recipientId'] as String?,
      message: json['message'] as String?,
      timestamp: json['timestamp'] as String?,
    );

Map<String, dynamic> _$$SendChatResponseImplToJson(
        _$SendChatResponseImpl instance) =>
    <String, dynamic>{
      'chatMessageId': instance.chatMessageId,
      'chatroomId': instance.chatroomId,
      'senderId': instance.senderId,
      'recipientId': instance.recipientId,
      'message': instance.message,
      'timestamp': instance.timestamp,
    };
