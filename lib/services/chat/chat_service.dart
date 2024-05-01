import 'dart:convert';

import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/chatlist_model.dart';
import 'package:woofers/model/chatroom_model.dart';
import 'package:woofers/model/error_schema_model.dart';

class ChatroomService {
  Future<RetrieveAllChatlistResponse> retrieveChatroomList() async {
    try {
      const api = '/chats/chatroom-list';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      if (response.data == null) {
        throw Exception("Response data is null");
      }
      final errorSchema = ErrorSchema.fromJson(response.data!['errorSchema']);
      return RetrieveAllChatlistResponse.fromJson(
          response.data['outputSchema']);
    } catch (error) {
      throw Exception(error);
    }
  }

  // Future<List<RetrieveChatlistResponse>?> retrieveChatroomList() async {
  //   try {
  //     const api = '/chats/chatroom-list';
  //     final dio = await DioInstance.getInstance();

  //     var response = await dio.get(api);
  //     final errorSchema = ErrorSchema.fromJson(response.data!['errorSchema']);
  //     if (errorSchema.errorCode != 'WOF-000') {
  //       return [
  //         RetrieveChatlistResponse.fromJson(response.data['errorSchema'])
  //       ];
  //     } else {
  //       return (response.data['outputSchema']['chatroomList'] as List)
  //           .map((e) => RetrieveChatlistResponse.fromJson(e))
  //           .toList();
  //     }
  //   } catch (error) {
  //     print(error);
  //   }
  //   return null;

  Future<OpenChatResponse?> openChatroom(OpenChatRequest request) async {
    try {
      const api = '/chats/open-chat';
      final dio = await DioInstance.getInstance();

      var response = await dio.post(api, data: jsonEncode(request.toJson()));
      final errorSchema = ErrorSchema.fromJson(response.data!['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return OpenChatResponse.fromJson(response.data['errorSchema']);
      } else {
        return OpenChatResponse.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
    return null;
  }

  Future<OpenChatResponse?> sendMessage(SendChatRequest request) async {
    return null;
<<<<<<< HEAD
  }

  Future<SearchChatResponse?> searchChat(String username) async{
    try {
      String api = '/chats/search/keyword/$username';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema = ErrorSchema.fromJson(response.data!['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return SearchChatResponse.fromJson(response.data['errorSchema']);
      } else {
        return SearchChatResponse.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
=======
>>>>>>> UAT
  }
}
