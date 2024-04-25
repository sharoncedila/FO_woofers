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

PostFeedsRequest _$PostFeedsRequestFromJson(Map<String, dynamic> json) {
  return _PostFeedsRequest.fromJson(json);
}

/// @nodoc
mixin _$PostFeedsRequest {
  String get caption => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;

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
  $Res call({String caption, String image, String video});
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
    Object? video = null,
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
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
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
  $Res call({String caption, String image, String video});
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
    Object? video = null,
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
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostFeedsRequestImpl implements _PostFeedsRequest {
  _$PostFeedsRequestImpl(
      {required this.caption, required this.image, required this.video});

  factory _$PostFeedsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostFeedsRequestImplFromJson(json);

  @override
  final String caption;
  @override
  final String image;
  @override
  final String video;

  @override
  String toString() {
    return 'PostFeedsRequest(caption: $caption, image: $image, video: $video)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostFeedsRequestImpl &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.video, video) || other.video == video));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, caption, image, video);

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
      required final String image,
      required final String video}) = _$PostFeedsRequestImpl;

  factory _PostFeedsRequest.fromJson(Map<String, dynamic> json) =
      _$PostFeedsRequestImpl.fromJson;

  @override
  String get caption;
  @override
  String get image;
  @override
  String get video;
  @override
  @JsonKey(ignore: true)
  _$$PostFeedsRequestImplCopyWith<_$PostFeedsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ViewFeeds _$ViewFeedsFromJson(Map<String, dynamic> json) {
  return _ViewFeeds.fromJson(json);
}

/// @nodoc
mixin _$ViewFeeds {
  String get feedsId => throw _privateConstructorUsedError;
  String get accountId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get caption => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;
  String get likesCount => throw _privateConstructorUsedError;
  String get postDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewFeedsCopyWith<ViewFeeds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewFeedsCopyWith<$Res> {
  factory $ViewFeedsCopyWith(ViewFeeds value, $Res Function(ViewFeeds) then) =
      _$ViewFeedsCopyWithImpl<$Res, ViewFeeds>;
  @useResult
  $Res call(
      {String feedsId,
      String accountId,
      String username,
      String caption,
      String image,
      String video,
      String likesCount,
      String postDate});
}

/// @nodoc
class _$ViewFeedsCopyWithImpl<$Res, $Val extends ViewFeeds>
    implements $ViewFeedsCopyWith<$Res> {
  _$ViewFeedsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedsId = null,
    Object? accountId = null,
    Object? username = null,
    Object? caption = null,
    Object? image = null,
    Object? video = null,
    Object? likesCount = null,
    Object? postDate = null,
  }) {
    return _then(_value.copyWith(
      feedsId: null == feedsId
          ? _value.feedsId
          : feedsId // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as String,
      postDate: null == postDate
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewFeedsImplCopyWith<$Res>
    implements $ViewFeedsCopyWith<$Res> {
  factory _$$ViewFeedsImplCopyWith(
          _$ViewFeedsImpl value, $Res Function(_$ViewFeedsImpl) then) =
      __$$ViewFeedsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String feedsId,
      String accountId,
      String username,
      String caption,
      String image,
      String video,
      String likesCount,
      String postDate});
}

/// @nodoc
class __$$ViewFeedsImplCopyWithImpl<$Res>
    extends _$ViewFeedsCopyWithImpl<$Res, _$ViewFeedsImpl>
    implements _$$ViewFeedsImplCopyWith<$Res> {
  __$$ViewFeedsImplCopyWithImpl(
      _$ViewFeedsImpl _value, $Res Function(_$ViewFeedsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedsId = null,
    Object? accountId = null,
    Object? username = null,
    Object? caption = null,
    Object? image = null,
    Object? video = null,
    Object? likesCount = null,
    Object? postDate = null,
  }) {
    return _then(_$ViewFeedsImpl(
      feedsId: null == feedsId
          ? _value.feedsId
          : feedsId // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as String,
      postDate: null == postDate
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ViewFeedsImpl implements _ViewFeeds {
  _$ViewFeedsImpl(
      {required this.feedsId,
      required this.accountId,
      required this.username,
      required this.caption,
      required this.image,
      required this.video,
      required this.likesCount,
      required this.postDate});

  factory _$ViewFeedsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewFeedsImplFromJson(json);

  @override
  final String feedsId;
  @override
  final String accountId;
  @override
  final String username;
  @override
  final String caption;
  @override
  final String image;
  @override
  final String video;
  @override
  final String likesCount;
  @override
  final String postDate;

  @override
  String toString() {
    return 'ViewFeeds(feedsId: $feedsId, accountId: $accountId, username: $username, caption: $caption, image: $image, video: $video, likesCount: $likesCount, postDate: $postDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewFeedsImpl &&
            (identical(other.feedsId, feedsId) || other.feedsId == feedsId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.postDate, postDate) ||
                other.postDate == postDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, feedsId, accountId, username,
      caption, image, video, likesCount, postDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewFeedsImplCopyWith<_$ViewFeedsImpl> get copyWith =>
      __$$ViewFeedsImplCopyWithImpl<_$ViewFeedsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewFeedsImplToJson(
      this,
    );
  }
}

abstract class _ViewFeeds implements ViewFeeds {
  factory _ViewFeeds(
      {required final String feedsId,
      required final String accountId,
      required final String username,
      required final String caption,
      required final String image,
      required final String video,
      required final String likesCount,
      required final String postDate}) = _$ViewFeedsImpl;

  factory _ViewFeeds.fromJson(Map<String, dynamic> json) =
      _$ViewFeedsImpl.fromJson;

  @override
  String get feedsId;
  @override
  String get accountId;
  @override
  String get username;
  @override
  String get caption;
  @override
  String get image;
  @override
  String get video;
  @override
  String get likesCount;
  @override
  String get postDate;
  @override
  @JsonKey(ignore: true)
  _$$ViewFeedsImplCopyWith<_$ViewFeedsImpl> get copyWith =>
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
  String get video => throw _privateConstructorUsedError;
  String get likesCount => throw _privateConstructorUsedError;
  String get postDate => throw _privateConstructorUsedError;

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
      String commentDate,
      String video,
      String likesCount,
      String postDate});
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
    Object? video = null,
    Object? likesCount = null,
    Object? postDate = null,
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
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as String,
      postDate: null == postDate
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
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
      String commentDate,
      String video,
      String likesCount,
      String postDate});
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
    Object? video = null,
    Object? likesCount = null,
    Object? postDate = null,
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
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as String,
      postDate: null == postDate
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
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
      required this.commentDate,
      required this.video,
      required this.likesCount,
      required this.postDate});

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
  final String video;
  @override
  final String likesCount;
  @override
  final String postDate;

  @override
  String toString() {
    return 'LeaveCommentResponse(commentId: $commentId, feedsId: $feedsId, accountId: $accountId, content: $content, commentDate: $commentDate, video: $video, likesCount: $likesCount, postDate: $postDate)';
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
                other.commentDate == commentDate) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.postDate, postDate) ||
                other.postDate == postDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, commentId, feedsId, accountId,
      content, commentDate, video, likesCount, postDate);

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
      required final String commentDate,
      required final String video,
      required final String likesCount,
      required final String postDate}) = _$LeaveCommentResponseImpl;

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
  String get video;
  @override
  String get likesCount;
  @override
  String get postDate;
  @override
  @JsonKey(ignore: true)
  _$$LeaveCommentResponseImplCopyWith<_$LeaveCommentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OpenCommentsResponse _$OpenCommentsResponseFromJson(Map<String, dynamic> json) {
  return _OpenCommentsResponse.fromJson(json);
}

