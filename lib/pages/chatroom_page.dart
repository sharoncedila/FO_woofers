import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/classes/ws_chat_instance.dart';
import 'package:woofers/components/bubble_chat.dart';
import 'package:woofers/model/chat_model.dart';
import 'package:woofers/services/chat_service.dart';

class ChatroomPageDetail extends StatefulWidget {
  final String recipientId;
  String? chatroomId;
  String? username;

  ChatroomPageDetail(
      {super.key, required this.recipientId, this.chatroomId,  this.username});

  @override
  _ChatroomPageState createState() => _ChatroomPageState();
}

// class _ChatroomPageState extends State<ChatroomPageDetail> {
//   final ScrollController _scrollController = ScrollController();
//   String? recipientId;
//   String? chatroomId;
//   String? username;

//   @override
//   void initState() {
//     super.initState();
//     recipientId = widget.recipientId;
//     chatroomId = widget.chatroomId;
//     username = widget.username;
//   }
  

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController messageController = TextEditingController();

//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         toolbarHeight: 75,
//         elevation: 0,
//         backgroundColor: HexColor("#a0dcdc"),
//         title: Text(
//           //"CHATS",
//           username!
//           ,style: GoogleFonts.lora(
//             fontSize: 25,
//             fontWeight: FontWeight.bold,
//             color: const Color.fromRGBO(40, 36, 36, 10000),
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           Expanded(child: Chatroom(controller: _scrollController)),
//           Container(
//             color: Colors.white,
//             child: Row(
//               children: [
//                 const SizedBox(
//                   width: 15,
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: TextFormField(
//                       maxLines: null,
//                       controller: messageController,
//                       keyboardType: TextInputType.multiline,
//                       decoration: const InputDecoration(
//                         labelText: 'Type Here',
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.send),
//                   onPressed: () async {
//                     final SendChatRequest request = SendChatRequest(
//                         recipientId: recipientId,
//                         message: messageController.text,
//                         chatroomId: chatroomId);
//                     WSChatInstance.sendMessage(request);
//                     FocusScope.of(context).unfocus();
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

class _ChatroomPageState extends State<ChatroomPageDetail> {
  final ScrollController _scrollController = ScrollController();
  String? recipientId;
  String? chatroomId;
  String? username;

  @override
  void initState() {
    super.initState();
    recipientId = widget.recipientId;
    chatroomId = widget.chatroomId;
    username = widget.username;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController messageController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 75,
        elevation: 0,
        backgroundColor: HexColor("#a0dcdc"),
        title: Text(
          username!,
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
                // const SizedBox(
                //   width: 15,
                // ),
                Expanded(
                  child: //Padding(
                    //padding: const EdgeInsets.all(7.0),
                    //padding: EdgeInsets.only(left: 7, right: 7),
                    //child:
                     Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300], // Background color
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 40),
                          Expanded(
                            child: TextFormField(
                              maxLines: null,
                              controller: messageController,
                              keyboardType: TextInputType.multiline,
                              decoration: const InputDecoration(
                                hintText: 'Type Here',
                                border: InputBorder.none,
                                //fillColor: Colors.green, // Remove the border
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15), // Add vertical padding
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.send),
                            onPressed: () async {
                              final SendChatRequest request = SendChatRequest(
                                  recipientId: recipientId,
                                  message: messageController.text,
                                  chatroomId: chatroomId);
                              WSChatInstance.sendMessage(request);
                              FocusScope.of(context).unfocus();
                            },
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ),
                  //),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget Chatroom({required ScrollController controller}) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            controller: controller,
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: FutureBuilder(
                  future: ChatService()
                      .openChatroom(OpenChatRequest(recipientId: recipientId)),
                  builder: ((context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Padding(
                        padding: EdgeInsets.all(160),
                        child: Container(
                          // Center the CircularProgressIndicator
                          alignment: Alignment.center,
                          color: Colors
                              .transparent, // Ensure the container doesn't block interaction with underlying widgets
                          child: const CircularProgressIndicator(),
                        ),
                      );
                    }
                    if (snapshot.hasError) {
                      return const Center(child: Text("Error"));
                    }
                    if (!snapshot.hasData) {
                      return const Text("No data");
                    }
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      controller.animateTo(
                        controller.position.maxScrollExtent,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      );
                    });
                    final chatList = snapshot.data!;
                    print("Chatroom data: $chatList");
                    return Wrap(
                      children: chatList
                          .map((e) => BubbleChatCardDetail(
                              recipientId: recipientId,
                              bubbleChatlistDetail: e))
                          .toList(),
                      //    ),
                      //  ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
