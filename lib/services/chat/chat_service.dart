import 'dart:convert';

import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/classes/ws_chat_instance.dart';
import 'package:woofers/model/chatlist_model.dart';
import 'package:woofers/model/chatroom_model.dart';
import 'package:woofers/model/error_schema_model.dart';
import 'package:woofers/model/websocket_model.dart';

class ChatroomService {
  // Future<RetrieveAllChatlistResponse> retrieveChatroomList() async {
  //   try {
  //     const api = '/chats/chatroom-list';
  //     final dio = await DioInstance.getInstance();

  //     var response = await dio.get(api);
  //     if (response.data == null) {
  //       throw Exception("Response data is null");
  //     }
  //     final errorSchema = ErrorSchema.fromJson(response.data!['errorSchema']);
  //     return RetrieveAllChatlistResponse.fromJson(
  //         response.data['outputSchema']);
  //   } catch (error) {
  //     throw Exception(error);
  //   }
  // }

  Future<List<RetrieveChatlistResponse>> retrieveChatroomList() async {
    try {
      WSChatInstance.disconnect();
      const api = '/chats/chatroom-list';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema = ErrorSchema.fromJson(response.data!['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return [
          RetrieveChatlistResponse.fromJson(response.data['errorSchema'])
        ];
      } else {
        return (response.data['outputSchema']['chatroomList'] as List)
            .map((e) => RetrieveChatlistResponse.fromJson(e))
            .toList();
      }
    } catch (error) {
      print(error);
      throw Exception(error);
    }
  }

  Future<List<OpenChatResponse>?> openChatroom(OpenChatRequest request) async {
    try {
      const api = '/chats/open-chat';
      final dio = await DioInstance.getInstance();

      var response = await dio.post(api, data: jsonEncode(request.toJson()));
      final errorSchema = ErrorSchema.fromJson(response.data!['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return [OpenChatResponse.fromJson(response.data['errorSchema'])];
      } else {
        await WSChatInstance.connect();
        return (response.data['outputSchema']['chatMessageList'] as List)
            .map((e) => OpenChatResponse.fromJson(e))
            .toList();
      }
    } catch (error) {
      print(error);
      throw Exception(error);
    }
  }

  // Future<SendChatRequest> sendMessage(SendChatRequest request) async {
  //   try {
  //     const api = '/chats/send-chat';
  //     final dio = await DioInstance.getInstance();

  //     var response = await dio.post(api, data: jsonEncode(request.toJson()));
  //     final errorSchema = ErrorSchema.fromJson(response.data!['errorSchema']);
  //     if (errorSchema.errorCode != 'WOF-000') {
  //       return SendChatRequest.fromJson(response.data['errorSchema']);
  //     } else {
  //       return SendChatRequest.fromJson(response.data['outputSchema']);
  //     }
  //   } catch (error) {
  //     print(error);
  //     throw Exception(error);
  //   }
  // }

  Future<List<SearchChatResponse>> searchChat(String username) async {
    try {
      String api = '/chats/search/keyword/$username';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema = ErrorSchema.fromJson(response.data!['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return [SearchChatResponse.fromJson(response.data['errorSchema'])];
      } else {
        return (response.data['outputSchema']['accountList'] as List)
            .map((e) => SearchChatResponse.fromJson(e))
            .toList();
      }
    } catch (error) {
      print(error);
      throw Exception(error);
    }
  }
}
