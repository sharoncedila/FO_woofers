import 'package:freezed_annotation/freezed_annotation.dart';
part 'chatlist_model.freezed.dart';
part 'chatlist_model.g.dart';

@freezed
class RetrieveChatlistResponse with _$RetrieveChatlistResponse{
  factory RetrieveChatlistResponse({
    required String? rowId,
    required String? chatroomId,
    required String? senderId,
    required String? recipientId,
    required String? lastMessageTimestamp,
    required String? deletedAt,
    required String? lastMessage,
    required String? isRead,
    required String? errorCode,
    required String? errorMessage,
  }) = _RetrieveChatlistResponse;

  factory RetrieveChatlistResponse.fromJson(Map<String, dynamic> json) => _$RetrieveChatlistResponseFromJson(json);
}

@freezed
class SearchChatResponse with _$SearchChatResponse{
  factory SearchChatResponse({
    required AccountList? accountList,
    required String? errorCode,
    required String? errorMessage
  }) = _SearchChatResponse;

  factory SearchChatResponse.fromJson(Map<String, dynamic> json) => _$SearchChatResponseFromJson(json);
}

@freezed
class AccountList with _$AccountList{
  factory AccountList({
    required String? accountId,
    required String? username,
    required String? fullName,
  }) = _AccountList;

  factory AccountList.fromJson(Map<String, dynamic> json) => _$AccountListFromJson(json);
}
