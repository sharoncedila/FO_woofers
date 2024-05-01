// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feeds_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeaveCommentRequest _$LeaveCommentRequestFromJson(Map<String, dynamic> json) {
  return _LeaveCommentRequest.fromJson(json);
}

/// @nodoc
mixin _$LeaveCommentRequest {
  String get feedsId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaveCommentRequestCopyWith<LeaveCommentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveCommentRequestCopyWith<$Res> {
  factory $LeaveCommentRequestCopyWith(
          LeaveCommentRequest value, $Res Function(LeaveCommentRequest) then) =
      _$LeaveCommentRequestCopyWithImpl<$Res, LeaveCommentRequest>;
  @useResult
  $Res call({String feedsId, String content});
}

/// @nodoc
class _$LeaveCommentRequestCopyWithImpl<$Res, $Val extends LeaveCommentRequest>
    implements $LeaveCommentRequestCopyWith<$Res> {
  _$LeaveCommentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedsId = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      feedsId: null == feedsId
          ? _value.feedsId
          : feedsId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveCommentRequestImplCopyWith<$Res>
    implements $LeaveCommentRequestCopyWith<$Res> {
  factory _$$LeaveCommentRequestImplCopyWith(_$LeaveCommentRequestImpl value,
          $Res Function(_$LeaveCommentRequestImpl) then) =
      __$$LeaveCommentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String feedsId, String content});
}

