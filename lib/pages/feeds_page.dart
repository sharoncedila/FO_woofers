// import 'package:flutter/material.dart';

// class FeedsPage extends StatelessWidget {
//   const FeedsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.grey[300],
//         body: const SafeArea(
//           child: Text(
//             'feeds page nih bos, senggol dong'
//           )
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:woofers/pages/add_feeds_page.dart';
import 'package:woofers/pages/comment_page.dart';
import 'package:woofers/pages/notification_page.dart';
import 'package:woofers/class/account.dart';

class FeedsPage extends StatefulWidget {
  const FeedsPage({Key? key}) : super(key: key);

  @override
  _FeedsPageState createState() => _FeedsPageState();
}

class _FeedsPageState extends State<FeedsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
          // PreferredSize(child: getAppBar(), preferredSize: Size.fromHeight(60)),
          AppBar(
            toolbarHeight: 75,
            elevation: 0,
            backgroundColor: Colors.blueGrey[200],
            title:
              const Text(
                "WOOFERS",
                style: TextStyle(
                    fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.notification_add_rounded),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NotificationPage()),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.add_to_photos),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AddFeeds()),
                    );
                  },
                ),
              ],
          ),
      body: feedsList(),
    );
  }

  Widget feedsList() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: List.generate(5, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 288,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 15,
                                  offset: const Offset(0, 1))
                            ],
                            image: const DecorationImage(
                                image:
                                    NetworkImage('assets/dog_picture/dog1.jpg'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Container(
                          width: double.infinity,
                          height: 288,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black.withOpacity(0.25))),
                      Container(
                        width: double.infinity,
                        height: 288,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            'assets/profile_picture/person1.jpg'),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Sharon Cedila',
                                            style: TextStyle(
                                                fontSize: 15, color: Colors.white),
                                          ),
                                          const SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            '10.43',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white.withOpacity(0.8)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 85,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(27),
                                        color:
                                          const Color(0xFFE5E5E5).withOpacity(0.5)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        IconButton(
                                          icon: const Icon(
                                            Icons.heart_broken,
                                            color: Colors.white,
                                            size: 14,
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => const CommentPage()),
                                            );
                                          },
                                        ),
                                        const Text(
                                          '1',
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.white
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 85,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(27),
                                        color:
                                          const  Color(0xFFE5E5E5).withOpacity(0.5)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        IconButton(
                                          icon: const Icon(
                                            Icons.chat_bubble_outline,
                                            color: Colors.white,
                                            size: 14,
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => const CommentPage()),
                                            );
                                          },
                                        ),
                                        const Text(
                                          '1',
                                          style: TextStyle(
                                              fontSize: 13, color: Colors.white
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}