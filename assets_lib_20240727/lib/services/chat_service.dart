import 'dart:convert';
import 'dart:io';

import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/classes/ws_chat_instance.dart';
import 'package:woofers/model/chat_model.dart';

class ChatService {

  Future<List<RetrieveChatlistResponse>> retrieveChatroomList() async {
    try {
      WSChatInstance.disconnect();
      const api = '/chats/chatroom-list';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema = RetrieveChatlistResponse.fromJson(response.data!['errorSchema']);
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
      final errorSchema = OpenChatResponse.fromJson(response.data!['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return [OpenChatResponse.fromJson(response.data['errorSchema'])];
      } else {
        // await WSChatInstance.connect();
        return (response.data['outputSchema']['chatMessageList'] as List)
            .map((e) => OpenChatResponse.fromJson(e))
            .toList();
      }
    } catch (error) {
      print(error);
      throw Exception(error);
    }
  }

  Future<List<SearchChatResponse>> searchChat(String username) async {
    try {
      String api = '/chats/search/keyword/$username';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema = SearchChatResponse.fromJson(response.data!['errorSchema']);
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
