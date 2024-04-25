import 'dart:convert';
import 'package:dio/dio.dart';
import 'notification.dart';

Future<ViewNotificationResponse?> fetchNotifications() async {
  final dio = Dio();
  final url = 'http://192.168.249.53:8080/woofers/notification/view';

// Map<String, dynamic> headers = {
//     'Content-Type': 'application/json',
//     "Authorization" : ""
//   };

  // Define request options with headers
  // Options options = Options(headers: headers);

  try {
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> json  = response.data;
      return ViewNotificationResponse.fromJson(json);
    } else {
      // If the server returns an error response, throw an exception
      throw Exception('Failed to load notifications: ${response.statusCode}');
    }
  } catch (e) {
    // If an error occurs during the HTTP request, throw an exception
    throw Exception('Failed to load notifications: $e');
  }
}