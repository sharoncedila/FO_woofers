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

_$PostFeedsRequestImpl _$$PostFeedsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PostFeedsRequestImpl(
      caption: json['caption'] as String,
      image: json['image'] as String,
      video: json['video'] as String,
    );

Map<String, dynamic> _$$PostFeedsRequestImplToJson(
        _$PostFeedsRequestImpl instance) =>
    <String, dynamic>{
      'caption': instance.caption,
      'image': instance.image,
      'video': instance.video,
    };

_$ViewFeedsImpl _$$ViewFeedsImplFromJson(Map<String, dynamic> json) =>
    _$ViewFeedsImpl(
      feedsId: json['feedsId'] as String,
      accountId: json['accountId'] as String,
      username: json['username'] as String,
      caption: json['caption'] as String,
      image: json['image'] as String,
      video: json['video'] as String,
      likesCount: json['likesCount'] as String,
      postDate: json['postDate'] as String,
    );

Map<String, dynamic> _$$ViewFeedsImplToJson(_$ViewFeedsImpl instance) =>
    <String, dynamic>{
      'feedsId': instance.feedsId,
      'accountId': instance.accountId,
      'username': instance.username,
      'caption': instance.caption,
      'image': instance.image,
      'video': instance.video,
      'likesCount': instance.likesCount,
      'postDate': instance.postDate,
    };

_$LeaveCommentResponseImpl _$$LeaveCommentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaveCommentResponseImpl(
      commentId: json['commentId'] as String,
      feedsId: json['feedsId'] as String,
      accountId: json['accountId'] as String,
      content: json['content'] as String,
      commentDate: json['commentDate'] as String,
      video: json['video'] as String,
      likesCount: json['likesCount'] as String,
      postDate: json['postDate'] as String,
    );

Map<String, dynamic> _$$LeaveCommentResponseImplToJson(
        _$LeaveCommentResponseImpl instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'feedsId': instance.feedsId,
      'accountId': instance.accountId,
      'content': instance.content,
      'commentDate': instance.commentDate,
      'video': instance.video,
      'likesCount': instance.likesCount,
      'postDate': instance.postDate,
    };

_$OpenCommentsResponseImpl _$$OpenCommentsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenCommentsResponseImpl(
      commentList: json['commentList'] as String,
    );

Map<String, dynamic> _$$OpenCommentsResponseImplToJson(
        _$OpenCommentsResponseImpl instance) =>
    <String, dynamic>{
      'commentList': instance.commentList,
    };

_$PostFeedsResponseImpl _$$PostFeedsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PostFeedsResponseImpl(
      feedsData: json['feedsData'] as String,
    );

Map<String, dynamic> _$$PostFeedsResponseImplToJson(
        _$PostFeedsResponseImpl instance) =>
    <String, dynamic>{
      'feedsData': instance.feedsData,
    };

_$UploadFeedsResponseImpl _$$UploadFeedsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadFeedsResponseImpl(
      fileName: json['fileName'] as String,
    );

Map<String, dynamic> _$$UploadFeedsResponseImplToJson(
        _$UploadFeedsResponseImpl instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
    };
