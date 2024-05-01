import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:woofers/model/chatlist_model.dart';
import 'package:woofers/model/chatroom_model.dart';
import 'package:woofers/pages/chatroom_page.dart';
import 'package:woofers/pages/user_profile_page.dart';

class BubbleChatCardDetail extends StatelessWidget {
  final OpenChatRequest bubbleChatlistDetail;
  const BubbleChatCardDetail({
    super.key,
    required this.bubbleChatlistDetail,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Username'),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey[300],
        body: const SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              BubbleSpecialThree(
                text: 'Added iMessage shape bubbles',
                color: Color(0xFF1B97F3),
                tail: false,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              BubbleSpecialThree(
                text: 'Sure',
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),
              Expanded(
                  child: Align(
                alignment: FractionalOffset.bottomCenter,
                // child: MessageBar(
                //   onSend: (_) => print(_),
                //   actions: const [

                //   ],
                // ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
