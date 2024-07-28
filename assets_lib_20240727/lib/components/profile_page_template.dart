import 'package:flutter/material.dart';
import 'package:woofers/pages/dog_list_page.dart';
import 'package:woofers/pages/favorite_feeds_page.dart';
import 'package:woofers/pages/user_profile_page.dart';

class ProfilePageTemplate extends StatelessWidget {
  final int initialIndex;
  const ProfilePageTemplate({super.key, this.initialIndex = 0});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: initialIndex,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
