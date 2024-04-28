import 'package:flutter/material.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/pages/adoption_page.dart';
import 'package:woofers/pages/user_profile_page.dart';
import 'package:woofers/services/account/user_profile_services.dart';

class ProfilePageTemplate extends StatelessWidget {
  const ProfilePageTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Image(
                  image: AssetImage('assets/woofers_icon/profile.jpg'),
                  width: 40,
                  height: 40,
                ),
                text: "Doggo",
              ),
              Tab(
                icon: Image(
                  image: AssetImage('assets/dog_picture/dog1.jpg'),
                  width: 40,
                  height: 40,
                ),
                text: "Doggo",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            // ChatListPage(),
            // AdoptionPage(),
            // FeedsPage(),
            UserProfilePage(),
            AdoptionPage(),
            // FirstRoute(),
          ],
        ),
      ),
    );
  }
}
