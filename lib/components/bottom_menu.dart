import 'package:flutter/material.dart';
import 'package:woofers/components/profile_page_template.dart';
import 'package:woofers/pages/adoption_page.dart';
import 'package:woofers/pages/chatlist_page.dart';
import 'package:woofers/pages/feeds_page.dart';

class BottomMenuBar extends StatefulWidget {
  final int initialIndex;
  final int profileInitialIndex;
  const BottomMenuBar(
      {super.key, this.initialIndex = 1, this.profileInitialIndex = 0});

  @override
  State<BottomMenuBar> createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
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
            selectedIcon: Icon(Icons.chat),
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          NavigationDestination(
            icon: Image(
              image: AssetImage('assets/woofers_icon/adoption.jpg'),
              width: 35,
              height: 35,
            ),
            label: 'Adopt Me',
          ),
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
              image: AssetImage('assets/woofers_icon/profile.jpg'),
              width: 35,
              height: 35,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        const ChatListPage(),
        const AdoptionPage(),
        const FeedsPage(),
        ProfilePageTemplate(initialIndex: currrentProfileIndex),
      ][currentPageIndex],
    );
  }
}
