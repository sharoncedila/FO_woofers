// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
