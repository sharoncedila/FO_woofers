import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:woofers/classes/account.dart';
import 'package:woofers/classes/dio_instance.dart';
// import 'package:woofers/interfaces/login/login_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:woofers/model/error_schema_model.dart';
import 'package:woofers/model/login_model.dart';

// class LoginService {
//   @override
//   Future<Account?> login(String email, String password) async{
//     try {
//       const api = '/accounts/login';
//       final data = {
//         "email" : email,
//         "password" : password
//       };

//       final dio = await DioInstance.getInstance();
//       dio.options.connectTimeout = const Duration(milliseconds: 5000);
//       Response response;
//       response = await dio.post(api, data:data);

//       if(response.statusCode == 200){
//         final body = response.data['output_schema'];
//         final account = Account(accountId: body['account_id'], accessToken: body['access_token']);
//         // set dio instane = null
//         // await prefs.setString('accessToken', accessToken: body['access_token']);
//         final SharedPreferences prefs = await SharedPreferences.getInstance();
//         await prefs.setString('access_token', account.accessToken ?? "");
//         DioInstance.setNull();

//         return account;
//       }
//       return null;

//     }catch(e){
//     // TODO
//     // throw Exception(e.toString());
//     }
//   }
// }

class LoginService {
  @override
  Future<ResponseLoginModel?> login(RequestLoginModel loginReq) async {
    try {
      const api = '/accounts/login';
      // final data = {
      //   "email" : email,
      //   "password" : password
      // };

      final dio = await DioInstance.getInstance();
      dio.options.connectTimeout = const Duration(milliseconds: 5000);
      var response = await dio.post(api, data: jsonEncode(loginReq.toJson()));

      if (response.statusCode == 200) {
        final errorSchema = ErrorSchema.fromJson(response.data!['errorSchema']);
        if (errorSchema.errorCode != 'WOF-000') {
          throw Exception(errorSchema.errorMessage);
        }

        final body = response.data!['outputSchema'];
        final accessToken = response.data['outputSchema']['accessToken'];


        // final account = Account(accountId: body['account_id'], accessToken: body['access_token']);
        // set dio instane = null
        // await prefs.setString('accessToken', accessToken: body['access_token']);
        // wkt disini udah dpt accessTokennya bener, tapi ga masuk ke prefs
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('accessToken', accessToken);
        DioInstance.setNull();

        ResponseLoginModel loginResp = ResponseLoginModel.fromJson(body);
        return loginResp;
      }
      return null;
    } catch (e) {
      // TODO
      // throw Exception(e.toString());
    }
  }
}
