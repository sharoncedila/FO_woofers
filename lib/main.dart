import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:woofers/classes/ws_notif_instance.dart';
import 'package:woofers/components/admin_bottom_menu.dart';
import 'package:woofers/pages/login_page.dart';
import 'package:woofers/pages/register_page.dart';

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
        // print("value: " + value.toString());
        sharedPreference = value;
      });
    }

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
