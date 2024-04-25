import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/error_schema_model.dart';
import 'package:woofers/model/user_profile_model.dart';

class RetrieveAccountService{

  Future<ResponseUserProfileModel?> retrieveUserData() async{
    try {
      const api = '/accounts/profile/view';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema = ErrorSchema.fromJson(response.data!['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return ResponseUserProfileModel.fromJson(response.data['errorSchema']);
      }else{
        return ResponseUserProfileModel.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
  }

}