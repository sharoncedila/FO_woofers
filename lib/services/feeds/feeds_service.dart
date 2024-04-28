
import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/error_schema_model.dart';
import 'package:woofers/model/feeds_model.dart';

class FeedsService{
  Future<List<ViewFeedsResponse>> viewFeeds() async {
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

  Future<PostFeedsResponse?> postFeeds(PostFeedsRequest request) async{
    try {
      const api = '/feeds/post';
      final dio = await DioInstance.getInstance();

      var response = await dio.post(api, data: jsonEncode(request.toJson()));
      final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return PostFeedsResponse.fromJson(response.data['errorSchema']);
      } else {
        return PostFeedsResponse.fromJson(response.data['outputSchema']['feedsData']);
      }
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<List<LeaveCommentResponse>?> openCommentSection(String feedsId) async{
    try {
      String api = '/feeds/open-comments/feeds-id/$feedsId';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return [LeaveCommentResponse.fromJson(response.data['errorSchema'])];
      } else {
        return (response.data['outputSchema']['commentsList'] as List)
            .map((e) => LeaveCommentResponse.fromJson(e))
            .toList();
      }
    } catch (error) {
      throw Exception(error);
    }
  }
}