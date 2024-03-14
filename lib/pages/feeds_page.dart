import 'package:flutter/material.dart';

class FeedsPage extends StatelessWidget {
  const FeedsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: const SafeArea(
          child: Text(
            'feeds page nih bos, senggol dong'
          )
        ),
      ),
    );
  }
}