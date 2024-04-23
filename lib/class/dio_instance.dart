import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioInstance {
  static Dio? instance;

  static Future<Dio> getInstance() async {

    final prefs = await SharedPreferences.getInstance();
    final token = await prefs.getString('access_token');
    if (instance==null) {
      // get acess token dari shared pref
      instance = Dio(BaseOptions(
        baseUrl: 'https://192.168.2.165:8080',
        headers: Map.from(
            {"Authorization": "Bearer $token"}
            ),
      ));
    }

    return instance!;
  }

  static void setNull() {
    instance = null;
  }
}