import 'dart:convert';
import 'package:woofers/classes/dio_instance.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:woofers/model/error_schema_model.dart';
import 'package:woofers/model/login_model.dart';

class LoginService {
  Future<ResponseLoginModel?> login(RequestLoginModel loginReq) async {
    try {
      const api = '/accounts/login';
      final dio = await DioInstance.getInstance();

      var response = await dio.post(api, data: jsonEncode(loginReq.toJson()));
      final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);

      if (errorSchema.errorCode != 'WOF-000') {
        return ResponseLoginModel.fromJson(response.data['errorSchema']);
      }else{
        final accessToken = response.data['outputSchema']['accessToken'];
        final accountId = response.data['outputSchema']['accountId'];
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('accessToken', accessToken);
        await prefs.setString('accountId', accountId);
        DioInstance.setNull();
        return ResponseLoginModel.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
    return null;
  }
}
