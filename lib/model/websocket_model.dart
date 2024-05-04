import 'package:freezed_annotation/freezed_annotation.dart';
part 'websocket_model.freezed.dart';
part 'websocket_model.g.dart';

@freezed
class WebSocketNotif with _$WebSocketNotif{
  factory WebSocketNotif({
    // required String? notificationId,
    // required String? accountId,
    required String notificationMessage,
    // required String? sendDate,
    // required String? status,
    // required String? dogId,
    // required String? dogName,
    // required String? requesterId,
    required String? errorCode,
    required String? errorMessage,
  }) = _WebSocketNotif;

  factory WebSocketNotif.fromJson(Map<String, dynamic> json) => _$WebSocketNotifFromJson(json);
}

@freezed
class WebSocketChat with _$WebSocketChat{
  factory WebSocketChat({
    required String? chatMessageId,
    required String? chatroomId,
    required String? senderId,
    required String? recipientId,
    required String message,
    required String? timestamp,
  }) = _WebSocketChat;

  factory WebSocketChat.fromJson(Map<String, dynamic> json) => _$WebSocketChatFromJson(json);
}