import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:flutter/material.dart';
import 'package:woofers/model/chatroom_model.dart';

class BubbleChatCardDetail extends StatelessWidget {
  final accountId;
  final OpenChatResponse bubbleChatlistDetail;
  const BubbleChatCardDetail(
      {super.key, required this.bubbleChatlistDetail, required this.accountId});

  @override
  Widget build(BuildContext context) {
    String currentId = accountId;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          if (currentId == bubbleChatlistDetail.senderId || currentId == bubbleChatlistDetail.recipientId)
            BubbleSpecialThree(
              text: bubbleChatlistDetail.senderId!,
              color: const Color(0xFFE8E8EE),
              tail: false,
              isSender: false,
            )
            
          else
            BubbleSpecialThree(
              text: bubbleChatlistDetail.recipientId!,
              color: const Color(0xFFE8E8EE),
              tail: false,
              isSender: false,
            ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: MessageBar(
                onSend: (_) => print(_),
                actions: const [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// return const Column(
//   children: [
//     SizedBox(height: 20),
//     BubbleSpecialThree(
//       text: 'Added iMessage shape bubbles',
//       color: Color(0xFF1B97F3),
//       tail: false,
//       textStyle: TextStyle(color: Colors.white, fontSize: 16),
//     ),
//     BubbleSpecialThree(
//       text: 'Sure',
//       color: Color(0xFFE8E8EE),
//       tail: false,
//       isSender: false,
//     ),
//     Expanded(
//         child: Align(
//       alignment: FractionalOffset.bottomCenter,
//       // child: MessageBar(
//       //   onSend: (_) => print(_),
//       //   actions: const [

//       //   ],
//       // ),
//     ))
//   ],
// );
