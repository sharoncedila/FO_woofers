import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
class OpenChatRequest with _$OpenChatRequest {
  factory OpenChatRequest({
    String? chatroomId,
    required String? recipientId,
  }) = _OpenChatRequest;

  factory OpenChatRequest.fromJson(Map<String, dynamic> json) =>
      _$OpenChatRequestFromJson(json);
}

@freezed
class SendChatRequest with _$SendChatRequest {
  factory SendChatRequest(
      {String? chatroomId,
      required String? recipientId,
      required String? message}) = _SendChatRequest;

  factory SendChatRequest.fromJson(Map<String, dynamic> json) =>
      _$SendChatRequestFromJson(json);
}

@freezed
class OpenChatResponse with _$OpenChatResponse {
  factory OpenChatResponse(
      {required String? senderId,
      required String? errorCode,
      required String? errorMessage,
      required String? message,
      required String? timestamp,
      required String? image}) = _OpenChatResponse;

  factory OpenChatResponse.fromJson(Map<String, dynamic> json) =>
      _$OpenChatResponseFromJson(json);
}

@freezed
class SendChatResponse with _$SendChatResponse {
  factory SendChatResponse(
      {required String? chatMessageId,
      required String? chatroomId,
      required String? senderId,
      required String? recipientId,
      required String? message,
      required String? timestamp}) = _SendChatResponse;

  factory SendChatResponse.fromJson(Map<String, dynamic> json) =>
      _$SendChatResponseFromJson(json);
}

@freezed
class RetrieveChatlistResponse with _$RetrieveChatlistResponse {
  factory RetrieveChatlistResponse({
    required String? chatroomId,
    required String? recipientId,
    required String? recipientUsername,
    required String? lastMessageTimestamp,
    required String? lastMessage,
    required String? isRead,
    required String? errorCode,
    required String? errorMessage,
    required String? profilePicture,
  }) = _RetrieveChatlistResponse;

  factory RetrieveChatlistResponse.fromJson(Map<String, dynamic> json) =>
      _$RetrieveChatlistResponseFromJson(json);
}

@freezed
class SearchChatResponse with _$SearchChatResponse {
  factory SearchChatResponse(
      {required String? accountId,
      required String? username,
      required String? errorCode,
      required String? errorMessage}) = _SearchChatResponse;

  factory SearchChatResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchChatResponseFromJson(json);
}
