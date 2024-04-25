import 'package:dio/dio.dart';
import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/error_schema_model.dart';
import 'package:woofers/model/register_model.dart';
import 'dart:convert';
// import 'package:woofers/classes/account.dart';
// import 'package:woofers/interfaces/register/register_interface.dart';

class RegisterService {
  @override
  Future<ResponseRegisterModel?> register(RequestRegisterModel registerReq) async{
    try {
      const api = '/accounts/register';
      // final data = {
      //   "username" : username,
      //   "email" : email,
      //   "province_name" : provinceName,
      //   "phone_number" : phoneNumber,
      //   "password" : Password
      // };

      // final dio = Dio();
      // Response response;
      // response = await dio.post(api, data:data);

      final dio = await DioInstance.getInstance();
      dio.options.connectTimeout = const Duration(milliseconds: 5000);
      var response = await dio.post(api, data: jsonEncode(registerReq.toJson()));

      if(response.statusCode == 200){
        final errorSchema = ErrorSchema.fromJson(response.data!['errorSchema']);
        if(errorSchema.errorCode != 'WOOF-000') {
          throw Exception(errorSchema.errorMessage);
        }
        // final body = response.data;
        // return ResponseRegisterModel(accountId: body['account_id'], username: body['username'], email: body['email'], provinceName: body['province_name'], phoneNumber: body['phone_number']);
        return null;
      }else{
        return null;
      }

    }catch(e){
      // TODO
      throw Exception(e.toString());
    }
  }
}