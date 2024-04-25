// import 'package:flutter/material.dart';
// import 'package:woofers/components/profile_page_template.dart';
// import 'package:woofers/pages/chatlist_page.dart';
// import 'package:woofers/pages/adoption_page.dart';
// import 'package:woofers/pages/feeds_page.dart';
// import 'package:woofers/pages/user_profile_page.dart';
// void main() {
//   runApp(const BottomMenu());
// }

// class BottomMenu extends StatelessWidget {
//   const BottomMenu({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 4,
//         child: Scaffold(
//           appBar: AppBar(
//             bottom: const TabBar(
//               tabs: [
//                 Tab(icon: Icon(Icons.message_outlined),),
//                 Tab(icon: Image(image: AssetImage('assets/woofers_icon/adoption.jpg'))),
//                 Tab(icon: Image(image: AssetImage('assets/woofers_icon/feeds.jpg'))),
//                 Tab(icon: Image(image: AssetImage('assets/woofers_icon/profile.jpg'))),
//                 // IconButton(
//                 //   onPressed: () {
//                 //     Navigator.push(
//                 //       context, MaterialPageRoute(builder: (context) => const ChatListPage()),
//                 //     );
//                 //   },
//                 //   icon: const Icon(Icons.message_outlined),
//                 // ),
//                 // IconButton(
//                 //   onPressed: () {
//                 //     Navigator.push(
//                 //       context, MaterialPageRoute(builder: (context) => const ChatListPage()),
//                 //     );
//                 //   },
//                 //   icon: Image.asset('assets/woofers_icon/adoption.jpg'),
//                 // ),
//                 // IconButton(
//                 //   onPressed: () {
//                 //     Navigator.push(
//                 //       context, MaterialPageRoute(builder: (context) => const ChatListPage()),
//                 //     );
//                 //   },
//                 //   icon: const Icon(Icons.message_outlined),
//                 // ),
//                 // IconButton(
//                 //   onPressed: () {
//                 //     Navigator.push(
//                 //       context, MaterialPageRoute(builder: (context) => const ChatListPage()),
//                 //     );
//                 //   },
//                 //   icon: const Icon(Icons.message_outlined),
//                 // ),
//               ],
//             ),
//           ),
//           body: const TabBarView(
//             children: [
//               ChatListPage(),
//               AdoptionPage(),
//               FeedsPage(),
//               ProfilePageTemplate(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:woofers/components/profile_page_template.dart';
import 'package:woofers/pages/adoption_page.dart';
import 'package:woofers/pages/chatlist_page.dart';
import 'package:woofers/pages/feeds_page.dart';

void main() => runApp(const BottomMenu());

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomMenuBar();
  }
}

class BottomMenuBar extends StatefulWidget {
  const BottomMenuBar({super.key});

  @override
  State<BottomMenuBar> createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
  int currentPageIndex = 0;

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
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Image(image: AssetImage('assets/woofers_icon/adoption.jpg'), width: 35, height: 35,),
            label: 'Adopt Me',
          ),
          NavigationDestination(
            icon: Image(image: AssetImage('assets/woofers_icon/feeds.jpg'), width: 35, height: 35,),
            label: 'Feeds',
          ),
          NavigationDestination(
            icon: Image(image: AssetImage('assets/woofers_icon/profile.jpg'), width: 35, height: 35,),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[

        const ChatListPage(),
        const AdoptionPage(),
        const FeedsPage(),
        const ProfilePageTemplate(),


        // /// Home page
        // Card(
        //   shadowColor: Colors.transparent,
        //   margin: const EdgeInsets.all(8.0),
        //   child: SizedBox.expand(
        //     child: Center(
        //       child: Text(
        //         'Home page',
        //         style: theme.textTheme.titleLarge,
        //       ),
        //     ),
        //   ),
        // ),

        // /// Notifications page
        // const Padding(
        //   padding: EdgeInsets.all(8.0),
        //   child: Column(
        //     children: <Widget>[
        //       Card(
        //         child: ListTile(
        //           leading: Icon(Icons.notifications_sharp),
        //           title: Text('Notification 1'),
        //           subtitle: Text('This is a notification'),
        //         ),
        //       ),
        //       Card(
        //         child: ListTile(
        //           leading: Icon(Icons.notifications_sharp),
        //           title: Text('Notification 2'),
        //           subtitle: Text('This is a notification'),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),

        // /// Messages page
        // ListView.builder(
        //   reverse: true,
        //   itemCount: 2,
        //   itemBuilder: (BuildContext context, int index) {
        //     if (index == 0) {
        //       return Align(
        //         alignment: Alignment.centerRight,
        //         child: Container(
        //           margin: const EdgeInsets.all(8.0),
        //           padding: const EdgeInsets.all(8.0),
        //           decoration: BoxDecoration(
        //             color: theme.colorScheme.primary,
        //             borderRadius: BorderRadius.circular(8.0),
        //           ),
        //           child: Text(
        //             'Hello',
        //             style: theme.textTheme.bodyLarge!
        //                 .copyWith(color: theme.colorScheme.onPrimary),
        //           ),
        //         ),
        //       );
        //     }
        //     return Align(
        //       alignment: Alignment.centerLeft,
        //       child: Container(
        //         margin: const EdgeInsets.all(8.0),
        //         padding: const EdgeInsets.all(8.0),
        //         decoration: BoxDecoration(
        //           color: theme.colorScheme.primary,
        //           borderRadius: BorderRadius.circular(8.0),
        //         ),
        //         child: Text(
        //           'Hi!',
        //           style: theme.textTheme.bodyLarge!
        //               .copyWith(color: theme.colorScheme.onPrimary),
        //         ),
        //       ),
        //     );
        //   },
        // ),
      ][currentPageIndex],
    );
  }
}
