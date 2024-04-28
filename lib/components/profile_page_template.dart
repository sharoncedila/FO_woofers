import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:woofers/components/my_dog_card.dart';
>>>>>>> SYE_20240425
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
                icon: Image(
                  image: AssetImage('assets/woofers_icon/profileImageTemplate.png'),
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
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            UserProfilePage(),
            DogListPage(),
<<<<<<< HEAD
            // FirstRoute(),
=======
>>>>>>> SYE_20240425
          ],
        ),
      ),
    );
  }
}
