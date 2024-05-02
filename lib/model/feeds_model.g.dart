// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feeds_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaveCommentRequestImpl _$$LeaveCommentRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaveCommentRequestImpl(
      feedsId: json['feedsId'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$LeaveCommentRequestImplToJson(
        _$LeaveCommentRequestImpl instance) =>
    <String, dynamic>{
      'feedsId': instance.feedsId,
      'content': instance.content,
    };

_$OpenCommentsResponseImpl _$$OpenCommentsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenCommentsResponseImpl(
      username: json['username'] as String?,
      commentId: json['commentId'] as String?,
      feedsId: json['feedsId'] as String?,
      accountId: json['accountId'] as String?,
      content: json['content'] as String?,
      commentDate: json['commentDate'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      profilePicture: json['profilePicture'] as String?,
    );

Map<String, dynamic> _$$OpenCommentsResponseImplToJson(
        _$OpenCommentsResponseImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'commentId': instance.commentId,
      'feedsId': instance.feedsId,
      'accountId': instance.accountId,
      'content': instance.content,
      'commentDate': instance.commentDate,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'profilePicture': instance.profilePicture,
    };

_$PostFeedsRequestImpl _$$PostFeedsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PostFeedsRequestImpl(
      caption: json['caption'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$PostFeedsRequestImplToJson(
        _$PostFeedsRequestImpl instance) =>
    <String, dynamic>{
      'caption': instance.caption,
      'image': instance.image,
    };

_$ViewFeedsResponseImpl _$$ViewFeedsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ViewFeedsResponseImpl(
      feedsId: json['feedsId'] as String?,
      accountId: json['accountId'] as String?,
      username: json['username'] as String?,
      caption: json['caption'] as String?,
      image: json['image'] as String?,
      likesCount: json['likesCount'] as String?,
      postDate: json['postDate'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      isLike: json['isLike'] as String?,
      profilePicture: json['profilePicture'] as String?,
    );

Map<String, dynamic> _$$ViewFeedsResponseImplToJson(
        _$ViewFeedsResponseImpl instance) =>
    <String, dynamic>{
      'feedsId': instance.feedsId,
      'accountId': instance.accountId,
      'username': instance.username,
      'caption': instance.caption,
      'image': instance.image,
      'likesCount': instance.likesCount,
      'postDate': instance.postDate,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'isLike': instance.isLike,
      'profilePicture': instance.profilePicture,
    };

_$LeaveCommentResponseImpl _$$LeaveCommentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaveCommentResponseImpl(
      commentId: json['commentId'] as String,
      feedsId: json['feedsId'] as String,
      accountId: json['accountId'] as String,
      content: json['content'] as String,
      commentDate: json['commentDate'] as String,
    );

Map<String, dynamic> _$$LeaveCommentResponseImplToJson(
        _$LeaveCommentResponseImpl instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'feedsId': instance.feedsId,
      'accountId': instance.accountId,
      'content': instance.content,
      'commentDate': instance.commentDate,
    };

_$PostFeedsResponseImpl _$$PostFeedsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PostFeedsResponseImpl(
      feedsId: json['feedsId'] as String?,
      accountId: json['accountId'] as String?,
      username: json['username'] as String?,
      likesCount: json['likesCount'] as String?,
      caption: json['caption'] as String?,
      image: json['image'] as String?,
      reportCount: json['reportCount'] as String?,
      postDate: json['postDate'] as String?,
      deletedAt: json['deletedAt'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$PostFeedsResponseImplToJson(
        _$PostFeedsResponseImpl instance) =>
    <String, dynamic>{
      'feedsId': instance.feedsId,
      'accountId': instance.accountId,
      'username': instance.username,
      'likesCount': instance.likesCount,
      'caption': instance.caption,
      'image': instance.image,
      'reportCount': instance.reportCount,
      'postDate': instance.postDate,
      'deletedAt': instance.deletedAt,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };
