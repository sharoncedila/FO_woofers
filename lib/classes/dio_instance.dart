import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioInstance {
  static Dio? instance;

  static Future<Dio> getInstance() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('accessToken');
    instance ??= Dio(BaseOptions(
<<<<<<< HEAD
      baseUrl: 'http://192.168.98.53:8080/woofers',
=======
      baseUrl: 'http://192.168.100.249:8080/woofers',
>>>>>>> UAT
      //192.168.182.165
      //192.168.100.8
      //192.168.249.53
      //192.168.68.172
      headers: Map.from({"Authorization": "Bearer $token"}),
    ));

    return instance!;
  }

  static void setNull() {
    instance = null;
  }
}
