import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/error_schema_model.dart';
import 'package:woofers/model/feeds_model.dart';
import 'package:woofers/services/image_service.dart';

class FeedsService {
  Future<List<ViewFeedsResponse>> retrieveFeedsData() async {
    try {
      const api = '/feeds/view';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return [ViewFeedsResponse.fromJson(response.data['errorSchema'])];
      } else {
        return (response.data['outputSchema']['feedsContent'] as List)
            .map((e) => ViewFeedsResponse.fromJson(e))
            .toList();
      }
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<List<OpenCommentsResponse>?> openCommentSection(String feedsId) async {
    try {
      String api = '/feeds/open-comments/feeds-id/$feedsId';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return [OpenCommentsResponse.fromJson(response.data['errorSchema'])];
      } else {
        return (response.data['outputSchema']['commentsList'] as List)
            .map((e) => OpenCommentsResponse.fromJson(e))
            .toList();
      }
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<PostFeedsResponse?> postFeeds(PostFeedsRequest request) async {
    try {
      const api = '/feeds/post';
      final dio = await DioInstance.getInstance();

      // String uploadedImage;
      // FutureBuilder(
      //   future: ImageService().uploadFeeds(),
      //   builder: ((context, snapshot) {
      //     uploadedImage = snapshot.data.fileName;
      //   })
      // );

      var response = await dio.post(api, data: jsonEncode(request.toJson()));
      final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return PostFeedsResponse.fromJson(response.data['errorSchema']);
      } else {

        return PostFeedsResponse.fromJson(
            response.data['outputSchema']['feedsData']);
      }
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<LeaveCommentResponse?> leaveCommentSection(
      LeaveCommentRequest request) async {
    try {
      String api = '/feeds/comment';
      final dio = await DioInstance.getInstance();

      var response = await dio.post(api, data: jsonEncode(request.toJson()));
      final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return LeaveCommentResponse.fromJson(response.data['errorSchema']);
      } else {
        return LeaveCommentResponse.fromJson(
            response.data['outputSchema']['feedsData']);
      }
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<ViewFeedsResponse> likeFeeds(String feedsId) async {
    try {
      String api = '/feeds/like/feeds-id/$feedsId';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return ViewFeedsResponse.fromJson(response.data['errorSchema']);
      } else {
        return ViewFeedsResponse.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      throw Exception(error);
    }
  }

  /*
    Future<AddDogResponse?> addNewDog(AddDogRequest request) async{
    try {
      String api = '/dogs/add';
      final dio = await DioInstance.getInstance();

      var response = await dio.post(api, data: jsonEncode(request.toJson()));
      final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);

      if (errorSchema.errorCode != 'WOF-000') {
        return AddDogResponse.fromJson(response.data['errorSchema']);
      } else {
        return AddDogResponse.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
  }
  */
}
