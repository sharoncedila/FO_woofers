import 'package:freezed_annotation/freezed_annotation.dart';
part 'chatroom_model.freezed.dart';
part 'chatroom_model.g.dart';

@freezed
class OpenChatRequest with _$OpenChatRequest {
  factory OpenChatRequest({
    required String? recipientId,
  }) = _OpenChatRequest;

  factory OpenChatRequest.fromJson(Map<String, dynamic> json) => _$OpenChatRequestFromJson(json);
}

@freezed
class SendChatRequest with _$SendChatRequest {
  factory SendChatRequest({
    required String? chatroomId,
    required String? recipientId,
    required String? message
  }) = _SendChatRequest;

  factory SendChatRequest.fromJson(Map<String, dynamic> json) => _$SendChatRequestFromJson(json);
}

@freezed
class OpenChatResponse with _$OpenChatResponse {
  factory OpenChatResponse({
    required String? chatroomId,
    required String? senderId,
    required String? recipientId,
    required List<SendChatResponse>? messages,
    required String? errorCode,
    required String? errorMessage
  }) = _OpenChatResponse;

  factory OpenChatResponse.fromJson(Map<String, dynamic> json) => _$OpenChatResponseFromJson(json);
}

@freezed
class SendChatResponse with _$SendChatResponse {
  factory SendChatResponse({
    required String? chatMessageId,
    required String? chatroomId,
    required String? senderId,
    required String? recipientId,
    required String? message,
    required String? timestamp
  }) = _SendChatResponse;

  factory SendChatResponse.fromJson(Map<String, dynamic> json) => _$SendChatResponseFromJson(json);
}