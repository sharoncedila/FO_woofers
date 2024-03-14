import 'package:flutter/material.dart';
import 'package:woofers/components/profile_page_template.dart';
import 'package:woofers/pages/my_profile_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'components/dropdown.dart';
import 'components/bottom_menu.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}