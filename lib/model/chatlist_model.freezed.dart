// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RetrieveChatlistResponse _$RetrieveChatlistResponseFromJson(
    Map<String, dynamic> json) {
  return _RetrieveChatlistResponse.fromJson(json);
}

/// @nodoc
mixin _$RetrieveChatlistResponse {
// required String? rowId,
  String? get chatroomId =>
      throw _privateConstructorUsedError; // required String? senderId,
  String? get recipientId => throw _privateConstructorUsedError;
  String? get recipientUsername => throw _privateConstructorUsedError;
  String? get lastMessageTimestamp =>
      throw _privateConstructorUsedError; // required String? deletedAt,
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

// required String? rowId,
  @override
  final String? chatroomId;
// required String? senderId,
  @override
  final String? recipientId;
  @override
  final String? recipientUsername;
  @override
  final String? lastMessageTimestamp;
// required String? deletedAt,
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

  @override // required String? rowId,
  String? get chatroomId;
  @override // required String? senderId,
  String? get recipientId;
  @override
  String? get recipientUsername;
  @override
  String? get lastMessageTimestamp;
  @override // required String? deletedAt,
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
  String? get username =>
      throw _privateConstructorUsedError; // required String? fullName,
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
// required String? fullName,
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
  @override // required String? fullName,
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SearchChatResponseImplCopyWith<_$SearchChatResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
