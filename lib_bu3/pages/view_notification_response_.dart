class ViewNotificationResponse {
  final ErrorSchema? errorSchema;
  final OutputSchema? outputSchema;

  ViewNotificationResponse(
      { this.errorSchema,  this.outputSchema});

  factory ViewNotificationResponse.fromJson(Map<String, dynamic> json) {
    return ViewNotificationResponse(
      errorSchema: ErrorSchema.fromJson(json['error_schema']),
      outputSchema: OutputSchema.fromJson(json['output_schema']),
    );
  }
}

class ErrorSchema {
  String? errorCode;
  String? errorMessage;

  ErrorSchema({ this.errorCode,  this.errorMessage});

  factory ErrorSchema.fromJson(Map<String, dynamic> json) => ErrorSchema(
        errorCode: json['error_code'] as String,
        errorMessage: json['error_message'] as String,
      );
}

class OutputSchema {
  final List<Notification>? notificationList;

  OutputSchema({ this.notificationList});

  factory OutputSchema.fromJson(Map<String, dynamic> json) => OutputSchema(
      notificationList: (json['notification_list'] as List<dynamic>)
          .map((item) => Notification.fromJson(item))
          .toList());
}

class Notification {
  String? notificationId;
  String? accountId;
  String? notifMessage;
  String? sendDate;
  String? status;
  String? dogId;
  String? dogName;
  String? requesterId;

  Notification(
      { this.notificationId,
       this.accountId,
       this.notifMessage,
       this.sendDate,
       this.status,
       this.dogId,
       this.dogName,
       this.requesterId});

  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
      notificationId: json['notificationId'] as String,
      accountId: json['accountId'] as String,
      notifMessage: json['notifMessage'] as String,
      sendDate: json['sendDate'] as String,
      status: json['status'] as String,
      dogId: json['dogId'] as String,
      dogName: json['dogName'] as String,
      requesterId: json['requesterId'] as String);
}