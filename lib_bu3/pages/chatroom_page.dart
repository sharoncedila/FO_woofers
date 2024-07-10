import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/classes/ws_chat_instance.dart';
import 'package:woofers/components/bottom_menu.dart';
import 'package:woofers/components/bubble_chat.dart';
import 'package:woofers/model/chat_model.dart';
import 'package:woofers/model/notification_model.dart';
import 'package:woofers/services/chat_service.dart';

class ChatroomPageDetail extends StatefulWidget {
  final String recipientId;
  String? chatroomId;
  String? username;
  WebSocket? session;

  ChatroomPageDetail(
      {super.key,
      required this.recipientId,
      this.chatroomId,
      this.username,
      this.session});

  @override
  _ChatroomPageState createState() => _ChatroomPageState();
}

class _ChatroomPageState extends State<ChatroomPageDetail> {
  final ScrollController _scrollController = ScrollController();
  final StreamController<WebSocketChat> _streamController =
      StreamController<WebSocketChat>();
  List<OpenChatResponse> _chatMessages = [];
  String? recipientId;
  String? chatroomId;
  String? username;
  WebSocket? session;

  @override
  void initState() {
    super.initState();
    recipientId = widget.recipientId;
    chatroomId = widget.chatroomId;
    username = widget.username;
    session = widget.session;
    listen(session, _streamController);
  }

  @override
  void dispose() {
    _streamController.close();
    session?.close();
    super.dispose();
  }

  static Future<void> listen(WebSocket? session,
      StreamController<WebSocketChat> streamController) async {
    session!.listen(
      (data) {
        final notif = WebSocketChat.fromJson(jsonDecode(data));
        streamController.add(notif); // Add data to the stream
      },
      onError: (error) {
        print("Error receiving message: $error");
      },
      onDone: () {
        print("WebSocket connection closed");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController messageController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BottomMenuBar(
                            initialIndex: 0,
                          )));
            },
            icon: const Icon(Icons.arrow_back)),
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
          Expanded(
            child: StreamBuilder<WebSocketChat>(
              stream: _streamController.stream,
              builder: (context, snapshot) {
                // if (snapshot.hasData) {
                //   final newMessage = snapshot.data!;
                //   _chatMessages.add(
                //     OpenChatResponse(
                //       senderId: newMessage.recipientId,
                //       errorCode: null,
                //       errorMessage: null,
                //       message: newMessage.message,
                //       timestamp: newMessage.timestamp,
                //       image: null,
                //     ),
                //   );
                // }
                return Chatroom(
                    controller: _scrollController, chatMessages: []);
              },
            ),
          ),
          Container(
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
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
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget Chatroom(
      {required ScrollController controller,
      required List<OpenChatResponse> chatMessages}) {
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
                        padding: const EdgeInsets.all(160),
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.transparent,
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
                    _chatMessages = chatList;
                    return Wrap(
                      children: _chatMessages
                          .map((e) => BubbleChatCardDetail(
                              recipientId: recipientId,
                              bubbleChatlistDetail: e))
                          .toList(),
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
