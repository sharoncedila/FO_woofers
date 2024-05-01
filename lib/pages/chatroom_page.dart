import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:woofers/components/bubble_chat.dart';
import 'package:woofers/model/chatroom_model.dart';
import 'package:woofers/services/chat/chat_service.dart';

class ChatroomPageDetail extends StatelessWidget {
  final String accountId;
  ChatroomPageDetail({
    super.key,
    required this.accountId,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: FutureBuilder(
            future: ChatroomService().openChatroom(OpenChatRequest(recipientId: accountId)),
            builder: ((context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: Text("Retrieving your data..."));
              }
              if (snapshot.hasError) {
                return const Center(child: Text("Error"));
              }
              if (!snapshot.hasData) {
                return const Text("No data");
              }
              final chatList = snapshot.data!;
              print("Data adoption: ${chatList}");
              return MaterialApp(
                home: Scaffold(
                  appBar: AppBar(
                    title: const Text('Username'), //snapshot.data?.message.username,
                    centerTitle: true,
                  ),
                  backgroundColor: Colors.grey[300],
                  body: Wrap(
                  children: chatList
                    .map((e) => BubbleChatCardDetail(accountId: accountId, bubbleChatlistDetail: e))
                    .toList(),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
