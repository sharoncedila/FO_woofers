import 'package:flutter/material.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: const SafeArea(
          child: Text(
            'chatlist page nih bos, senggol dong'
          )
        ),
      ),
    );
  }
}