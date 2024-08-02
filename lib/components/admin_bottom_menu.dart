import 'package:flutter/material.dart';
import 'package:woofers/pages/admin_dogs_page.dart';
import 'package:woofers/pages/admin_feeds_page.dart';
import 'package:woofers/pages/admin_users_page.dart';

class AdminBottomMenuBar extends StatefulWidget {
  final int initialIndex;
  final int profileInitialIndex;
  const AdminBottomMenuBar(
      {super.key, this.initialIndex = 1, this.profileInitialIndex = 0});

  @override
  State<AdminBottomMenuBar> createState() => _AdminBottomMenuBarState();
}

class _AdminBottomMenuBarState extends State<AdminBottomMenuBar> {
  int currentPageIndex = 1;
  int currrentProfileIndex = 0;

  @override
  void initState() {
    currentPageIndex = widget.initialIndex;
    currrentProfileIndex = widget.profileInitialIndex;
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.grey[250],
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Image(
              image: AssetImage('assets/woofers_icon/feeds.jpg'),
              width: 35,
              height: 35,
            ),
            label: 'Feeds',
          ),
          NavigationDestination(
            icon: Image(
              image: AssetImage('assets/woofers_icon/users.png'),
              width: 35,
              height: 35,
            ),
            label: 'Users',
          ),
          NavigationDestination(
            icon: Image(
              image: AssetImage('assets/woofers_icon/dogs.png'),
              width: 35,
              height: 35,
            ),
            label: 'Dogs',
          ),
        ],
      ),
      body: <Widget>[
        const AdminFeedsPage(),
        const AdminUsersPage(),
        const AdminDogsPage()
      ][currentPageIndex],
    );
  }
}
