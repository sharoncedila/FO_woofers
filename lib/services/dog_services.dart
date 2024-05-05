import 'dart:convert';

import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/dog_model.dart';

class DogService {
  Future<ResponseDogProfileModel?> retrieveDogProfile(String dogId) async {
    try {
      String api = '/dogs/profile/dog-id/$dogId';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);

      return ResponseDogProfileModel.fromJson(response.data['outputSchema']);
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
      final errorSchema = AddDogResponse.fromJson(response.data['errorSchema']);

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

  Future<List<ResponseDogCard>> retrieveDogList(String accountId) async {
    try {
      String api = '/account-dog/account-id/$accountId';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);

        return (response.data['outputSchema']['dogList'] as List)
            .map((e) => ResponseDogCard.fromJson(e))
            .toList();

    } catch (error) {
      print(error);
      throw Exception(error);
    }
  }

  Future<EditDogResponse> editDog(EditDogRequest request) async {
    try {
      String api = '/dogs/profile/edit';
      final dio = await DioInstance.getInstance();

      var response = await dio.post(api, data: jsonEncode(request.toJson()));
      final errorSchema = EditDogResponse.fromJson(response.data['errorSchema']);

      if (errorSchema.errorCode != 'WOF-000') {
        return EditDogResponse.fromJson(response.data['errorSchema']);
      } else {
        return EditDogResponse.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<DeleteDogResponse> deleteDog(String dogId) async {
    try {
      String api = '/dogs/delete/dog-id/$dogId';
      final dio = await DioInstance.getInstance();

      var response = await dio.delete(api);
      final errorSchema = DeleteDogResponse.fromJson(response.data['errorSchema']);

      if (errorSchema.errorCode != 'WOF-000') {
        return DeleteDogResponse.fromJson(response.data['errorSchema']);
      } else {
        return DeleteDogResponse.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      throw Exception(error);
    }
  }

Future<RetrieveAllBreedResponse> retrieveAllBreed() async {
    try {
      const api = '/breeds/all';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      return RetrieveAllBreedResponse.fromJson(response.data['outputSchema']);
    } catch (error) {
      throw Exception(error);
    }
  }

}
