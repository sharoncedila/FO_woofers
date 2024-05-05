// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenChatRequest _$OpenChatRequestFromJson(Map<String, dynamic> json) {
  return _OpenChatRequest.fromJson(json);
}

/// @nodoc
mixin _$OpenChatRequest {
  String? get chatroomId => throw _privateConstructorUsedError;
  String? get recipientId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenChatRequestCopyWith<OpenChatRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenChatRequestCopyWith<$Res> {
  factory $OpenChatRequestCopyWith(
          OpenChatRequest value, $Res Function(OpenChatRequest) then) =
      _$OpenChatRequestCopyWithImpl<$Res, OpenChatRequest>;
  @useResult
  $Res call({String? chatroomId, String? recipientId});
}

/// @nodoc
class _$OpenChatRequestCopyWithImpl<$Res, $Val extends OpenChatRequest>
    implements $OpenChatRequestCopyWith<$Res> {
  _$OpenChatRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatroomId = freezed,
    Object? recipientId = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenChatRequestImplCopyWith<$Res>
    implements $OpenChatRequestCopyWith<$Res> {
  factory _$$OpenChatRequestImplCopyWith(_$OpenChatRequestImpl value,
          $Res Function(_$OpenChatRequestImpl) then) =
      __$$OpenChatRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? chatroomId, String? recipientId});
}

