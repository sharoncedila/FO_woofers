import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

class ChatroomPage extends StatelessWidget {
  const ChatroomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Column(
            children: [
              const BubbleSpecialThree(
                text: 'Added iMessage shape bubbles',
                color: Color(0xFF1B97F3),
                tail: false,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),
              ),
              const BubbleSpecialThree(
                text: 'Sure',
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),

              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: MessageBar(
                    onSend: (_) => print(_),
                    actions: [
                    ],
                  ),
                )
              )

            ],
          ),
        ),
    );
  }
}