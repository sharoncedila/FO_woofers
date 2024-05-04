// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'websocket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WebSocketNotif _$WebSocketNotifFromJson(Map<String, dynamic> json) {
  return _WebSocketNotif.fromJson(json);
}

/// @nodoc
mixin _$WebSocketNotif {
// required String? notificationId,
// required String? accountId,
  String get notificationMessage =>
      throw _privateConstructorUsedError; // required String? sendDate,
// required String? status,
// required String? dogId,
// required String? dogName,
// required String? requesterId,
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

// required String? notificationId,
// required String? accountId,
  @override
  final String notificationMessage;
// required String? sendDate,
// required String? status,
// required String? dogId,
// required String? dogName,
// required String? requesterId,
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

  @override // required String? notificationId,
// required String? accountId,
  String get notificationMessage;
  @override // required String? sendDate,
// required String? status,
// required String? dogId,
// required String? dogName,
// required String? requesterId,
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
// required String? chatMessageId,
  String? get chatroomId =>
      throw _privateConstructorUsedError; // required String? senderId,
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

// required String? chatMessageId,
  @override
  final String? chatroomId;
// required String? senderId,
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

  @override // required String? chatMessageId,
  String? get chatroomId;
  @override // required String? senderId,
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
