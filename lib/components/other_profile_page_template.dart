import 'package:flutter/material.dart';
import 'package:woofers/pages/other_dog_list_page.dart';
import 'package:woofers/pages/other_profile_page.dart';

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
              Tab(icon: Icon(Icons.person), text: 'User'),
              Tab(
                icon: Icon(Icons.pets),
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