/// @nodoc
mixin _$OpenCommentsResponse {
  String get commentList => throw _privateConstructorUsedError;

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
  $Res call({String commentList});
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
    Object? commentList = null,
  }) {
    return _then(_value.copyWith(
      commentList: null == commentList
          ? _value.commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String commentList});
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
    Object? commentList = null,
  }) {
    return _then(_$OpenCommentsResponseImpl(
      commentList: null == commentList
          ? _value.commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenCommentsResponseImpl implements _OpenCommentsResponse {
  _$OpenCommentsResponseImpl({required this.commentList});

  factory _$OpenCommentsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenCommentsResponseImplFromJson(json);

  @override
  final String commentList;

  @override
  String toString() {
    return 'OpenCommentsResponse(commentList: $commentList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenCommentsResponseImpl &&
            (identical(other.commentList, commentList) ||
                other.commentList == commentList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, commentList);

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
  factory _OpenCommentsResponse({required final String commentList}) =
      _$OpenCommentsResponseImpl;

  factory _OpenCommentsResponse.fromJson(Map<String, dynamic> json) =
      _$OpenCommentsResponseImpl.fromJson;

  @override
  String get commentList;
  @override
  @JsonKey(ignore: true)
  _$$OpenCommentsResponseImplCopyWith<_$OpenCommentsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostFeedsResponse _$PostFeedsResponseFromJson(Map<String, dynamic> json) {
  return _PostFeedsResponse.fromJson(json);
}

/// @nodoc
mixin _$PostFeedsResponse {
  String get feedsData => throw _privateConstructorUsedError;

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
  $Res call({String feedsData});
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
    Object? feedsData = null,
  }) {
    return _then(_value.copyWith(
      feedsData: null == feedsData
          ? _value.feedsData
          : feedsData // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String feedsData});
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
    Object? feedsData = null,
  }) {
    return _then(_$PostFeedsResponseImpl(
      feedsData: null == feedsData
          ? _value.feedsData
          : feedsData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostFeedsResponseImpl implements _PostFeedsResponse {
  _$PostFeedsResponseImpl({required this.feedsData});

  factory _$PostFeedsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostFeedsResponseImplFromJson(json);

  @override
  final String feedsData;

  @override
  String toString() {
    return 'PostFeedsResponse(feedsData: $feedsData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostFeedsResponseImpl &&
            (identical(other.feedsData, feedsData) ||
                other.feedsData == feedsData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, feedsData);

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
  factory _PostFeedsResponse({required final String feedsData}) =
      _$PostFeedsResponseImpl;

  factory _PostFeedsResponse.fromJson(Map<String, dynamic> json) =
      _$PostFeedsResponseImpl.fromJson;

  @override
  String get feedsData;
  @override
  @JsonKey(ignore: true)
  _$$PostFeedsResponseImplCopyWith<_$PostFeedsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UploadFeedsResponse _$UploadFeedsResponseFromJson(Map<String, dynamic> json) {
  return _UploadFeedsResponse.fromJson(json);
}

/// @nodoc
mixin _$UploadFeedsResponse {
  String get fileName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadFeedsResponseCopyWith<UploadFeedsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFeedsResponseCopyWith<$Res> {
  factory $UploadFeedsResponseCopyWith(
          UploadFeedsResponse value, $Res Function(UploadFeedsResponse) then) =
      _$UploadFeedsResponseCopyWithImpl<$Res, UploadFeedsResponse>;
  @useResult
  $Res call({String fileName});
}

/// @nodoc
class _$UploadFeedsResponseCopyWithImpl<$Res, $Val extends UploadFeedsResponse>
    implements $UploadFeedsResponseCopyWith<$Res> {
  _$UploadFeedsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
  }) {
    return _then(_value.copyWith(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadFeedsResponseImplCopyWith<$Res>
    implements $UploadFeedsResponseCopyWith<$Res> {
  factory _$$UploadFeedsResponseImplCopyWith(_$UploadFeedsResponseImpl value,
          $Res Function(_$UploadFeedsResponseImpl) then) =
      __$$UploadFeedsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fileName});
}

/// @nodoc
class __$$UploadFeedsResponseImplCopyWithImpl<$Res>
    extends _$UploadFeedsResponseCopyWithImpl<$Res, _$UploadFeedsResponseImpl>
    implements _$$UploadFeedsResponseImplCopyWith<$Res> {
  __$$UploadFeedsResponseImplCopyWithImpl(_$UploadFeedsResponseImpl _value,
      $Res Function(_$UploadFeedsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
  }) {
    return _then(_$UploadFeedsResponseImpl(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadFeedsResponseImpl implements _UploadFeedsResponse {
  _$UploadFeedsResponseImpl({required this.fileName});

  factory _$UploadFeedsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadFeedsResponseImplFromJson(json);

  @override
  final String fileName;

  @override
  String toString() {
    return 'UploadFeedsResponse(fileName: $fileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFeedsResponseImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFeedsResponseImplCopyWith<_$UploadFeedsResponseImpl> get copyWith =>
      __$$UploadFeedsResponseImplCopyWithImpl<_$UploadFeedsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadFeedsResponseImplToJson(
      this,
    );
  }
}

abstract class _UploadFeedsResponse implements UploadFeedsResponse {
  factory _UploadFeedsResponse({required final String fileName}) =
      _$UploadFeedsResponseImpl;

  factory _UploadFeedsResponse.fromJson(Map<String, dynamic> json) =
      _$UploadFeedsResponseImpl.fromJson;

  @override
  String get fileName;
  @override
  @JsonKey(ignore: true)
  _$$UploadFeedsResponseImplCopyWith<_$UploadFeedsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
