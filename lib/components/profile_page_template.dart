import 'package:flutter/material.dart';
import 'package:woofers/components/bottom_menu.dart';
import 'package:woofers/components/adoption_card.dart';
import 'package:woofers/pages/adoption_page.dart';
import 'package:woofers/pages/login_page.dart';
import 'package:woofers/pages/dog_profile_page.dart';
import 'package:woofers/pages/user_profile_page.dart';

class ProfilePageTemplate extends StatelessWidget {
  const ProfilePageTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Image(
                    image: AssetImage('assets/profile_picture/person1.jpg'),
                    width: 40,
                    height: 40,
                  ),
                  text: "Me",
                ),
                Tab(
                  icon: Image(
                    image: AssetImage('assets/dog_picture/dog1.jpg'),
                    width: 40,
                    height: 40,
                  ),
                  text: "Doggo",
                ),
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
              UserProfilePage(),
              //DogListPage(),
              // FirstRoute(),
            ],
          ),
        ),
      ),
    );
  }
}