import 'package:freezed_annotation/freezed_annotation.dart';
part 'chatroom_model.freezed.dart';
part 'chatroom_model.g.dart';

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
