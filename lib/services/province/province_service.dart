import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/error_schema_model.dart';
import 'package:woofers/model/province_model.dart';

class RetrieveProvinceService{

  Future<List<RetrieveAllProvinceResponse>> retrieveAllProvince() async{
    try {
      const api = '/provinces/all';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema = ErrorSchema.fromJson(response.data!['errorSchema']);
      if (response.data['output_schema'] == null) {
        return [];
      }
      return (response.data['output_schema'] as List)
          .map((e) => RetrieveAllProvinceResponse.fromJson(e))
          .toList();
    } catch (error) {
      throw Exception(error);
    }
  }

}