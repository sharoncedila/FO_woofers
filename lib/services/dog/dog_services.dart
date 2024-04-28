import 'dart:convert';

import 'package:http/http.dart';
import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/dog_profile_model.dart';
import 'package:woofers/model/error_schema_model.dart';

class DogService {
  Future<ResponseDogProfileModel?> retrieveDogProfile(String dogId) async {
    try {
      String api = '/dogs/profile/dog-id/$dogId';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);

      if (errorSchema.errorCode != 'WOF-000') {
        return ResponseDogProfileModel.fromJson(response.data['errorSchema']);
      } else {
        return ResponseDogProfileModel.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
    return null;
  }

  Future<AddDogResponse?> addNewDog(AddDogRequest request) async {
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
    return null;
  }

  Future<List<ResponseDogProfileModel>> retrieveDogList(
      String accountId) async {
    late var response;
    try {
      String api = '/account-dog/account-id/$accountId';
      final dio = await DioInstance.getInstance();

      response = await dio.get(api);
      return (response.data['outputSchema']['dogList'] as List)
          .map((e) => ResponseDogProfileModel.fromJson(e))
          .toList();
    } catch (error) {
      final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);
      throw Exception(error);
    }
  }
}
