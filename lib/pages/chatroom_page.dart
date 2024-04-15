import 'package:flutter/material.dart';

class ChatroomPage extends StatelessWidget {
  const ChatroomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: const SafeArea(
          child: Text(
            'chatroom page nih bos, senggol dong'
          )
        ),
      ),
    );
  }
}