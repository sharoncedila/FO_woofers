import 'package:dio/dio.dart';
import 'package:woofers/classes/dio_instance.dart';
import 'dart:convert';

import 'package:woofers/model/dog_profile_model.dart';
import 'package:woofers/model/error_schema_model.dart';

class DogService {
  Future<ResponseDogProfileModel?> retrieveDogProfile(String dogId) async {
    try {
      String api = '/dogs/profile/dog-id/$dogId';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);
      print(ResponseDogProfileModel.fromJson(response.data['outputSchema']));

      if (errorSchema.errorCode != 'WOF-000') {
        return ResponseDogProfileModel.fromJson(response.data['errorSchema']);
      } else {
        return ResponseDogProfileModel.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
  }
}
