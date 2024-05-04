import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:flutter/material.dart';
import 'package:woofers/model/chatroom_model.dart';

class BubbleChatCardDetail extends StatelessWidget {
  final recipientId;
  final OpenChatResponse bubbleChatlistDetail;
  const BubbleChatCardDetail(
      {super.key, required this.bubbleChatlistDetail, required this.recipientId});


  @override
  Widget build(BuildContext context) {
    //other
    // String currentId = recipientId;
    print("Data adoption: ${bubbleChatlistDetail}");
    print("Data adoption: ${recipientId}");

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        // child: Card(
        //   color: Colors.white,
          child: Column(
            children: [
              // const SizedBox(height: 20),
              
              if (recipientId != bubbleChatlistDetail.senderId)
                BubbleSpecialThree(
                  text: bubbleChatlistDetail.message!,
                  color: const Color(0xFF1B97F3),
                  tail: false,
                  isSender: true,
                )
                
              else
                BubbleSpecialThree(
                  text: bubbleChatlistDetail.message!,
                  color: const Color(0xFFE8E8EE),
                  tail: false,
                  isSender: false,
                ),
              // Expanded(
              //   child: Align(
              //     alignment: FractionalOffset.bottomCenter,
              //     child: MessageBar(
              //       onSend: (_) => print(_),
              //       actions: const [],
              //     ),
              //   ),
              // ),
            ],
          ),
        //),
      ),
    );
  }
}