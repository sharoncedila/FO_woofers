import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:woofers/model/websocket_model.dart';

class WSNotifInstance {
  static WebSocket? session;

  static Future<void> connect() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('accessToken');
      var headers = {
        HttpHeaders.authorizationHeader: 'Bearer $token',
      };
      session = await WebSocket.connect(
<<<<<<< HEAD
          'ws://10.88.20.63:8080/woofers/app-notif',
=======
          'ws://10.88.20.142:8080/woofers/app-notif',
>>>>>>> 5da068f9316080f80e9d7cc596e25bc1ee3e3e8a
          headers: headers);
      print("Successfully Connect to WebSocket Notif Server");

      session!.listen(
        (data) {
          final notif = WebSocketNotif.fromJson(jsonDecode(data));
          print(notif.notificationMessage);
          _showNotification(notif.notificationMessage);
        },
        onError: (error) {
          print("Error receiving message: $error");
        },
        onDone: () {
          print("WebSocket connection closed");
        },
      );
    } catch (error) {
      print("Fail Connect to WebSocket Server");
    }
  }

  static void disconnect() {
    if (session != null) {
      session!.close();
      session = null;
      print("Disconnected from WebSocket Notif Server");
    } else {
      print("No WebSocket session to disconnect");
    }
  }

  static void _showNotification(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      backgroundColor: Colors.white,
      textColor: Colors.black,
      fontSize: 16.0,
      timeInSecForIosWeb: 1,
    );
  }
}
