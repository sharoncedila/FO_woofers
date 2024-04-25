import 'package:dio/dio.dart';
import 'package:woofers/classes/dio_instance.dart';
import 'dart:convert';

import 'package:woofers/model/dog_profile_model.dart';

class RetrieveAccountService{

  Future<ResponseDogProfileModel?> retrieveDogProfile() async{
    try{
      const api = '/dogs/profile/dog-id';
      final dio = await DioInstance.getInstance();

      var response = dio.get(api)
    } catch(error){
      print(error);
    }
  

    try {
      final response = await dio.get(
        api,options: Options(
          headers: Map.from(
            {"Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhY2NvdW50SWQiOiIxMzkxMjMwNWM5ZTU0NzIzIiwidXNlcm5hbWUiOiJTaGFyb24iLCJpYXQiOjE3MTM4MTQxMTMsImV4cCI6MTAzNTM4MTQxMTN9.NT-UGzdbuMpMvwQtjvR3kNNmaeCtZCHCHlqyU0vJZPs"}
            )
          )
        );


      // if (response.statusCode == 200) {
        // Account.fromJson(Map json)
        //   : accountId = json['accountId'],
        //     username = json['username'],r
        //     fullName = json['fullName'],
        //     email = json['email'],
        //     password = json['password'],
        //     phoneNumber = json['phoneNumber'],
        //     description = json['description'],
        //     provinceName = json['provinceName'],
        //     image = json['image'],
        //     accessToken = json['accessToken'];
        return ResponseDogProfileModel.fromJson(response.data['output_schema']);
      // } else {
      //   print('${response.statusCode} : ${response.data.toString()}');
      //   // throw response.statusCode;
      // }
    } catch (error) {
      print(error);
    }
  }

}