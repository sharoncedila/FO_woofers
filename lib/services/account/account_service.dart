import 'dart:convert';

import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/account_model.dart';
import 'package:woofers/model/error_schema_model.dart';
import 'package:woofers/model/user_profile_model.dart';

class AccountService{
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