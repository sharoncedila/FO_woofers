import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:woofers/classes/account.dart';
import 'dart:convert';

import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/user_profile_model.dart';

class RetrieveAccountService{
  @override

  // String? accountId;
  String? username;
  String? fullName;
  String? email;
  // String? password;
  String? phoneNumber;
  String? description;
  String? provinceName;
  String? image;
  // String? accessToken;

  Future<ResponseUserProfileModel?> retrieveUserData() async{
    try {
      const api = '/accounts/profile/view';
      // final data = {
      //     "email" : email,
      //     "fullName" : fullName,
      //     "username" : username,
      //     "phoneNumber" : phoneNumber,
      //     "description" : description,
      //     "provinceName" : provinceName,
      //     "image" : image,
      //   };
      // final dio = Dio();
      final dio = await DioInstance.getInstance();
      // dio.options.connectTimeout = const Duration(milliseconds: 5000);
      // Response response;
      // final prefs = await SharedPreferences.getInstance();
      // String accessToken = prefs.getString('access_token') ?? '';
      // response = await dio.post(api);

      final response = await dio.get(api
        // , options: Options(
        //   headers: Map.from(
        //     {"Authorization": "Bearer"}
        //     )
        //   )
        );
        return ResponseUserProfileModel.fromJson(response.data['outputSchema']);
      // } else {
      //   print('${response.statusCode} : ${response.data.toString()}');
      //   // throw response.statusCode;
      // }
    } catch (error) {
      print(error);
    }
  }

}