/// @nodoc
class __$$OpenChatRequestImplCopyWithImpl<$Res>
    extends _$OpenChatRequestCopyWithImpl<$Res, _$OpenChatRequestImpl>
    implements _$$OpenChatRequestImplCopyWith<$Res> {
  __$$OpenChatRequestImplCopyWithImpl(
      _$OpenChatRequestImpl _value, $Res Function(_$OpenChatRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatroomId = freezed,
    Object? recipientId = freezed,
  }) {
    return _then(_$OpenChatRequestImpl(
      chatroomId: freezed == chatroomId
          ? _value.chatroomId
          : chatroomId // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientId: freezed == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenChatRequestImpl implements _OpenChatRequest {
  _$OpenChatRequestImpl({this.chatroomId, required this.recipientId});

  factory _$OpenChatRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenChatRequestImplFromJson(json);

  @override
  final String? chatroomId;
  @override
  final String? recipientId;

  @override
  String toString() {
    return 'OpenChatRequest(chatroomId: $chatroomId, recipientId: $recipientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenChatRequestImpl &&
            (identical(other.chatroomId, chatroomId) ||
                other.chatroomId == chatroomId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chatroomId, recipientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenChatRequestImplCopyWith<_$OpenChatRequestImpl> get copyWith =>
      __$$OpenChatRequestImplCopyWithImpl<_$OpenChatRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenChatRequestImplToJson(
      this,
    );
  }
}

abstract class _OpenChatRequest implements OpenChatRequest {
  factory _OpenChatRequest(
      {final String? chatroomId,
      required final String? recipientId}) = _$OpenChatRequestImpl;

  factory _OpenChatRequest.fromJson(Map<String, dynamic> json) =
      _$OpenChatRequestImpl.fromJson;

  @override
  String? get chatroomId;
  @override
  String? get recipientId;
  @override
  @JsonKey(ignore: true)
  _$$OpenChatRequestImplCopyWith<_$OpenChatRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendChatRequest _$SendChatRequestFromJson(Map<String, dynamic> json) {
  return _SendChatRequest.fromJson(json);
}

/// @nodoc
mixin _$SendChatRequest {
  String? get chatroomId => throw _privateConstructorUsedError;
  String? get recipientId => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendChatRequestCopyWith<SendChatRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendChatRequestCopyWith<$Res> {
  factory $SendChatRequestCopyWith(
          SendChatRequest value, $Res Function(SendChatRequest) then) =
      _$SendChatRequestCopyWithImpl<$Res, SendChatRequest>;
  @useResult
  $Res call({String? chatroomId, String? recipientId, String? message});
}

/// @nodoc
class _$SendChatRequestCopyWithImpl<$Res, $Val extends SendChatRequest>
    implements $SendChatRequestCopyWith<$Res> {
  _$SendChatRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatroomId = freezed,
    Object? recipientId = freezed,
    Object? message = freezed,
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
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendChatRequestImplCopyWith<$Res>
    implements $SendChatRequestCopyWith<$Res> {
  factory _$$SendChatRequestImplCopyWith(_$SendChatRequestImpl value,
          $Res Function(_$SendChatRequestImpl) then) =
      __$$SendChatRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? chatroomId, String? recipientId, String? message});
}

/// @nodoc
class __$$SendChatRequestImplCopyWithImpl<$Res>
    extends _$SendChatRequestCopyWithImpl<$Res, _$SendChatRequestImpl>
    implements _$$SendChatRequestImplCopyWith<$Res> {
  __$$SendChatRequestImplCopyWithImpl(
      _$SendChatRequestImpl _value, $Res Function(_$SendChatRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatroomId = freezed,
    Object? recipientId = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SendChatRequestImpl(
      chatroomId: freezed == chatroomId
          ? _value.chatroomId
          : chatroomId // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientId: freezed == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendChatRequestImpl implements _SendChatRequest {
  _$SendChatRequestImpl(
      {this.chatroomId, required this.recipientId, required this.message});

  factory _$SendChatRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendChatRequestImplFromJson(json);

  @override
  final String? chatroomId;
  @override
  final String? recipientId;
  @override
  final String? message;

  @override
  String toString() {
    return 'SendChatRequest(chatroomId: $chatroomId, recipientId: $recipientId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendChatRequestImpl &&
            (identical(other.chatroomId, chatroomId) ||
                other.chatroomId == chatroomId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, chatroomId, recipientId, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendChatRequestImplCopyWith<_$SendChatRequestImpl> get copyWith =>
      __$$SendChatRequestImplCopyWithImpl<_$SendChatRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendChatRequestImplToJson(
      this,
    );
  }
}

abstract class _SendChatRequest implements SendChatRequest {
  factory _SendChatRequest(
      {final String? chatroomId,
      required final String? recipientId,
      required final String? message}) = _$SendChatRequestImpl;

  factory _SendChatRequest.fromJson(Map<String, dynamic> json) =
      _$SendChatRequestImpl.fromJson;

  @override
  String? get chatroomId;
  @override
  String? get recipientId;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SendChatRequestImplCopyWith<_$SendChatRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenChatResponse _$OpenChatResponseFromJson(Map<String, dynamic> json) {
  return _OpenChatResponse.fromJson(json);
}

/// @nodoc
mixin _$OpenChatResponse {
  String? get senderId => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenChatResponseCopyWith<OpenChatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenChatResponseCopyWith<$Res> {
  factory $OpenChatResponseCopyWith(
          OpenChatResponse value, $Res Function(OpenChatResponse) then) =
      _$OpenChatResponseCopyWithImpl<$Res, OpenChatResponse>;
  @useResult
  $Res call(
      {String? senderId,
      String? errorCode,
      String? errorMessage,
      String? message,
      String? timestamp,
      String? image});
}

/// @nodoc
class _$OpenChatResponseCopyWithImpl<$Res, $Val extends OpenChatResponse>
    implements $OpenChatResponseCopyWith<$Res> {
  _$OpenChatResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
    Object? message = freezed,
    Object? timestamp = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenChatResponseImplCopyWith<$Res>
    implements $OpenChatResponseCopyWith<$Res> {
  factory _$$OpenChatResponseImplCopyWith(_$OpenChatResponseImpl value,
          $Res Function(_$OpenChatResponseImpl) then) =
      __$$OpenChatResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? senderId,
      String? errorCode,
      String? errorMessage,
      String? message,
      String? timestamp,
      String? image});
}

/// @nodoc
class __$$OpenChatResponseImplCopyWithImpl<$Res>
    extends _$OpenChatResponseCopyWithImpl<$Res, _$OpenChatResponseImpl>
    implements _$$OpenChatResponseImplCopyWith<$Res> {
  __$$OpenChatResponseImplCopyWithImpl(_$OpenChatResponseImpl _value,
      $Res Function(_$OpenChatResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
    Object? message = freezed,
    Object? timestamp = freezed,
    Object? image = freezed,
  }) {
    return _then(_$OpenChatResponseImpl(
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenChatResponseImpl implements _OpenChatResponse {
  _$OpenChatResponseImpl(
      {required this.senderId,
      required this.errorCode,
      required this.errorMessage,
      required this.message,
      required this.timestamp,
      required this.image});

  factory _$OpenChatResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenChatResponseImplFromJson(json);

  @override
  final String? senderId;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;
  @override
  final String? message;
  @override
  final String? timestamp;
  @override
  final String? image;

  @override
  String toString() {
    return 'OpenChatResponse(senderId: $senderId, errorCode: $errorCode, errorMessage: $errorMessage, message: $message, timestamp: $timestamp, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenChatResponseImpl &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, senderId, errorCode,
      errorMessage, message, timestamp, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenChatResponseImplCopyWith<_$OpenChatResponseImpl> get copyWith =>
      __$$OpenChatResponseImplCopyWithImpl<_$OpenChatResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenChatResponseImplToJson(
      this,
    );
  }
}

abstract class _OpenChatResponse implements OpenChatResponse {
  factory _OpenChatResponse(
      {required final String? senderId,
      required final String? errorCode,
      required final String? errorMessage,
      required final String? message,
      required final String? timestamp,
      required final String? image}) = _$OpenChatResponseImpl;

  factory _OpenChatResponse.fromJson(Map<String, dynamic> json) =
      _$OpenChatResponseImpl.fromJson;

  @override
  String? get senderId;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  String? get message;
  @override
  String? get timestamp;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$OpenChatResponseImplCopyWith<_$OpenChatResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendChatResponse _$SendChatResponseFromJson(Map<String, dynamic> json) {
  return _SendChatResponse.fromJson(json);
}

/// @nodoc
mixin _$SendChatResponse {
  String? get chatMessageId => throw _privateConstructorUsedError;
  String? get chatroomId => throw _privateConstructorUsedError;
  String? get senderId => throw _privateConstructorUsedError;
  String? get recipientId => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendChatResponseCopyWith<SendChatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendChatResponseCopyWith<$Res> {
  factory $SendChatResponseCopyWith(
          SendChatResponse value, $Res Function(SendChatResponse) then) =
      _$SendChatResponseCopyWithImpl<$Res, SendChatResponse>;
  @useResult
  $Res call(
      {String? chatMessageId,
      String? chatroomId,
      String? senderId,
      String? recipientId,
      String? message,
      String? timestamp});
}

/// @nodoc
class _$SendChatResponseCopyWithImpl<$Res, $Val extends SendChatResponse>
    implements $SendChatResponseCopyWith<$Res> {
  _$SendChatResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatMessageId = freezed,
    Object? chatroomId = freezed,
    Object? senderId = freezed,
    Object? recipientId = freezed,
    Object? message = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      chatMessageId: freezed == chatMessageId
          ? _value.chatMessageId
          : chatMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      chatroomId: freezed == chatroomId
          ? _value.chatroomId
          : chatroomId // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientId: freezed == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendChatResponseImplCopyWith<$Res>
    implements $SendChatResponseCopyWith<$Res> {
  factory _$$SendChatResponseImplCopyWith(_$SendChatResponseImpl value,
          $Res Function(_$SendChatResponseImpl) then) =
      __$$SendChatResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? chatMessageId,
      String? chatroomId,
      String? senderId,
      String? recipientId,
      String? message,
      String? timestamp});
}

/// @nodoc
class __$$SendChatResponseImplCopyWithImpl<$Res>
    extends _$SendChatResponseCopyWithImpl<$Res, _$SendChatResponseImpl>
    implements _$$SendChatResponseImplCopyWith<$Res> {
  __$$SendChatResponseImplCopyWithImpl(_$SendChatResponseImpl _value,
      $Res Function(_$SendChatResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatMessageId = freezed,
    Object? chatroomId = freezed,
    Object? senderId = freezed,
    Object? recipientId = freezed,
    Object? message = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$SendChatResponseImpl(
      chatMessageId: freezed == chatMessageId
          ? _value.chatMessageId
          : chatMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      chatroomId: freezed == chatroomId
          ? _value.chatroomId
          : chatroomId // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientId: freezed == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendChatResponseImpl implements _SendChatResponse {
  _$SendChatResponseImpl(
      {required this.chatMessageId,
      required this.chatroomId,
      required this.senderId,
      required this.recipientId,
      required this.message,
      required this.timestamp});

  factory _$SendChatResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendChatResponseImplFromJson(json);

  @override
  final String? chatMessageId;
  @override
  final String? chatroomId;
  @override
  final String? senderId;
  @override
  final String? recipientId;
  @override
  final String? message;
  @override
  final String? timestamp;

  @override
  String toString() {
    return 'SendChatResponse(chatMessageId: $chatMessageId, chatroomId: $chatroomId, senderId: $senderId, recipientId: $recipientId, message: $message, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendChatResponseImpl &&
            (identical(other.chatMessageId, chatMessageId) ||
                other.chatMessageId == chatMessageId) &&
            (identical(other.chatroomId, chatroomId) ||
                other.chatroomId == chatroomId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chatMessageId, chatroomId,
      senderId, recipientId, message, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendChatResponseImplCopyWith<_$SendChatResponseImpl> get copyWith =>
      __$$SendChatResponseImplCopyWithImpl<_$SendChatResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendChatResponseImplToJson(
      this,
    );
  }
}

abstract class _SendChatResponse implements SendChatResponse {
  factory _SendChatResponse(
      {required final String? chatMessageId,
      required final String? chatroomId,
      required final String? senderId,
      required final String? recipientId,
      required final String? message,
      required final String? timestamp}) = _$SendChatResponseImpl;

  factory _SendChatResponse.fromJson(Map<String, dynamic> json) =
      _$SendChatResponseImpl.fromJson;

  @override
  String? get chatMessageId;
  @override
  String? get chatroomId;
  @override
  String? get senderId;
  @override
  String? get recipientId;
  @override
  String? get message;
  @override
  String? get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$SendChatResponseImplCopyWith<_$SendChatResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RetrieveChatlistResponse _$RetrieveChatlistResponseFromJson(
    Map<String, dynamic> json) {
  return _RetrieveChatlistResponse.fromJson(json);
}

/// @nodoc
mixin _$RetrieveChatlistResponse {
  String? get chatroomId => throw _privateConstructorUsedError;
  String? get recipientId => throw _privateConstructorUsedError;
  String? get recipientUsername => throw _privateConstructorUsedError;
  String? get lastMessageTimestamp => throw _privateConstructorUsedError;
  String? get lastMessage => throw _privateConstructorUsedError;
  String? get isRead => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RetrieveChatlistResponseCopyWith<RetrieveChatlistResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetrieveChatlistResponseCopyWith<$Res> {
  factory $RetrieveChatlistResponseCopyWith(RetrieveChatlistResponse value,
          $Res Function(RetrieveChatlistResponse) then) =
      _$RetrieveChatlistResponseCopyWithImpl<$Res, RetrieveChatlistResponse>;
  @useResult
  $Res call(
      {String? chatroomId,
      String? recipientId,
      String? recipientUsername,
      String? lastMessageTimestamp,
      String? lastMessage,
      String? isRead,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class _$RetrieveChatlistResponseCopyWithImpl<$Res,
        $Val extends RetrieveChatlistResponse>
    implements $RetrieveChatlistResponseCopyWith<$Res> {
  _$RetrieveChatlistResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatroomId = freezed,
    Object? recipientId = freezed,
    Object? recipientUsername = freezed,
    Object? lastMessageTimestamp = freezed,
    Object? lastMessage = freezed,
    Object? isRead = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
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
      recipientUsername: freezed == recipientUsername
          ? _value.recipientUsername
          : recipientUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageTimestamp: freezed == lastMessageTimestamp
          ? _value.lastMessageTimestamp
          : lastMessageTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: freezed == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RetrieveChatlistResponseImplCopyWith<$Res>
    implements $RetrieveChatlistResponseCopyWith<$Res> {
  factory _$$RetrieveChatlistResponseImplCopyWith(
          _$RetrieveChatlistResponseImpl value,
          $Res Function(_$RetrieveChatlistResponseImpl) then) =
      __$$RetrieveChatlistResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? chatroomId,
      String? recipientId,
      String? recipientUsername,
      String? lastMessageTimestamp,
      String? lastMessage,
      String? isRead,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class __$$RetrieveChatlistResponseImplCopyWithImpl<$Res>
    extends _$RetrieveChatlistResponseCopyWithImpl<$Res,
        _$RetrieveChatlistResponseImpl>
    implements _$$RetrieveChatlistResponseImplCopyWith<$Res> {
  __$$RetrieveChatlistResponseImplCopyWithImpl(
      _$RetrieveChatlistResponseImpl _value,
      $Res Function(_$RetrieveChatlistResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatroomId = freezed,
    Object? recipientId = freezed,
    Object? recipientUsername = freezed,
    Object? lastMessageTimestamp = freezed,
    Object? lastMessage = freezed,
    Object? isRead = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$RetrieveChatlistResponseImpl(
      chatroomId: freezed == chatroomId
          ? _value.chatroomId
          : chatroomId // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientId: freezed == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientUsername: freezed == recipientUsername
          ? _value.recipientUsername
          : recipientUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageTimestamp: freezed == lastMessageTimestamp
          ? _value.lastMessageTimestamp
          : lastMessageTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: freezed == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
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
class _$RetrieveChatlistResponseImpl implements _RetrieveChatlistResponse {
  _$RetrieveChatlistResponseImpl(
      {required this.chatroomId,
      required this.recipientId,
      required this.recipientUsername,
      required this.lastMessageTimestamp,
      required this.lastMessage,
      required this.isRead,
      required this.errorCode,
      required this.errorMessage});

  factory _$RetrieveChatlistResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RetrieveChatlistResponseImplFromJson(json);

  @override
  final String? chatroomId;
  @override
  final String? recipientId;
  @override
  final String? recipientUsername;
  @override
  final String? lastMessageTimestamp;
  @override
  final String? lastMessage;
  @override
  final String? isRead;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RetrieveChatlistResponse(chatroomId: $chatroomId, recipientId: $recipientId, recipientUsername: $recipientUsername, lastMessageTimestamp: $lastMessageTimestamp, lastMessage: $lastMessage, isRead: $isRead, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrieveChatlistResponseImpl &&
            (identical(other.chatroomId, chatroomId) ||
                other.chatroomId == chatroomId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId) &&
            (identical(other.recipientUsername, recipientUsername) ||
                other.recipientUsername == recipientUsername) &&
            (identical(other.lastMessageTimestamp, lastMessageTimestamp) ||
                other.lastMessageTimestamp == lastMessageTimestamp) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      chatroomId,
      recipientId,
      recipientUsername,
      lastMessageTimestamp,
      lastMessage,
      isRead,
      errorCode,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RetrieveChatlistResponseImplCopyWith<_$RetrieveChatlistResponseImpl>
      get copyWith => __$$RetrieveChatlistResponseImplCopyWithImpl<
          _$RetrieveChatlistResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RetrieveChatlistResponseImplToJson(
      this,
    );
  }
}

abstract class _RetrieveChatlistResponse implements RetrieveChatlistResponse {
  factory _RetrieveChatlistResponse(
      {required final String? chatroomId,
      required final String? recipientId,
      required final String? recipientUsername,
      required final String? lastMessageTimestamp,
      required final String? lastMessage,
      required final String? isRead,
      required final String? errorCode,
      required final String? errorMessage}) = _$RetrieveChatlistResponseImpl;

  factory _RetrieveChatlistResponse.fromJson(Map<String, dynamic> json) =
      _$RetrieveChatlistResponseImpl.fromJson;

  @override
  String? get chatroomId;
  @override
  String? get recipientId;
  @override
  String? get recipientUsername;
  @override
  String? get lastMessageTimestamp;
  @override
  String? get lastMessage;
  @override
  String? get isRead;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$RetrieveChatlistResponseImplCopyWith<_$RetrieveChatlistResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SearchChatResponse _$SearchChatResponseFromJson(Map<String, dynamic> json) {
  return _SearchChatResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchChatResponse {
  String? get accountId => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchChatResponseCopyWith<SearchChatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchChatResponseCopyWith<$Res> {
  factory $SearchChatResponseCopyWith(
          SearchChatResponse value, $Res Function(SearchChatResponse) then) =
      _$SearchChatResponseCopyWithImpl<$Res, SearchChatResponse>;
  @useResult
  $Res call(
      {String? accountId,
      String? username,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class _$SearchChatResponseCopyWithImpl<$Res, $Val extends SearchChatResponse>
    implements $SearchChatResponseCopyWith<$Res> {
  _$SearchChatResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? username = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SearchChatResponseImplCopyWith<$Res>
    implements $SearchChatResponseCopyWith<$Res> {
  factory _$$SearchChatResponseImplCopyWith(_$SearchChatResponseImpl value,
          $Res Function(_$SearchChatResponseImpl) then) =
      __$$SearchChatResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accountId,
      String? username,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class __$$SearchChatResponseImplCopyWithImpl<$Res>
    extends _$SearchChatResponseCopyWithImpl<$Res, _$SearchChatResponseImpl>
    implements _$$SearchChatResponseImplCopyWith<$Res> {
  __$$SearchChatResponseImplCopyWithImpl(_$SearchChatResponseImpl _value,
      $Res Function(_$SearchChatResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? username = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SearchChatResponseImpl(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
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
class _$SearchChatResponseImpl implements _SearchChatResponse {
  _$SearchChatResponseImpl(
      {required this.accountId,
      required this.username,
      required this.errorCode,
      required this.errorMessage});

  factory _$SearchChatResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchChatResponseImplFromJson(json);

  @override
  final String? accountId;
  @override
  final String? username;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SearchChatResponse(accountId: $accountId, username: $username, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchChatResponseImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accountId, username, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchChatResponseImplCopyWith<_$SearchChatResponseImpl> get copyWith =>
      __$$SearchChatResponseImplCopyWithImpl<_$SearchChatResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchChatResponseImplToJson(
      this,
    );
  }
}

abstract class _SearchChatResponse implements SearchChatResponse {
  factory _SearchChatResponse(
      {required final String? accountId,
      required final String? username,
      required final String? errorCode,
      required final String? errorMessage}) = _$SearchChatResponseImpl;

  factory _SearchChatResponse.fromJson(Map<String, dynamic> json) =
      _$SearchChatResponseImpl.fromJson;

  @override
  String? get accountId;
  @override
  String? get username;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SearchChatResponseImplCopyWith<_$SearchChatResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
