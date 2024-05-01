import 'package:flutter/material.dart';
import 'package:woofers/pages/dog_list_page.dart';
import 'package:woofers/pages/other_dog_list_page.dart';
import 'package:woofers/pages/other_profile_page.dart';
import 'package:woofers/services/account/user_profile_services.dart';
import 'package:woofers/services/dog/dog_services.dart';

class OtherProfilePageTemplate extends StatelessWidget {
  final String accountId;
  const OtherProfilePageTemplate({
    super.key,
    required this.accountId,
  });

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
                  image: AssetImage(
                      'assets/woofers_icon/profileImageTemplate.png'),
                  width: 40,
                  height: 40,
                ),
                text: 'User'
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
        body: TabBarView(
          children: [
            OtherProfilePage(accountId: accountId),
            OtherDogListPage(accountId: accountId),
          ],
        ),
      ),
    );
  }
}
