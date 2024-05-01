// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetrieveChatlistResponseImpl _$$RetrieveChatlistResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RetrieveChatlistResponseImpl(
      rowId: json['rowId'] as String?,
      chatroomId: json['chatroomId'] as String?,
      senderId: json['senderId'] as String?,
      recipientId: json['recipientId'] as String?,
      lastMessageTimestamp: json['lastMessageTimestamp'] as String?,
      deletedAt: json['deletedAt'] as String?,
      lastMessage: json['lastMessage'] as String?,
      isRead: json['isRead'] as bool?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$RetrieveChatlistResponseImplToJson(
        _$RetrieveChatlistResponseImpl instance) =>
    <String, dynamic>{
      'rowId': instance.rowId,
      'chatroomId': instance.chatroomId,
      'senderId': instance.senderId,
      'recipientId': instance.recipientId,
      'lastMessageTimestamp': instance.lastMessageTimestamp,
      'deletedAt': instance.deletedAt,
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
      fullName: json['fullName'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$SearchChatResponseImplToJson(
        _$SearchChatResponseImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'username': instance.username,
      'fullName': instance.fullName,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };
