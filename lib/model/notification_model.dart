import 'package:freezed_annotation/freezed_annotation.dart';
part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class ViewNotificationResponse with _$ViewNotificationResponse{
  factory ViewNotificationResponse({
    required String? notificationId,
    // required String? accountId,
    required String? notifMessage,
    required String? sendDate,
    required String? status,
    // required String? dogId,
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