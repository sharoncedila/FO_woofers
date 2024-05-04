import 'dart:convert';
import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:woofers/model/chatroom_model.dart';
import 'package:woofers/model/websocket_model.dart';

class WSChatInstance {
  static WebSocket? session;

  static Future<void> connect() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('accessToken');
      var headers = {
        HttpHeaders.authorizationHeader: 'Bearer $token',
      };
      session = await WebSocket.connect(
          'ws://172.20.10.2:8080/woofers/send-chat',
          headers: headers);
      print("Successfully Connect to WebSocket Chat Server");

      session!.listen(
        (data) {
          final notif = WebSocketChat.fromJson(jsonDecode(data));
          print(notif.message);
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
      print("Disconnected from WebSocket Chat Server");
    } else {
      print("No WebSocket session to disconnect");
    }
  }

  static void sendMessage(SendChatRequest request) {
    if (session != null && session!.readyState == WebSocket.open) {
      session!.add(jsonEncode(request.toJson()));
    } else {
      print("WebSocket session not open or no session available");
    }
  }
}
