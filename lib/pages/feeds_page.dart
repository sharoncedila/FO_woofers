import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/pages/add_feeds_page.dart';
import 'package:woofers/pages/comment_page.dart';
import 'package:woofers/pages/notification_page.dart';

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
        AppBar(
          toolbarHeight: 75,
          elevation: 0,
          backgroundColor: HexColor("#a0dcdc"),
          title:
            Text(
              "WOOFERS",
              style: GoogleFonts.lora(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(40,36,36,10000),
              ),
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
                    MaterialPageRoute(builder: (context) => const AddFeedsPage()),
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
              height: 15,
            ),
            Column(
              children: List.generate(5, (index) {
                return Container(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 288,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/dog_picture/dog1.jpg'),
                                fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.circular(20)
                            ),
                          ),
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
                                  // profile, nama orang, waktu
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const CircleAvatar(
                                            backgroundImage: AssetImage('assets/profile_picture/person1.jpg'),
                                          ),
                                          const SizedBox(
                                            width: 12,
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                                  color: Colors.white.withOpacity(0.8)
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  // heart and comment

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const CommentPage()),
                                  );
                                },
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.comment_outlined,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const CommentPage()),
                                  );
                                },
                              ),
                            ],
                          ),
                          const Text(
                            "     1 like",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                            ),
                          )
                        ],
                      )
                    ],
                  )
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}