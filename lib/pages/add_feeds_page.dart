import 'package:flutter/material.dart';

class AddFeeds extends StatelessWidget {
  const AddFeeds({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: const SafeArea(
          child: Text(
            'add feeds page nih bos, senggol dong'
          )
        ),
      ),
    );
  }
}