import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/components/bubble_chat.dart';
import 'package:woofers/model/chatroom_model.dart';
import 'package:woofers/pages/chatlist_page.dart';
import 'package:woofers/services/chat/chat_service.dart';

class ChatroomPageDetail extends StatelessWidget {
  final String accountId;
  const ChatroomPageDetail({
    super.key,
    required this.accountId,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController messageController = TextEditingController();
    final _sendChatService = ChatroomService();
    String recipientId;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 75,
        elevation: 0,
        backgroundColor: HexColor("#a0dcdc"),
        title: Text(
          "CHATS",
          style: GoogleFonts.lora(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: const Color.fromRGBO(40, 36, 36, 10000),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back when the back button is pressed
            Navigator.push(context, MaterialPageRoute(builder: (_) => const ChatListPage()));
          },
        ),
      ),
      body: Stack(children: [
        Chatroom(),
        Positioned(
          bottom:
              70, // Adjust this value to position the button at the desired height
          left: 0, // Align to the left side
          right: 0, // Align to the right side
          child: IconButton(
            icon: Icon(Icons.send),
            onPressed: () async {
              final SendChatRequest request = SendChatRequest(
                  recipientId: accountId, message: messageController.text);

              _sendChatService.sendMessage(request);


            },
          ),
        ),
        Align(
          alignment: FractionalOffset.bottomCenter,
          child: Container(
            color: Colors.white,
            child: TextFormField(
              controller: messageController,
              decoration: const InputDecoration(
                labelText: 'Type Here',
                border: OutlineInputBorder(),
              ),
            ),
            //button send
          ),
        ),
      ]),
    );
  }

  @override
  Widget Chatroom() {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: FutureBuilder(
            future: ChatroomService()
                .openChatroom(OpenChatRequest(recipientId: accountId)),
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
              print("Chatroom data: $chatList");
              // return MaterialApp(
              //   home: Scaffold(
              //     appBar: AppBar(
              //       title: const Text('Username'), //snapshot.data?.message.username,
              //       centerTitle: true,
              //     ),
              //     backgroundColor: Colors.grey[300],
              //     body: Wrap(
              return Wrap(
                children: chatList
                    .map((e) => BubbleChatCardDetail(
                        accountId: accountId, bubbleChatlistDetail: e))
                    .toList(),
                //    ),
                //  ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