/// @nodoc
class __$$LeaveCommentRequestImplCopyWithImpl<$Res>
    extends _$LeaveCommentRequestCopyWithImpl<$Res, _$LeaveCommentRequestImpl>
    implements _$$LeaveCommentRequestImplCopyWith<$Res> {
  __$$LeaveCommentRequestImplCopyWithImpl(_$LeaveCommentRequestImpl _value,
      $Res Function(_$LeaveCommentRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedsId = null,
    Object? content = null,
  }) {
    return _then(_$LeaveCommentRequestImpl(
      feedsId: null == feedsId
          ? _value.feedsId
          : feedsId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveCommentRequestImpl implements _LeaveCommentRequest {
  _$LeaveCommentRequestImpl({required this.feedsId, required this.content});

  factory _$LeaveCommentRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveCommentRequestImplFromJson(json);

  @override
  final String feedsId;
  @override
  final String content;

  @override
  String toString() {
    return 'LeaveCommentRequest(feedsId: $feedsId, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveCommentRequestImpl &&
            (identical(other.feedsId, feedsId) || other.feedsId == feedsId) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, feedsId, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveCommentRequestImplCopyWith<_$LeaveCommentRequestImpl> get copyWith =>
      __$$LeaveCommentRequestImplCopyWithImpl<_$LeaveCommentRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveCommentRequestImplToJson(
      this,
    );
  }
}

abstract class _LeaveCommentRequest implements LeaveCommentRequest {
  factory _LeaveCommentRequest(
      {required final String feedsId,
      required final String content}) = _$LeaveCommentRequestImpl;

  factory _LeaveCommentRequest.fromJson(Map<String, dynamic> json) =
      _$LeaveCommentRequestImpl.fromJson;

  @override
  String get feedsId;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$LeaveCommentRequestImplCopyWith<_$LeaveCommentRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenCommentsResponse _$OpenCommentsResponseFromJson(Map<String, dynamic> json) {
  return _OpenCommentsResponse.fromJson(json);
}

/// @nodoc
mixin _$OpenCommentsResponse {
  String? get username => throw _privateConstructorUsedError;
  String? get commentId => throw _privateConstructorUsedError;
  String? get feedsId => throw _privateConstructorUsedError;
  String? get accountId => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get commentDate => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenCommentsResponseCopyWith<OpenCommentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenCommentsResponseCopyWith<$Res> {
  factory $OpenCommentsResponseCopyWith(OpenCommentsResponse value,
          $Res Function(OpenCommentsResponse) then) =
      _$OpenCommentsResponseCopyWithImpl<$Res, OpenCommentsResponse>;
  @useResult
  $Res call(
      {String? username,
      String? commentId,
      String? feedsId,
      String? accountId,
      String? content,
      String? commentDate,
      String? errorCode,
      String? errorMessage,
      String? profilePicture});
}

/// @nodoc
class _$OpenCommentsResponseCopyWithImpl<$Res,
        $Val extends OpenCommentsResponse>
    implements $OpenCommentsResponseCopyWith<$Res> {
  _$OpenCommentsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? commentId = freezed,
    Object? feedsId = freezed,
    Object? accountId = freezed,
    Object? content = freezed,
    Object? commentDate = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      commentId: freezed == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      feedsId: freezed == feedsId
          ? _value.feedsId
          : feedsId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      commentDate: freezed == commentDate
          ? _value.commentDate
          : commentDate // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenCommentsResponseImplCopyWith<$Res>
    implements $OpenCommentsResponseCopyWith<$Res> {
  factory _$$OpenCommentsResponseImplCopyWith(_$OpenCommentsResponseImpl value,
          $Res Function(_$OpenCommentsResponseImpl) then) =
      __$$OpenCommentsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username,
      String? commentId,
      String? feedsId,
      String? accountId,
      String? content,
      String? commentDate,
      String? errorCode,
      String? errorMessage,
      String? profilePicture});
}

/// @nodoc
class __$$OpenCommentsResponseImplCopyWithImpl<$Res>
    extends _$OpenCommentsResponseCopyWithImpl<$Res, _$OpenCommentsResponseImpl>
    implements _$$OpenCommentsResponseImplCopyWith<$Res> {
  __$$OpenCommentsResponseImplCopyWithImpl(_$OpenCommentsResponseImpl _value,
      $Res Function(_$OpenCommentsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? commentId = freezed,
    Object? feedsId = freezed,
    Object? accountId = freezed,
    Object? content = freezed,
    Object? commentDate = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_$OpenCommentsResponseImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      commentId: freezed == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      feedsId: freezed == feedsId
          ? _value.feedsId
          : feedsId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      commentDate: freezed == commentDate
          ? _value.commentDate
          : commentDate // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenCommentsResponseImpl implements _OpenCommentsResponse {
  _$OpenCommentsResponseImpl(
      {required this.username,
      required this.commentId,
      required this.feedsId,
      required this.accountId,
      required this.content,
      required this.commentDate,
      required this.errorCode,
      required this.errorMessage,
      required this.profilePicture});

  factory _$OpenCommentsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenCommentsResponseImplFromJson(json);

  @override
  final String? username;
  @override
  final String? commentId;
  @override
  final String? feedsId;
  @override
  final String? accountId;
  @override
  final String? content;
  @override
  final String? commentDate;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;
  @override
  final String? profilePicture;

  @override
  String toString() {
    return 'OpenCommentsResponse(username: $username, commentId: $commentId, feedsId: $feedsId, accountId: $accountId, content: $content, commentDate: $commentDate, errorCode: $errorCode, errorMessage: $errorMessage, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenCommentsResponseImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.feedsId, feedsId) || other.feedsId == feedsId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.commentDate, commentDate) ||
                other.commentDate == commentDate) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, commentId, feedsId,
      accountId, content, commentDate, errorCode, errorMessage, profilePicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenCommentsResponseImplCopyWith<_$OpenCommentsResponseImpl>
      get copyWith =>
          __$$OpenCommentsResponseImplCopyWithImpl<_$OpenCommentsResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenCommentsResponseImplToJson(
      this,
    );
  }
}

abstract class _OpenCommentsResponse implements OpenCommentsResponse {
  factory _OpenCommentsResponse(
      {required final String? username,
      required final String? commentId,
      required final String? feedsId,
      required final String? accountId,
      required final String? content,
      required final String? commentDate,
      required final String? errorCode,
      required final String? errorMessage,
      required final String? profilePicture}) = _$OpenCommentsResponseImpl;

  factory _OpenCommentsResponse.fromJson(Map<String, dynamic> json) =
      _$OpenCommentsResponseImpl.fromJson;

  @override
  String? get username;
  @override
  String? get commentId;
  @override
  String? get feedsId;
  @override
  String? get accountId;
  @override
  String? get content;
  @override
  String? get commentDate;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  String? get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$OpenCommentsResponseImplCopyWith<_$OpenCommentsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostFeedsRequest _$PostFeedsRequestFromJson(Map<String, dynamic> json) {
  return _PostFeedsRequest.fromJson(json);
}

/// @nodoc
mixin _$PostFeedsRequest {
  String get caption => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostFeedsRequestCopyWith<PostFeedsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFeedsRequestCopyWith<$Res> {
  factory $PostFeedsRequestCopyWith(
          PostFeedsRequest value, $Res Function(PostFeedsRequest) then) =
      _$PostFeedsRequestCopyWithImpl<$Res, PostFeedsRequest>;
  @useResult
  $Res call({String caption, String image});
}

/// @nodoc
class _$PostFeedsRequestCopyWithImpl<$Res, $Val extends PostFeedsRequest>
    implements $PostFeedsRequestCopyWith<$Res> {
  _$PostFeedsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caption = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostFeedsRequestImplCopyWith<$Res>
    implements $PostFeedsRequestCopyWith<$Res> {
  factory _$$PostFeedsRequestImplCopyWith(_$PostFeedsRequestImpl value,
          $Res Function(_$PostFeedsRequestImpl) then) =
      __$$PostFeedsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String caption, String image});
}

/// @nodoc
class __$$PostFeedsRequestImplCopyWithImpl<$Res>
    extends _$PostFeedsRequestCopyWithImpl<$Res, _$PostFeedsRequestImpl>
    implements _$$PostFeedsRequestImplCopyWith<$Res> {
  __$$PostFeedsRequestImplCopyWithImpl(_$PostFeedsRequestImpl _value,
      $Res Function(_$PostFeedsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caption = null,
    Object? image = null,
  }) {
    return _then(_$PostFeedsRequestImpl(
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostFeedsRequestImpl implements _PostFeedsRequest {
  _$PostFeedsRequestImpl({required this.caption, required this.image});

  factory _$PostFeedsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostFeedsRequestImplFromJson(json);

  @override
  final String caption;
  @override
  final String image;

  @override
  String toString() {
    return 'PostFeedsRequest(caption: $caption, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostFeedsRequestImpl &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, caption, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostFeedsRequestImplCopyWith<_$PostFeedsRequestImpl> get copyWith =>
      __$$PostFeedsRequestImplCopyWithImpl<_$PostFeedsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostFeedsRequestImplToJson(
      this,
    );
  }
}

abstract class _PostFeedsRequest implements PostFeedsRequest {
  factory _PostFeedsRequest(
      {required final String caption,
      required final String image}) = _$PostFeedsRequestImpl;

  factory _PostFeedsRequest.fromJson(Map<String, dynamic> json) =
      _$PostFeedsRequestImpl.fromJson;

  @override
  String get caption;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$PostFeedsRequestImplCopyWith<_$PostFeedsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ViewFeedsResponse _$ViewFeedsResponseFromJson(Map<String, dynamic> json) {
  return _ViewFeedsResponse.fromJson(json);
}

/// @nodoc
mixin _$ViewFeedsResponse {
  String? get feedsId => throw _privateConstructorUsedError;
  String? get accountId => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get likesCount => throw _privateConstructorUsedError;
  String? get postDate => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewFeedsResponseCopyWith<ViewFeedsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewFeedsResponseCopyWith<$Res> {
  factory $ViewFeedsResponseCopyWith(
          ViewFeedsResponse value, $Res Function(ViewFeedsResponse) then) =
      _$ViewFeedsResponseCopyWithImpl<$Res, ViewFeedsResponse>;
  @useResult
  $Res call(
      {String? feedsId,
      String? accountId,
      String? username,
      String? caption,
      String? image,
      String? likesCount,
      String? postDate,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class _$ViewFeedsResponseCopyWithImpl<$Res, $Val extends ViewFeedsResponse>
    implements $ViewFeedsResponseCopyWith<$Res> {
  _$ViewFeedsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedsId = freezed,
    Object? accountId = freezed,
    Object? username = freezed,
    Object? caption = freezed,
    Object? image = freezed,
    Object? likesCount = freezed,
    Object? postDate = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      feedsId: freezed == feedsId
          ? _value.feedsId
          : feedsId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      likesCount: freezed == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as String?,
      postDate: freezed == postDate
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ViewFeedsResponseImplCopyWith<$Res>
    implements $ViewFeedsResponseCopyWith<$Res> {
  factory _$$ViewFeedsResponseImplCopyWith(_$ViewFeedsResponseImpl value,
          $Res Function(_$ViewFeedsResponseImpl) then) =
      __$$ViewFeedsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? feedsId,
      String? accountId,
      String? username,
      String? caption,
      String? image,
      String? likesCount,
      String? postDate,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class __$$ViewFeedsResponseImplCopyWithImpl<$Res>
    extends _$ViewFeedsResponseCopyWithImpl<$Res, _$ViewFeedsResponseImpl>
    implements _$$ViewFeedsResponseImplCopyWith<$Res> {
  __$$ViewFeedsResponseImplCopyWithImpl(_$ViewFeedsResponseImpl _value,
      $Res Function(_$ViewFeedsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedsId = freezed,
    Object? accountId = freezed,
    Object? username = freezed,
    Object? caption = freezed,
    Object? image = freezed,
    Object? likesCount = freezed,
    Object? postDate = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ViewFeedsResponseImpl(
      feedsId: freezed == feedsId
          ? _value.feedsId
          : feedsId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      likesCount: freezed == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as String?,
      postDate: freezed == postDate
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
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
class _$ViewFeedsResponseImpl implements _ViewFeedsResponse {
  _$ViewFeedsResponseImpl(
      {required this.feedsId,
      required this.accountId,
      required this.username,
      required this.caption,
      required this.image,
      required this.likesCount,
      required this.postDate,
      required this.errorCode,
      required this.errorMessage});

  factory _$ViewFeedsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewFeedsResponseImplFromJson(json);

  @override
  final String? feedsId;
  @override
  final String? accountId;
  @override
  final String? username;
  @override
  final String? caption;
  @override
  final String? image;
  @override
  final String? likesCount;
  @override
  final String? postDate;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ViewFeedsResponse(feedsId: $feedsId, accountId: $accountId, username: $username, caption: $caption, image: $image, likesCount: $likesCount, postDate: $postDate, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewFeedsResponseImpl &&
            (identical(other.feedsId, feedsId) || other.feedsId == feedsId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.postDate, postDate) ||
                other.postDate == postDate) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, feedsId, accountId, username,
      caption, image, likesCount, postDate, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewFeedsResponseImplCopyWith<_$ViewFeedsResponseImpl> get copyWith =>
      __$$ViewFeedsResponseImplCopyWithImpl<_$ViewFeedsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewFeedsResponseImplToJson(
      this,
    );
  }
}

abstract class _ViewFeedsResponse implements ViewFeedsResponse {
  factory _ViewFeedsResponse(
      {required final String? feedsId,
      required final String? accountId,
      required final String? username,
      required final String? caption,
      required final String? image,
      required final String? likesCount,
      required final String? postDate,
      required final String? errorCode,
      required final String? errorMessage}) = _$ViewFeedsResponseImpl;

  factory _ViewFeedsResponse.fromJson(Map<String, dynamic> json) =
      _$ViewFeedsResponseImpl.fromJson;

  @override
  String? get feedsId;
  @override
  String? get accountId;
  @override
  String? get username;
  @override
  String? get caption;
  @override
  String? get image;
  @override
  String? get likesCount;
  @override
  String? get postDate;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ViewFeedsResponseImplCopyWith<_$ViewFeedsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaveCommentResponse _$LeaveCommentResponseFromJson(Map<String, dynamic> json) {
  return _LeaveCommentResponse.fromJson(json);
}

/// @nodoc
mixin _$LeaveCommentResponse {
  String get commentId => throw _privateConstructorUsedError;
  String get feedsId => throw _privateConstructorUsedError;
  String get accountId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get commentDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaveCommentResponseCopyWith<LeaveCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveCommentResponseCopyWith<$Res> {
  factory $LeaveCommentResponseCopyWith(LeaveCommentResponse value,
          $Res Function(LeaveCommentResponse) then) =
      _$LeaveCommentResponseCopyWithImpl<$Res, LeaveCommentResponse>;
  @useResult
  $Res call(
      {String commentId,
      String feedsId,
      String accountId,
      String content,
      String commentDate});
}

/// @nodoc
class _$LeaveCommentResponseCopyWithImpl<$Res,
        $Val extends LeaveCommentResponse>
    implements $LeaveCommentResponseCopyWith<$Res> {
  _$LeaveCommentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? feedsId = null,
    Object? accountId = null,
    Object? content = null,
    Object? commentDate = null,
  }) {
    return _then(_value.copyWith(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
      feedsId: null == feedsId
          ? _value.feedsId
          : feedsId // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      commentDate: null == commentDate
          ? _value.commentDate
          : commentDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveCommentResponseImplCopyWith<$Res>
    implements $LeaveCommentResponseCopyWith<$Res> {
  factory _$$LeaveCommentResponseImplCopyWith(_$LeaveCommentResponseImpl value,
          $Res Function(_$LeaveCommentResponseImpl) then) =
      __$$LeaveCommentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String commentId,
      String feedsId,
      String accountId,
      String content,
      String commentDate});
}

/// @nodoc
class __$$LeaveCommentResponseImplCopyWithImpl<$Res>
    extends _$LeaveCommentResponseCopyWithImpl<$Res, _$LeaveCommentResponseImpl>
    implements _$$LeaveCommentResponseImplCopyWith<$Res> {
  __$$LeaveCommentResponseImplCopyWithImpl(_$LeaveCommentResponseImpl _value,
      $Res Function(_$LeaveCommentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? feedsId = null,
    Object? accountId = null,
    Object? content = null,
    Object? commentDate = null,
  }) {
    return _then(_$LeaveCommentResponseImpl(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
      feedsId: null == feedsId
          ? _value.feedsId
          : feedsId // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      commentDate: null == commentDate
          ? _value.commentDate
          : commentDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveCommentResponseImpl implements _LeaveCommentResponse {
  _$LeaveCommentResponseImpl(
      {required this.commentId,
      required this.feedsId,
      required this.accountId,
      required this.content,
      required this.commentDate});

  factory _$LeaveCommentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveCommentResponseImplFromJson(json);

  @override
  final String commentId;
  @override
  final String feedsId;
  @override
  final String accountId;
  @override
  final String content;
  @override
  final String commentDate;

  @override
  String toString() {
    return 'LeaveCommentResponse(commentId: $commentId, feedsId: $feedsId, accountId: $accountId, content: $content, commentDate: $commentDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveCommentResponseImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.feedsId, feedsId) || other.feedsId == feedsId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.commentDate, commentDate) ||
                other.commentDate == commentDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, commentId, feedsId, accountId, content, commentDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveCommentResponseImplCopyWith<_$LeaveCommentResponseImpl>
      get copyWith =>
          __$$LeaveCommentResponseImplCopyWithImpl<_$LeaveCommentResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveCommentResponseImplToJson(
      this,
    );
  }
}

abstract class _LeaveCommentResponse implements LeaveCommentResponse {
  factory _LeaveCommentResponse(
      {required final String commentId,
      required final String feedsId,
      required final String accountId,
      required final String content,
      required final String commentDate}) = _$LeaveCommentResponseImpl;

  factory _LeaveCommentResponse.fromJson(Map<String, dynamic> json) =
      _$LeaveCommentResponseImpl.fromJson;

  @override
  String get commentId;
  @override
  String get feedsId;
  @override
  String get accountId;
  @override
  String get content;
  @override
  String get commentDate;
  @override
  @JsonKey(ignore: true)
  _$$LeaveCommentResponseImplCopyWith<_$LeaveCommentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostFeedsResponse _$PostFeedsResponseFromJson(Map<String, dynamic> json) {
  return _PostFeedsResponse.fromJson(json);
}

/// @nodoc
mixin _$PostFeedsResponse {
  String? get feedsId => throw _privateConstructorUsedError;
  String? get accountId => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get likesCount => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get reportCount => throw _privateConstructorUsedError;
  String? get postDate => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostFeedsResponseCopyWith<PostFeedsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFeedsResponseCopyWith<$Res> {
  factory $PostFeedsResponseCopyWith(
          PostFeedsResponse value, $Res Function(PostFeedsResponse) then) =
      _$PostFeedsResponseCopyWithImpl<$Res, PostFeedsResponse>;
  @useResult
  $Res call(
      {String? feedsId,
      String? accountId,
      String? username,
      String? likesCount,
      String? caption,
      String? image,
      String? reportCount,
      String? postDate,
      String? deletedAt,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class _$PostFeedsResponseCopyWithImpl<$Res, $Val extends PostFeedsResponse>
    implements $PostFeedsResponseCopyWith<$Res> {
  _$PostFeedsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedsId = freezed,
    Object? accountId = freezed,
    Object? username = freezed,
    Object? likesCount = freezed,
    Object? caption = freezed,
    Object? image = freezed,
    Object? reportCount = freezed,
    Object? postDate = freezed,
    Object? deletedAt = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      feedsId: freezed == feedsId
          ? _value.feedsId
          : feedsId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      likesCount: freezed == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      reportCount: freezed == reportCount
          ? _value.reportCount
          : reportCount // ignore: cast_nullable_to_non_nullable
              as String?,
      postDate: freezed == postDate
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PostFeedsResponseImplCopyWith<$Res>
    implements $PostFeedsResponseCopyWith<$Res> {
  factory _$$PostFeedsResponseImplCopyWith(_$PostFeedsResponseImpl value,
          $Res Function(_$PostFeedsResponseImpl) then) =
      __$$PostFeedsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? feedsId,
      String? accountId,
      String? username,
      String? likesCount,
      String? caption,
      String? image,
      String? reportCount,
      String? postDate,
      String? deletedAt,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class __$$PostFeedsResponseImplCopyWithImpl<$Res>
    extends _$PostFeedsResponseCopyWithImpl<$Res, _$PostFeedsResponseImpl>
    implements _$$PostFeedsResponseImplCopyWith<$Res> {
  __$$PostFeedsResponseImplCopyWithImpl(_$PostFeedsResponseImpl _value,
      $Res Function(_$PostFeedsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedsId = freezed,
    Object? accountId = freezed,
    Object? username = freezed,
    Object? likesCount = freezed,
    Object? caption = freezed,
    Object? image = freezed,
    Object? reportCount = freezed,
    Object? postDate = freezed,
    Object? deletedAt = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PostFeedsResponseImpl(
      feedsId: freezed == feedsId
          ? _value.feedsId
          : feedsId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      likesCount: freezed == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      reportCount: freezed == reportCount
          ? _value.reportCount
          : reportCount // ignore: cast_nullable_to_non_nullable
              as String?,
      postDate: freezed == postDate
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
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
class _$PostFeedsResponseImpl implements _PostFeedsResponse {
  _$PostFeedsResponseImpl(
      {required this.feedsId,
      required this.accountId,
      required this.username,
      required this.likesCount,
      required this.caption,
      required this.image,
      required this.reportCount,
      required this.postDate,
      required this.deletedAt,
      required this.errorCode,
      required this.errorMessage});

  factory _$PostFeedsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostFeedsResponseImplFromJson(json);

  @override
  final String? feedsId;
  @override
  final String? accountId;
  @override
  final String? username;
  @override
  final String? likesCount;
  @override
  final String? caption;
  @override
  final String? image;
  @override
  final String? reportCount;
  @override
  final String? postDate;
  @override
  final String? deletedAt;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PostFeedsResponse(feedsId: $feedsId, accountId: $accountId, username: $username, likesCount: $likesCount, caption: $caption, image: $image, reportCount: $reportCount, postDate: $postDate, deletedAt: $deletedAt, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostFeedsResponseImpl &&
            (identical(other.feedsId, feedsId) || other.feedsId == feedsId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.reportCount, reportCount) ||
                other.reportCount == reportCount) &&
            (identical(other.postDate, postDate) ||
                other.postDate == postDate) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      feedsId,
      accountId,
      username,
      likesCount,
      caption,
      image,
      reportCount,
      postDate,
      deletedAt,
      errorCode,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostFeedsResponseImplCopyWith<_$PostFeedsResponseImpl> get copyWith =>
      __$$PostFeedsResponseImplCopyWithImpl<_$PostFeedsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostFeedsResponseImplToJson(
      this,
    );
  }
}

abstract class _PostFeedsResponse implements PostFeedsResponse {
  factory _PostFeedsResponse(
      {required final String? feedsId,
      required final String? accountId,
      required final String? username,
      required final String? likesCount,
      required final String? caption,
      required final String? image,
      required final String? reportCount,
      required final String? postDate,
      required final String? deletedAt,
      required final String? errorCode,
      required final String? errorMessage}) = _$PostFeedsResponseImpl;

  factory _PostFeedsResponse.fromJson(Map<String, dynamic> json) =
      _$PostFeedsResponseImpl.fromJson;

  @override
  String? get feedsId;
  @override
  String? get accountId;
  @override
  String? get username;
  @override
  String? get likesCount;
  @override
  String? get caption;
  @override
  String? get image;
  @override
  String? get reportCount;
  @override
  String? get postDate;
  @override
  String? get deletedAt;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PostFeedsResponseImplCopyWith<_$PostFeedsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LikeFeedsResponse _$LikeFeedsResponseFromJson(Map<String, dynamic> json) {
  return _LikeFeedsResponse.fromJson(json);
}

/// @nodoc
mixin _$LikeFeedsResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeFeedsResponseCopyWith<LikeFeedsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeFeedsResponseCopyWith<$Res> {
  factory $LikeFeedsResponseCopyWith(
          LikeFeedsResponse value, $Res Function(LikeFeedsResponse) then) =
      _$LikeFeedsResponseCopyWithImpl<$Res, LikeFeedsResponse>;
  @useResult
  $Res call({String? status, String? errorCode, String? errorMessage});
}

/// @nodoc
class _$LikeFeedsResponseCopyWithImpl<$Res, $Val extends LikeFeedsResponse>
    implements $LikeFeedsResponseCopyWith<$Res> {
  _$LikeFeedsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
abstract class _$$LikeFeedsResponseImplCopyWith<$Res>
    implements $LikeFeedsResponseCopyWith<$Res> {
  factory _$$LikeFeedsResponseImplCopyWith(_$LikeFeedsResponseImpl value,
          $Res Function(_$LikeFeedsResponseImpl) then) =
      __$$LikeFeedsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? errorCode, String? errorMessage});
}

/// @nodoc
class __$$LikeFeedsResponseImplCopyWithImpl<$Res>
    extends _$LikeFeedsResponseCopyWithImpl<$Res, _$LikeFeedsResponseImpl>
    implements _$$LikeFeedsResponseImplCopyWith<$Res> {
  __$$LikeFeedsResponseImplCopyWithImpl(_$LikeFeedsResponseImpl _value,
      $Res Function(_$LikeFeedsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$LikeFeedsResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$LikeFeedsResponseImpl implements _LikeFeedsResponse {
  _$LikeFeedsResponseImpl(
      {required this.status,
      required this.errorCode,
      required this.errorMessage});

  factory _$LikeFeedsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikeFeedsResponseImplFromJson(json);

  @override
  final String? status;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'LikeFeedsResponse(status: $status, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeFeedsResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeFeedsResponseImplCopyWith<_$LikeFeedsResponseImpl> get copyWith =>
      __$$LikeFeedsResponseImplCopyWithImpl<_$LikeFeedsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikeFeedsResponseImplToJson(
      this,
    );
  }
}

abstract class _LikeFeedsResponse implements LikeFeedsResponse {
  factory _LikeFeedsResponse(
      {required final String? status,
      required final String? errorCode,
      required final String? errorMessage}) = _$LikeFeedsResponseImpl;

  factory _LikeFeedsResponse.fromJson(Map<String, dynamic> json) =
      _$LikeFeedsResponseImpl.fromJson;

  @override
  String? get status;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$LikeFeedsResponseImplCopyWith<_$LikeFeedsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
