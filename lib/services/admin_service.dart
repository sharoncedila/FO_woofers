import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/main.dart';
import 'package:woofers/model/admin_model.dart';

class AdminService {
  Future<AdminLoginResponse?> adminLogin(
      AdminLoginRequest adminloginReq) async {
    Response? response;
    try {
      const api = '/admin/login';
      final dio = await DioInstance.getInstance();

      response = await dio.post(api, data: jsonEncode(adminloginReq.toJson()));
      final errorSchema =
          AdminLoginResponse.fromJson(response.data['errorSchema']);

      if (errorSchema.errorCode != 'WOF-000') {
        return AdminLoginResponse.fromJson(response.data['errorSchema']);
      } else {
        final accessToken = response.data['outputSchema']['accessToken'];
        final accountId = response.data['outputSchema']['accountId'];
        // print(sharedPreference);

        await sharedPreference?.setString('spaccessToken', accessToken);
        if (accountId == null) {
          sharedPreference?.remove(accountId);
        } else {
          await sharedPreference?.setString('accountId', accountId);
          await sharedPreference?.setString('accessToken', accessToken);
          // print(sharedPreference?.getString('accountId'));
          // print(sharedPreference?.getString('accessToken'));
        }

        return AdminLoginResponse.fromJson(response.data['outputSchema']);
      }
    } on DioException catch (error) {
      print(error);
      //response = error.;
      if (error.response == null) {
        throw Exception("Error, response is null");
      }
      var errorSchema =
          AdminLoginResponse.fromJson(error.response!.data['errorSchema']);
      //print("error schema back end: $errorSchema");
      throw Exception("Please check your inserted email and password");
    }
  }

  Future<ShowAccountsResponse?> showAccounts() async {
    try {
      const api = '/admin/show-accounts';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema =
          ShowAccountsResponse.fromJson(response.data!['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return ShowAccountsResponse.fromJson(response.data['errorSchema']);
      } else {
        return ShowAccountsResponse.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
    return null;
  }

  Future<ShowDogsResponse?> showDogs() async {
    try {
      const api = '/admin/show-dogs';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema =
          ShowDogsResponse.fromJson(response.data!['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return ShowDogsResponse.fromJson(response.data['errorSchema']);
      } else {
        return ShowDogsResponse.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
    return null;
  }

  Future<ShowFeedsResponse?> showFeeds() async {
    try {
      const api = '/admin/show-feeds';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema =
          ShowFeedsResponse.fromJson(response.data!['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return ShowFeedsResponse.fromJson(response.data['errorSchema']);
      } else {
        return ShowFeedsResponse.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
    return null;
  }

  Future<AdminDeleteAccountResponse> deleteAccount(String accountId) async {
    try {
      String api = '/admin/delete-accounts/$accountId';
      final dio = await DioInstance.getInstance();

      var response = await dio.delete(api);
      final errorSchema =
          AdminDeleteAccountResponse.fromJson(response.data['errorSchema']);

      if (errorSchema.errorCode != 'WOF-000') {
        return AdminDeleteAccountResponse.fromJson(
            response.data['errorSchema']);
      } else {
        return AdminDeleteAccountResponse.fromJson(
            response.data['outputSchema']);
      }
    } catch (error) {
      throw Exception(error);
    }
  }

  static Future<AdminDeleteFeedsResponse> deleteFeeds(String feedsId) async {
    try {
      String api = '/admin/delete-feeds/$feedsId';
      final dio = await DioInstance.getInstance();

      var response = await dio.delete(api);
      final errorSchema =
          AdminDeleteFeedsResponse.fromJson(response.data['errorSchema']);

      if (errorSchema.errorCode != 'WOF-000') {
        return AdminDeleteFeedsResponse.fromJson(response.data['errorSchema']);
      } else {
        return AdminDeleteFeedsResponse.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      throw Exception(error);
    }
  }

  static Future<AdminDeleteDogResponse> deleteDog(String dogId) async {
    try {
      //hrusnya da dogId ?
      String api = '/admin/delete-dog/$dogId';
      final dio = await DioInstance.getInstance();

      var response = await dio.delete(api);
      final errorSchema =
          AdminDeleteDogResponse.fromJson(response.data['errorSchema']);

      if (errorSchema.errorCode != 'WOF-000') {
        return AdminDeleteDogResponse.fromJson(response.data['errorSchema']);
      } else {
        return AdminDeleteDogResponse.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      throw Exception(error);
    }
  }
}
