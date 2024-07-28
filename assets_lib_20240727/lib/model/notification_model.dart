import 'package:freezed_annotation/freezed_annotation.dart';
part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class ViewNotificationResponse with _$ViewNotificationResponse{
  factory ViewNotificationResponse({
    required String? notificationId,
    required String? notifMessage,
    required String? sendDate,
    required String? status,
    required String? dogName,
    required String? requesterId,
    required String? errorCode,
    required String? errorMessage,
  }) = _ViewNotificationResponse;

  factory ViewNotificationResponse.fromJson(Map<String, dynamic> json) => _$ViewNotificationResponseFromJson(json);
}

@freezed
class AcceptRejectNotification with _$AcceptRejectNotification{
  factory AcceptRejectNotification({
    required String? notificationId,
    required String? status,
  }) = _AcceptRejectNotification;

  factory AcceptRejectNotification.fromJson(Map<String, dynamic> json) => _$AcceptRejectNotificationFromJson(json);
}

@freezed
class WebSocketNotif with _$WebSocketNotif{
  factory WebSocketNotif({
    required String notificationMessage,
    required String? errorCode,
    required String? errorMessage,
  }) = _WebSocketNotif;

  factory WebSocketNotif.fromJson(Map<String, dynamic> json) => _$WebSocketNotifFromJson(json);
}

@freezed
class WebSocketChat with _$WebSocketChat{
  factory WebSocketChat({
    required String? chatroomId,
    required String? recipientId,
    required String message,
    required String? timestamp,
  }) = _WebSocketChat;

  factory WebSocketChat.fromJson(Map<String, dynamic> json) => _$WebSocketChatFromJson(json);
}