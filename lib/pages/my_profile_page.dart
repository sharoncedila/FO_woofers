import 'package:flutter/material.dart';
import 'package:woofers/components/bottom_menu.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Image(image: AssetImage('assets/profile_picture/person1.jpg'))),
                Tab(icon: Image(image: AssetImage('assets/dog_picture/dog1.jpg'))),
                // IconButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context, MaterialPageRoute(builder: (context) => const ChatListPage()),
                //     );
                //   },
                //   icon: Image.asset(
                //     'assets/woofers_icon/adoption.jpg',
                //     width: 75,
                //     height: 75,
                //   ),
                // ),
                // IconButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context, MaterialPageRoute(builder: (context) => const ChatListPage()),
                //     );
                //   },
                //   icon: Image.asset(
                //     'assets/woofers_icon/adoption.jpg',
                //     width: 75,
                //     height: 75,
                //   ),
                // ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              // ChatListPage(),
              // AdoptionPage(),
              // FeedsPage(),
              MyProfilePage(),
            ],
          ),
        ),
      ),
    );
  }
}