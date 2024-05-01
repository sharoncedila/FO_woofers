import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioInstance {
  static Dio? instance;

  static Future<Dio> getInstance() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('accessToken');
    instance ??= Dio(BaseOptions(
<<<<<<< HEAD
      baseUrl: 'http://192.168.100.8:8080/woofers',
      //192.168.182.165
      //192.168.100.8
=======
      baseUrl: 'http://192.168.123.12:8080/woofers',
>>>>>>> SYE_20240425
      //192.168.249.53
      headers: Map.from({"Authorization": "Bearer $token"}),
    ));

    return instance!;
  }

  static void setNull() {
    instance = null;
  }
}
