// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

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
      chatroomId: json['chatroomId'] as String?,
      recipientId: json['recipientId'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$SendChatRequestImplToJson(
        _$SendChatRequestImpl instance) =>
    <String, dynamic>{
      'chatroomId': instance.chatroomId,
      'recipientId': instance.recipientId,
      'message': instance.message,
    };

_$OpenChatResponseImpl _$$OpenChatResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenChatResponseImpl(
      chatroomId: json['chatroomId'] as String?,
      senderId: json['senderId'] as String?,
      recipientId: json['recipientId'] as String?,
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$OpenChatResponseImplToJson(
        _$OpenChatResponseImpl instance) =>
    <String, dynamic>{
      'chatroomId': instance.chatroomId,
      'senderId': instance.senderId,
      'recipientId': instance.recipientId,
      'messages': instance.messages,
    };

_$RetrieveChatroomListResponseImpl _$$RetrieveChatroomListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RetrieveChatroomListResponseImpl(
      chatroomList: (json['chatroomList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$RetrieveChatroomListResponseImplToJson(
        _$RetrieveChatroomListResponseImpl instance) =>
    <String, dynamic>{
      'chatroomList': instance.chatroomList,
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
