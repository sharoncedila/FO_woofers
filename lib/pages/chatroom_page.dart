import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/classes/ws_chat_instance.dart';
import 'package:woofers/components/bubble_chat.dart';
import 'package:woofers/model/chatroom_model.dart';
import 'package:woofers/services/chat/chat_service.dart';

class ChatroomPageDetail extends StatelessWidget {
  final String accountId;
  final ScrollController _scrollController = ScrollController();
  ChatroomPageDetail({
    super.key,
    required this.accountId,
  });
   

  @override
  Widget build(BuildContext context) {
    print("Data adoption: $accountId");
    TextEditingController messageController = TextEditingController();

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
      ),
      body: Column(
        children: [
          Expanded(child: Chatroom(controller: _scrollController)),
          Container(
            color: Colors.white,
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      maxLines: null,
                      controller: messageController,
                      keyboardType: TextInputType.multiline,
                      decoration: const InputDecoration(
                        labelText: 'Type Here',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () async {
                    final SendChatRequest request = SendChatRequest(
                        recipientId: accountId,
                        message: messageController.text);
                    WSChatInstance.sendMessage(request);
                    FocusScope.of(context).unfocus();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      // body: Column(
      //   children: [
      //   Expanded(child: Chatroom(controller: _scrollController)),
      //   Row(
      //     children:[ 
      //       Positioned(
      //       bottom:
      //           70, // Adjust this value to position the button at the desired height
      //       left: 0, // Align to the left side
      //       right: 0, // Align to the right side
      //       child: Container(
      //         color: Colors.white,
      //         child: TextFormField(
      //           controller: messageController,
      //           decoration: const InputDecoration(
      //             labelText: 'Type Here',
      //             border: OutlineInputBorder(),
      //           ),
      //         ),
      //         //button send
      //       ),
      //       child: IconButton(
      //         icon: const Icon(Icons.send),
      //         onPressed: () async {
      //           final SendChatRequest request = SendChatRequest(
      //               recipientId: accountId, message: messageController.text);
          
      //           WSChatInstance.sendMessage(request);
      //         },
      //       ),
      //     ),
      //     ]
      //   ),
      //   // Align(
      //   //   alignment: FractionalOffset.bottomCenter,
      //   //   child: Container(
      //   //     color: Colors.white,
      //   //     child: TextFormField(
      //   //       controller: messageController,
      //   //       decoration: const InputDecoration(
      //   //         labelText: 'Type Here',
      //   //         border: OutlineInputBorder(),
      //   //       ),
      //   //     ),
      //   //     //button send
      //   //   ),
      //   // ),
      // ]),
    );
  }

  Widget Chatroom({required ScrollController controller}) {
    return Column(
      children:[ 
        Expanded(
          child: SingleChildScrollView(
            controller: controller,
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
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                      // Scroll to bottom after the frame is rendered
                      controller.animateTo(
                        controller.position.maxScrollExtent,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      );
                    });
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
                ),
        ),],
    );
  }
}
