import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/classes/ws_notif_instance.dart';
import 'package:woofers/model/account_model.dart';
import 'package:woofers/model/error_schema_model.dart';
import 'package:woofers/model/user_profile_model.dart';

class AccountService{
  
Future<ResponseLoginModel?> login(RequestLoginModel loginReq) async {
    Response? response;
    try {
      const api = '/accounts/login';
      final dio = await DioInstance.getInstance();

      response = await dio.post(api, data: jsonEncode(loginReq.toJson()));
      print(response);
      final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);

      if (errorSchema.errorCode != 'WOF-000') {
        return ResponseLoginModel.fromJson(response.data['errorSchema']);
      } else {
        final accessToken = response.data['outputSchema']['accessToken'];
        final accountId = response.data['outputSchema']['accountId'];
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('accessToken', accessToken);
        await prefs.setString('accountId', accountId);
        await WSNotifInstance.connect();
        DioInstance.setNull();
        return ResponseLoginModel.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
      //response = error.;
      if (response!.data == null) {
        throw new Exception("Error, response is null");
      }
      var errorSchema =
          ResponseLoginModel.fromJson(response!.data['errorSchema']);
      throw Exception(errorSchema.errorMessage);
    }
  }

  Future<LogoutResponse?> logout() async {
    try {
      const api = '/accounts/logout';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);

      if (errorSchema.errorCode != 'WOF-000') {
        return LogoutResponse.fromJson(response.data['errorSchema']);
      } else {
        WSNotifInstance.disconnect();
        return LogoutResponse.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
  }


  Future<ResponseUserProfileModel?> editAccountProfile(EditProfileRequest request) async{
    try {
      const api = '/accounts/profile/edit';
      final dio = await DioInstance.getInstance();

      var response = await dio.post(api, data: jsonEncode(request.toJson()));
      final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);

      if (errorSchema.errorCode != 'WOF-000') {
        return ResponseUserProfileModel.fromJson(response.data['errorSchema']);
      } else {
        return ResponseUserProfileModel.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
    return null;

  }
}