import 'package:flutter/material.dart';
import 'package:woofers/pages/chatlist_page.dart';
import 'package:woofers/pages/adoption_page.dart';
import 'package:woofers/pages/feeds_page.dart';
import 'package:woofers/pages/my_profile_page.dart';
void main() {
  runApp(const BottomMenu());
}

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.message_outlined),),
                Tab(icon: Image(image: AssetImage('assets/woofers_icon/adoption.jpg'))),
                Tab(icon: Image(image: AssetImage('assets/woofers_icon/feeds.jpg'))),
                Tab(icon: Image(image: AssetImage('assets/woofers_icon/profile.jpg'))),
                // IconButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context, MaterialPageRoute(builder: (context) => const ChatListPage()),
                //     );
                //   },
                //   icon: const Icon(Icons.message_outlined),
                // ),
                // IconButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context, MaterialPageRoute(builder: (context) => const ChatListPage()),
                //     );
                //   },
                //   icon: Image.asset('assets/woofers_icon/adoption.jpg'),
                // ),
                // IconButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context, MaterialPageRoute(builder: (context) => const ChatListPage()),
                //     );
                //   },
                //   icon: const Icon(Icons.message_outlined),
                // ),
                // IconButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context, MaterialPageRoute(builder: (context) => const ChatListPage()),
                //     );
                //   },
                //   icon: const Icon(Icons.message_outlined),
                // ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              ChatListPage(),
              AdoptionPage(),
              FeedsPage(),
              //MyProfilePage(),
            ],
          ),
        ),
      ),
    );
  }
}