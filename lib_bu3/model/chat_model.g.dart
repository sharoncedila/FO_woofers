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
      senderId: json['senderId'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      message: json['message'] as String?,
      timestamp: json['timestamp'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$OpenChatResponseImplToJson(
        _$OpenChatResponseImpl instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'message': instance.message,
      'timestamp': instance.timestamp,
      'image': instance.image,
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

_$RetrieveChatlistResponseImpl _$$RetrieveChatlistResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RetrieveChatlistResponseImpl(
      chatroomId: json['chatroomId'] as String?,
      recipientId: json['recipientId'] as String?,
      recipientUsername: json['recipientUsername'] as String?,
      lastMessageTimestamp: json['lastMessageTimestamp'] as String?,
      lastMessage: json['lastMessage'] as String?,
      isRead: json['isRead'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      profilePicture: json['profilePicture'] as String?,
    );

Map<String, dynamic> _$$RetrieveChatlistResponseImplToJson(
        _$RetrieveChatlistResponseImpl instance) =>
    <String, dynamic>{
      'chatroomId': instance.chatroomId,
      'recipientId': instance.recipientId,
      'recipientUsername': instance.recipientUsername,
      'lastMessageTimestamp': instance.lastMessageTimestamp,
      'lastMessage': instance.lastMessage,
      'isRead': instance.isRead,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'profilePicture': instance.profilePicture,
    };

_$SearchChatResponseImpl _$$SearchChatResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchChatResponseImpl(
      accountId: json['accountId'] as String?,
      username: json['username'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$SearchChatResponseImplToJson(
        _$SearchChatResponseImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'username': instance.username,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };
