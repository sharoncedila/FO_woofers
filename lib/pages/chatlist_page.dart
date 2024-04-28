import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/pages/chatroom_page.dart';
import 'package:woofers/pages/notification_page.dart';
class ChatListPage extends StatefulWidget {
  const ChatListPage({super.key});

  @override
  _ChatListPageState createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
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
              "CHATS",
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
              const SizedBox(width: 5,)
            ],
          ),
      body: ChatList(),
    );
  }
  Widget ChatList() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 15,
            ),
            // search box
            Container(
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 15,
                    offset: const Offset(0, 1)
                  )
                ]
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  IconButton( 
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  const Flexible(
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search for others"),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: List.generate(2, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 15,
                          offset: const Offset(0, 1))
                      ],
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(33),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ChatroomPage()),
                        );
                      },
                      child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              border: Border.all(color: Colors.black)),
                          child: Center(
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('assets/profile_picture/person1.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Sharon Cedila',
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "mau ngomong apa ya??",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.5)))
                            ],
                          ),
                        )
                      ],
                      ),
                    ),
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