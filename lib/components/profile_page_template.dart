import 'package:flutter/material.dart';
import 'package:woofers/pages/dog_list_page.dart';
import 'package:woofers/pages/user_profile_page.dart';

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
                icon: Icon(Icons.person),
                text: "Me",
              ),
              Tab(
                icon: Icon(Icons.pets),
                text: "Doggo",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            UserProfilePage(),
            DogListPage(),
          ],
        ),
      ),
    );
  }
}
