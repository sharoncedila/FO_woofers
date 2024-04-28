import 'package:flutter/material.dart';
import 'package:woofers/pages/dog_profile_page.dart';
import 'package:woofers/pages/login_page.dart';
import 'components/bottom_menu.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomMenuBar(),
    );
  }
}