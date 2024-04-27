import 'package:dio/dio.dart';
import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/error_schema_model.dart';
import 'package:woofers/model/register_model.dart';
import 'dart:convert';

class RegisterService {
  Future<ResponseRegisterModel?> register(RequestRegisterModel registerReq) async {
    try {
      const api = '/accounts/register';
      final dio = await DioInstance.getInstance();

      var response = await dio.post(api, data: jsonEncode(registerReq.toJson()));
      final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);

      if (errorSchema.errorCode != 'WOF-000') {
        return ResponseRegisterModel.fromJson(response.data['errorSchema']);
      } else {
        return ResponseRegisterModel.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
  }
}
