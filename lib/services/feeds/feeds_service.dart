import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/error_schema_model.dart';
import 'package:woofers/model/feeds_model.dart';

class FeedsService{
  Future<List<ViewFeedsResponse>> retrieveAdoptionList() async {
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
}