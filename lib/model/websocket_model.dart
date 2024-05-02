import 'package:freezed_annotation/freezed_annotation.dart';
part 'websocket_model.freezed.dart';
part 'websocket_model.g.dart';

@freezed
class WebSocketNotif with _$WebSocketNotif{
  factory WebSocketNotif({
    required String? notificationId,
    required String? accountId,
    required String notificationMessage,
    required String? sendDate,
    required String? status,
    required String? dogId,
    required String? dogName,
    required String? requesterId,
    required String? errorCode,
    required String? errorMessage,
  }) = _WebSocketNotif;

  factory WebSocketNotif.fromJson(Map<String, dynamic> json) => _$WebSocketNotifFromJson(json);
}