import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioInstance {
  static Dio? instance;

  static Future<Dio> getInstance() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('accessToken');
    instance ??= Dio(BaseOptions(
      baseUrl: 'http://192.168.68.174:8080/woofers',
      headers: Map.from({"Authorization": "Bearer $token"}),
    ));

    return instance!;
  }

  static void setNull() {
    instance = null;
  }
}
