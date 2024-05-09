import 'package:flutter/material.dart';
import 'package:woofers/pages/dog_list_page.dart';
import 'package:woofers/pages/user_profile_page.dart';
import 'package:woofers/pages/favorite_feeds_page.dart';

class ProfilePageTemplate extends StatelessWidget {
  const ProfilePageTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.person),
                text: "Me",
              ),
              Tab(
                icon: Icon(Icons.pets),
                text: "Doggo",
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: "Favo",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            UserProfilePage(),
            DogListPage(),
            FavoritFeedsPage(),
          ],
        ),
      ),
    );
  }
}
