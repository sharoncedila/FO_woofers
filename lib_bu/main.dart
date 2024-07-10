import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:woofers/classes/ws_notif_instance.dart';
import 'package:woofers/pages/login_page.dart';

SharedPreferences? sharedPreference;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    WSNotifInstance.connect();

    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (sharedPreference == null) {
      SharedPreferences.getInstance().then((value) {
        print("value: " + value.toString());
        sharedPreference = value;
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: token == '' ? LoginPage() : UserProfilePage(),
      home: LoginPage(),
    );
  }
}


// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:woofers/classes/ws_notif_instance.dart';
// import 'package:woofers/components/bottom_menu.dart';
// import 'package:woofers/pages/adoption_page.dart';
// import 'package:woofers/pages/chatlist_page.dart';
// import 'package:woofers/pages/login_page.dart';
// import 'package:woofers/pages/user_profile_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     WSNotifInstance.connect();
//     super.initState();
//   }

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     String? token;
//     final prefs = SharedPreferences.getInstance().then((value) {
//       token = value.getString('accessToken');
//     });
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       // home: token == '' ? LoginPage() : UserProfilePage(),
//       home: LoginPage(),
//     );
//   }
// }
