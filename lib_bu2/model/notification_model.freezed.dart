// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ViewNotificationResponse _$ViewNotificationResponseFromJson(
    Map<String, dynamic> json) {
  return _ViewNotificationResponse.fromJson(json);
}

/// @nodoc
mixin _$ViewNotificationResponse {
  String? get notificationId => throw _privateConstructorUsedError;
  String? get notifMessage => throw _privateConstructorUsedError;
  String? get sendDate => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get dogName => throw _privateConstructorUsedError;
  String? get requesterId => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewNotificationResponseCopyWith<ViewNotificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewNotificationResponseCopyWith<$Res> {
  factory $ViewNotificationResponseCopyWith(ViewNotificationResponse value,
          $Res Function(ViewNotificationResponse) then) =
      _$ViewNotificationResponseCopyWithImpl<$Res, ViewNotificationResponse>;
  @useResult
  $Res call(
      {String? notificationId,
      String? notifMessage,
      String? sendDate,
      String? status,
      String? dogName,
      String? requesterId,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class _$ViewNotificationResponseCopyWithImpl<$Res,
        $Val extends ViewNotificationResponse>
    implements $ViewNotificationResponseCopyWith<$Res> {
  _$ViewNotificationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = freezed,
    Object? notifMessage = freezed,
    Object? sendDate = freezed,
    Object? status = freezed,
    Object? dogName = freezed,
    Object? requesterId = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      notificationId: freezed == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      notifMessage: freezed == notifMessage
          ? _value.notifMessage
          : notifMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      sendDate: freezed == sendDate
          ? _value.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      dogName: freezed == dogName
          ? _value.dogName
          : dogName // ignore: cast_nullable_to_non_nullable
              as String?,
      requesterId: freezed == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewNotificationResponseImplCopyWith<$Res>
    implements $ViewNotificationResponseCopyWith<$Res> {
  factory _$$ViewNotificationResponseImplCopyWith(
          _$ViewNotificationResponseImpl value,
          $Res Function(_$ViewNotificationResponseImpl) then) =
      __$$ViewNotificationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? notificationId,
      String? notifMessage,
      String? sendDate,
      String? status,
      String? dogName,
      String? requesterId,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class __$$ViewNotificationResponseImplCopyWithImpl<$Res>
    extends _$ViewNotificationResponseCopyWithImpl<$Res,
        _$ViewNotificationResponseImpl>
    implements _$$ViewNotificationResponseImplCopyWith<$Res> {
  __$$ViewNotificationResponseImplCopyWithImpl(
      _$ViewNotificationResponseImpl _value,
      $Res Function(_$ViewNotificationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = freezed,
    Object? notifMessage = freezed,
    Object? sendDate = freezed,
    Object? status = freezed,
    Object? dogName = freezed,
    Object? requesterId = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ViewNotificationResponseImpl(
      notificationId: freezed == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      notifMessage: freezed == notifMessage
          ? _value.notifMessage
          : notifMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      sendDate: freezed == sendDate
          ? _value.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      dogName: freezed == dogName
          ? _value.dogName
          : dogName // ignore: cast_nullable_to_non_nullable
              as String?,
      requesterId: freezed == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ViewNotificationResponseImpl implements _ViewNotificationResponse {
  _$ViewNotificationResponseImpl(
      {required this.notificationId,
      required this.notifMessage,
      required this.sendDate,
      required this.status,
      required this.dogName,
      required this.requesterId,
      required this.errorCode,
      required this.errorMessage});

  factory _$ViewNotificationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewNotificationResponseImplFromJson(json);

  @override
  final String? notificationId;
  @override
  final String? notifMessage;
  @override
  final String? sendDate;
  @override
  final String? status;
  @override
  final String? dogName;
  @override
  final String? requesterId;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ViewNotificationResponse(notificationId: $notificationId, notifMessage: $notifMessage, sendDate: $sendDate, status: $status, dogName: $dogName, requesterId: $requesterId, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewNotificationResponseImpl &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId) &&
            (identical(other.notifMessage, notifMessage) ||
                other.notifMessage == notifMessage) &&
            (identical(other.sendDate, sendDate) ||
                other.sendDate == sendDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dogName, dogName) || other.dogName == dogName) &&
            (identical(other.requesterId, requesterId) ||
                other.requesterId == requesterId) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, notificationId, notifMessage,
      sendDate, status, dogName, requesterId, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewNotificationResponseImplCopyWith<_$ViewNotificationResponseImpl>
      get copyWith => __$$ViewNotificationResponseImplCopyWithImpl<
          _$ViewNotificationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewNotificationResponseImplToJson(
      this,
    );
  }
}

abstract class _ViewNotificationResponse implements ViewNotificationResponse {
  factory _ViewNotificationResponse(
      {required final String? notificationId,
      required final String? notifMessage,
      required final String? sendDate,
      required final String? status,
      required final String? dogName,
      required final String? requesterId,
      required final String? errorCode,
      required final String? errorMessage}) = _$ViewNotificationResponseImpl;

  factory _ViewNotificationResponse.fromJson(Map<String, dynamic> json) =
      _$ViewNotificationResponseImpl.fromJson;

  @override
  String? get notificationId;
  @override
  String? get notifMessage;
  @override
  String? get sendDate;
  @override
  String? get status;
  @override
  String? get dogName;
  @override
  String? get requesterId;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ViewNotificationResponseImplCopyWith<_$ViewNotificationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AcceptRejectNotification _$AcceptRejectNotificationFromJson(
    Map<String, dynamic> json) {
  return _AcceptRejectNotification.fromJson(json);
}

/// @nodoc
mixin _$AcceptRejectNotification {
  String? get notificationId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AcceptRejectNotificationCopyWith<AcceptRejectNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptRejectNotificationCopyWith<$Res> {
  factory $AcceptRejectNotificationCopyWith(AcceptRejectNotification value,
          $Res Function(AcceptRejectNotification) then) =
      _$AcceptRejectNotificationCopyWithImpl<$Res, AcceptRejectNotification>;
  @useResult
  $Res call({String? notificationId, String? status});
}

/// @nodoc
class _$AcceptRejectNotificationCopyWithImpl<$Res,
        $Val extends AcceptRejectNotification>
    implements $AcceptRejectNotificationCopyWith<$Res> {
  _$AcceptRejectNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      notificationId: freezed == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcceptRejectNotificationImplCopyWith<$Res>
    implements $AcceptRejectNotificationCopyWith<$Res> {
  factory _$$AcceptRejectNotificationImplCopyWith(
          _$AcceptRejectNotificationImpl value,
          $Res Function(_$AcceptRejectNotificationImpl) then) =
      __$$AcceptRejectNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? notificationId, String? status});
}

/// @nodoc
class __$$AcceptRejectNotificationImplCopyWithImpl<$Res>
    extends _$AcceptRejectNotificationCopyWithImpl<$Res,
        _$AcceptRejectNotificationImpl>
    implements _$$AcceptRejectNotificationImplCopyWith<$Res> {
  __$$AcceptRejectNotificationImplCopyWithImpl(
      _$AcceptRejectNotificationImpl _value,
      $Res Function(_$AcceptRejectNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = freezed,
    Object? status = freezed,
  }) {
    return _then(_$AcceptRejectNotificationImpl(
      notificationId: freezed == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcceptRejectNotificationImpl implements _AcceptRejectNotification {
  _$AcceptRejectNotificationImpl(
      {required this.notificationId, required this.status});

  factory _$AcceptRejectNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcceptRejectNotificationImplFromJson(json);

  @override
  final String? notificationId;
  @override
  final String? status;

  @override
  String toString() {
    return 'AcceptRejectNotification(notificationId: $notificationId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptRejectNotificationImpl &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, notificationId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptRejectNotificationImplCopyWith<_$AcceptRejectNotificationImpl>
      get copyWith => __$$AcceptRejectNotificationImplCopyWithImpl<
          _$AcceptRejectNotificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcceptRejectNotificationImplToJson(
      this,
    );
  }
}

abstract class _AcceptRejectNotification implements AcceptRejectNotification {
  factory _AcceptRejectNotification(
      {required final String? notificationId,
      required final String? status}) = _$AcceptRejectNotificationImpl;

  factory _AcceptRejectNotification.fromJson(Map<String, dynamic> json) =
      _$AcceptRejectNotificationImpl.fromJson;

  @override
  String? get notificationId;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$AcceptRejectNotificationImplCopyWith<_$AcceptRejectNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebSocketNotif _$WebSocketNotifFromJson(Map<String, dynamic> json) {
  return _WebSocketNotif.fromJson(json);
}

/// @nodoc
mixin _$WebSocketNotif {
  String get notificationMessage => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebSocketNotifCopyWith<WebSocketNotif> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebSocketNotifCopyWith<$Res> {
  factory $WebSocketNotifCopyWith(
          WebSocketNotif value, $Res Function(WebSocketNotif) then) =
      _$WebSocketNotifCopyWithImpl<$Res, WebSocketNotif>;
  @useResult
  $Res call(
      {String notificationMessage, String? errorCode, String? errorMessage});
}

/// @nodoc
class _$WebSocketNotifCopyWithImpl<$Res, $Val extends WebSocketNotif>
    implements $WebSocketNotifCopyWith<$Res> {
  _$WebSocketNotifCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationMessage = null,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      notificationMessage: null == notificationMessage
          ? _value.notificationMessage
          : notificationMessage // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebSocketNotifImplCopyWith<$Res>
    implements $WebSocketNotifCopyWith<$Res> {
  factory _$$WebSocketNotifImplCopyWith(_$WebSocketNotifImpl value,
          $Res Function(_$WebSocketNotifImpl) then) =
      __$$WebSocketNotifImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String notificationMessage, String? errorCode, String? errorMessage});
}

/// @nodoc
class __$$WebSocketNotifImplCopyWithImpl<$Res>
    extends _$WebSocketNotifCopyWithImpl<$Res, _$WebSocketNotifImpl>
    implements _$$WebSocketNotifImplCopyWith<$Res> {
  __$$WebSocketNotifImplCopyWithImpl(
      _$WebSocketNotifImpl _value, $Res Function(_$WebSocketNotifImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationMessage = null,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$WebSocketNotifImpl(
      notificationMessage: null == notificationMessage
          ? _value.notificationMessage
          : notificationMessage // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebSocketNotifImpl implements _WebSocketNotif {
  _$WebSocketNotifImpl(
      {required this.notificationMessage,
      required this.errorCode,
      required this.errorMessage});

  factory _$WebSocketNotifImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSocketNotifImplFromJson(json);

  @override
  final String notificationMessage;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'WebSocketNotif(notificationMessage: $notificationMessage, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSocketNotifImpl &&
            (identical(other.notificationMessage, notificationMessage) ||
                other.notificationMessage == notificationMessage) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, notificationMessage, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSocketNotifImplCopyWith<_$WebSocketNotifImpl> get copyWith =>
      __$$WebSocketNotifImplCopyWithImpl<_$WebSocketNotifImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSocketNotifImplToJson(
      this,
    );
  }
}

abstract class _WebSocketNotif implements WebSocketNotif {
  factory _WebSocketNotif(
      {required final String notificationMessage,
      required final String? errorCode,
      required final String? errorMessage}) = _$WebSocketNotifImpl;

  factory _WebSocketNotif.fromJson(Map<String, dynamic> json) =
      _$WebSocketNotifImpl.fromJson;

  @override
  String get notificationMessage;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$WebSocketNotifImplCopyWith<_$WebSocketNotifImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WebSocketChat _$WebSocketChatFromJson(Map<String, dynamic> json) {
  return _WebSocketChat.fromJson(json);
}

/// @nodoc
mixin _$WebSocketChat {
  String? get chatroomId => throw _privateConstructorUsedError;
  String? get recipientId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebSocketChatCopyWith<WebSocketChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebSocketChatCopyWith<$Res> {
  factory $WebSocketChatCopyWith(
          WebSocketChat value, $Res Function(WebSocketChat) then) =
      _$WebSocketChatCopyWithImpl<$Res, WebSocketChat>;
  @useResult
  $Res call(
      {String? chatroomId,
      String? recipientId,
      String message,
      String? timestamp});
}

/// @nodoc
class _$WebSocketChatCopyWithImpl<$Res, $Val extends WebSocketChat>
    implements $WebSocketChatCopyWith<$Res> {
  _$WebSocketChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatroomId = freezed,
    Object? recipientId = freezed,
    Object? message = null,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      chatroomId: freezed == chatroomId
          ? _value.chatroomId
          : chatroomId // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientId: freezed == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebSocketChatImplCopyWith<$Res>
    implements $WebSocketChatCopyWith<$Res> {
  factory _$$WebSocketChatImplCopyWith(
          _$WebSocketChatImpl value, $Res Function(_$WebSocketChatImpl) then) =
      __$$WebSocketChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? chatroomId,
      String? recipientId,
      String message,
      String? timestamp});
}

/// @nodoc
class __$$WebSocketChatImplCopyWithImpl<$Res>
    extends _$WebSocketChatCopyWithImpl<$Res, _$WebSocketChatImpl>
    implements _$$WebSocketChatImplCopyWith<$Res> {
  __$$WebSocketChatImplCopyWithImpl(
      _$WebSocketChatImpl _value, $Res Function(_$WebSocketChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatroomId = freezed,
    Object? recipientId = freezed,
    Object? message = null,
    Object? timestamp = freezed,
  }) {
    return _then(_$WebSocketChatImpl(
      chatroomId: freezed == chatroomId
          ? _value.chatroomId
          : chatroomId // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientId: freezed == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebSocketChatImpl implements _WebSocketChat {
  _$WebSocketChatImpl(
      {required this.chatroomId,
      required this.recipientId,
      required this.message,
      required this.timestamp});

  factory _$WebSocketChatImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSocketChatImplFromJson(json);

  @override
  final String? chatroomId;
  @override
  final String? recipientId;
  @override
  final String message;
  @override
  final String? timestamp;

  @override
  String toString() {
    return 'WebSocketChat(chatroomId: $chatroomId, recipientId: $recipientId, message: $message, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSocketChatImpl &&
            (identical(other.chatroomId, chatroomId) ||
                other.chatroomId == chatroomId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, chatroomId, recipientId, message, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSocketChatImplCopyWith<_$WebSocketChatImpl> get copyWith =>
      __$$WebSocketChatImplCopyWithImpl<_$WebSocketChatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSocketChatImplToJson(
      this,
    );
  }
}

abstract class _WebSocketChat implements WebSocketChat {
  factory _WebSocketChat(
      {required final String? chatroomId,
      required final String? recipientId,
      required final String message,
      required final String? timestamp}) = _$WebSocketChatImpl;

  factory _WebSocketChat.fromJson(Map<String, dynamic> json) =
      _$WebSocketChatImpl.fromJson;

  @override
  String? get chatroomId;
  @override
  String? get recipientId;
  @override
  String get message;
  @override
  String? get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$WebSocketChatImplCopyWith<_$WebSocketChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
