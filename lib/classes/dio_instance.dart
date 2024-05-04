import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioInstance {
  static Dio? instance;

  static Future<Dio> getInstance() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('accessToken');
    instance ??= Dio(BaseOptions(
<<<<<<< HEAD
      baseUrl: 'http://10.88.20.63:8080/woofers',
=======
      baseUrl: 'http://10.88.20.142:8080/woofers',
>>>>>>> 5da068f9316080f80e9d7cc596e25bc1ee3e3e8a
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
