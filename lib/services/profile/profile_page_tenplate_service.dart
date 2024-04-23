import 'package:dio/dio.dart';
import 'package:woofers/class/account.dart';
import 'dart:convert';

class RetrieveAccountService{
  @override

    String? accountId;
  String? username;
  String? fullName;
  String? email;
  String? password;
  String? phoneNumber;
  String? description;
  String? provinceName;
  String? image;
  String? accessToken;

  Future<Account?> retrieveUserData() async{
    const url = 'http://192.168.51.53:8080/woofers/accounts/profile/view';
    final dio = Dio();

    try {
      final response = await dio.get(
        url,options: Options(
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
        return Account.fromJson(response.data['output_schema']);
      // } else {
      //   print('${response.statusCode} : ${response.data.toString()}');
      //   // throw response.statusCode;
      // }
    } catch (error) {
      print(error);
    }
  }

}