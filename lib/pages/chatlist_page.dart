import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/components/chat_card.dart';
import 'package:woofers/model/chatlist_model.dart';
import 'package:woofers/pages/notification_page.dart';
import 'package:woofers/pages/search_user_list_page.dart';
import 'package:woofers/services/chat/chat_service.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({super.key});

  @override
  _ChatListPageState createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 75,
        elevation: 0,
        backgroundColor: HexColor("#a0dcdc"),
        title: Text(
          "CHATS",
          style: GoogleFonts.lora(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: const Color.fromRGBO(40, 36, 36, 10000),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notification_add_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationPage()),
              );
            },
          ),
          const SizedBox(
            width: 5,
          )
        ],
      ),
      body: ChatList(),
    );
  }

  Widget ChatList() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      offset: const Offset(0, 1))
                ]),
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                /*IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    )),*/
                const SizedBox(
                  width: 15,
                ),
                Flexible(
                  child: TextFormField(
                    controller: _searchController,
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search for others"),
                    // onChanged: (value) {
                    //   _searchChat(
                    //       value); // Call searchChat function on text change
                    // },
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.5);
                          }
                          return null; // Use the component's default.
                        },
                      ),
                    ),
                    child: const Icon(Icons.search, color: Colors.black),
                    onPressed: () async {
                      String wordSearch = _searchController.text;
                      print("word search list page: ${wordSearch}");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchUserListPage(userName: wordSearch)),
                      );
                    }),
                //futur builder here
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: FutureBuilder(
              future: ChatroomService().retrieveChatroomList(),
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: Text("Retrieving your data..."));
                }
                if (snapshot.hasError) {
                  return const Center(child: Text("Error chatlist"));
                }
                if (!snapshot.hasData) {
                  return const Text("No data");
                }
                final chatroomResponse = snapshot.data!;
                final List<ChatCardDetail> chatrooms;

                return Wrap(
                  children: chatrooms = chatroomResponse.chatlistList
                      .map((e) => ChatCardDetail(chatlistDetail: e))
                      .toList(),
                );
              }),
            ),
          ),
        ]),
      ),
    );
  }
}
