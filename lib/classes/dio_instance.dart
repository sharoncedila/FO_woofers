import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioInstance {
  static Dio? instance;

  static Future<Dio> getInstance() async {
    if (instance == null) {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('accessToken');
      //final accoundId = prefs.getString('accountId');
      instance ??= Dio(BaseOptions(
        baseUrl: 'https://woofers.arv.cx/woofers',
        headers: Map.from({"Authorization": "Bearer $token"}),
      ));
    }

    return instance!;
  }

  static void setNull() {
    instance = null;
  }
}
