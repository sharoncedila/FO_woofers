import 'package:freezed_annotation/freezed_annotation.dart';
part 'feeds_model.freezed.dart';
part 'feeds_model.g.dart';

@freezed
class LeaveCommentRequest with _$LeaveCommentRequest {
  factory LeaveCommentRequest({
    required String feedsId,
    required String content
  }) = _LeaveCommentRequest;

  factory LeaveCommentRequest.fromJson(Map<String, dynamic> json) => _$LeaveCommentRequestFromJson(json);
}

@freezed
class OpenCommentsResponse with _$OpenCommentsResponse{
  factory OpenCommentsResponse({
    required String? commentId,
    required String? feedsId,
    required String? accountId,
    required String? content,
    required String? commentDate,
    required String? errorCode,
    required String? errorMessage,
  }) = _OpenCommentsResponse;

  factory OpenCommentsResponse.fromJson(Map<String, dynamic> json) => _$OpenCommentsResponseFromJson(json);
}

@freezed
class PostFeedsRequest with _$PostFeedsRequest {
  factory PostFeedsRequest({
    required String caption,
    required String image
  }) = _PostFeedsRequest;

  factory PostFeedsRequest.fromJson(Map<String, dynamic> json) => _$PostFeedsRequestFromJson(json);
}

@freezed
class ViewFeedsResponse with _$ViewFeedsResponse{
  factory ViewFeedsResponse({
    required String? feedsId,
    required String? accountId,
    required String? username,
    required String? caption,
    required String? image,
    required String? likesCount,
    required String? postDate,
    required String? errorCode,
    required String? errorMessage
  }) = _ViewFeedsResponse;

  factory ViewFeedsResponse.fromJson(Map<String, dynamic> json) => _$ViewFeedsResponseFromJson(json);
}

@freezed
class PostFeedsResponse with _$PostFeedsResponse{
  factory PostFeedsResponse({
    required String? feedsId,
    required String? accountId,
    required String? username,
    required String? likesCount,
    required String? caption,
    required String? image,
    required String? reportCount,
    required String? postDate,
    required String? deletedAt,
    required String? errorCode,
    required String? errorMessage
  }) = _PostFeedsResponse;

  factory PostFeedsResponse.fromJson(Map<String, dynamic> json) => _$PostFeedsResponseFromJson(json);
}

@freezed
class OpenCommentsResponse with _$OpenCommentsResponse{
  factory OpenCommentsResponse({
    required String? commentId,
    required String? feedsId,
    required String? accountId,
    required String? content,
    required String? commentDate,
    required String? errorCode,
    required String? errorMessage,
  }) = _OpenCommentsResponse;

  factory OpenCommentsResponse.fromJson(Map<String, dynamic> json) => _$OpenCommentsResponseFromJson(json);
}

@freezed
class LikeFeedsResponse with _$LikeFeedsResponse{
  factory LikeFeedsResponse({
    required String? status,
    required String? errorCode,
    required String? errorMessage,
  }) = _LikeFeedsResponse;

  factory LikeFeedsResponse.fromJson(Map<String, dynamic> json) => _$LikeFeedsResponseFromJson(json);
}