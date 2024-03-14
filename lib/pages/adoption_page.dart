import 'package:flutter/material.dart';

class AdoptionPage extends StatelessWidget {
  const AdoptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: const SafeArea(
          child: Text(
            'adoption page nih bos, senggol dong'
          )
        ),
      ),
    );
  }
}