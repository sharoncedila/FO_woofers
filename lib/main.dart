import 'package:flutter/material.dart';
import 'package:woofers/components/dog_card.dart';
import 'package:woofers/components/feeds_card.dart';
import 'package:woofers/components/profile_page_template.dart';
import 'package:woofers/pages/add_feeds_page.dart';
import 'package:woofers/pages/chatlist_page.dart';
import 'package:woofers/pages/chatroom_page.dart';
import 'package:woofers/pages/dog_profile_page.dart';
import 'package:woofers/pages/edit_my_dog.dart';
import 'package:woofers/pages/edit_my_profile_page.dart';
import 'package:woofers/pages/feeds_page.dart';
import 'package:woofers/pages/user_profile_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'components/dropdown.dart';
import 'components/bottom_menu.dart';
import 'pages/comment_page.dart';


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
      home: LoginPage(),
    );
  }
}