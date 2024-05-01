import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:woofers/model/chatroom_model.dart';
import 'package:woofers/services/chat/chat_service.dart';

class ChatroomPage extends StatelessWidget {
  final String accountId;
  const ChatroomPage({
    super.key,
    required this.accountId,
  });

  @override
  Widget build(BuildContext context) {
    String? acct = accountId;
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: FutureBuilder(
            future: ChatroomService().openChatroom(acct as OpenChatRequest),
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
              //print("Data adoption: ${snapshot.data}");
              return MaterialApp(
                home: Scaffold(
                  appBar: AppBar(
                    title:snapshot.data?.recipientId == null
                                                  ? ""
                                                  : snapshot.data!.recipientId,
                    centerTitle: true,
                  ),
                  backgroundColor: Colors.grey[300],
                ),
              ); /*Wrap(
                  /*children: chatList
                    .map((e) => DogCardDetail(adoptionDetail: e))
                    .toList(),*/
                  );*/
            }),
          ),
        ),
      ),
    );
  }
}
