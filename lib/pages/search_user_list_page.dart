import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/components/search_user_card.dart';
import 'package:woofers/pages/notification_page.dart';
import 'package:woofers/services/chat_service.dart';

class SearchUserListPage extends StatefulWidget {
  final String userName;
  const SearchUserListPage({
    super.key,
    required this.userName,
  });

  @override
  _SearchUserListPageState createState() => _SearchUserListPageState();
}

class _SearchUserListPageState extends State<SearchUserListPage> {
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
            icon: const Icon(Icons.notifications_active),
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
      body: SearchUserList(),
    );
  }

  Widget SearchUserList() {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 15,
            ),
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
                    width: 15,
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
                        //print(wordSearch);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SearchUserListPage(userName: wordSearch)),
                          //ChatListPage()),
                        );
                      }),
                  //clear search button
                  // ElevatedButton(
                  // style: ButtonStyle(
                  //   backgroundColor: MaterialStateProperty.resolveWith(
                  //     (Set<MaterialState> states) {
                  //       if (states.contains(MaterialState.pressed)) {
                  //         return Theme.of(context)
                  //             .colorScheme
                  //             .primary
                  //             .withOpacity(0.5);
                  //       }
                  //       return null; // Use the component's default.
                  //     },
                  //   ),
                  // ),
                  // child: const Icon(Icons.clear, color: Colors.black),
                  // onPressed: () async {
                  //   //String wordSearch = _searchController.text;
                  //   //print(wordSearch);
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //            // SearchUserListPage(userName: wordSearch)),
                  //     ChatListPage()),
                  //   );
                  // }),
                  //futur builder here
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            FutureBuilder(
                future: ChatService().searchChat(widget.userName),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Padding(
                      padding: EdgeInsets.all(160),
                      child: Container(
                        // Center the CircularProgressIndicator
                        alignment: Alignment.center,
                        color: Colors
                            .transparent, // Ensure the container doesn't block interaction with underlying widgets
                        child: const CircularProgressIndicator(),
                      ),
                    );
                  }
                  if (snapshot.hasError) {
                    return const Center(child: Text("Error accountID"));
                    /*Future.delayed(Duration.zero, () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatListPage()),
                      );
                    });*/
                  }
                  if (!snapshot.hasData) {
                    return const Text("No data");
                  }

                  final searchAccount = snapshot.data!;
                  //print("Username di search list page: ${snapshot.data}");
                  return SingleChildScrollView(
                    child: Column(
                        // padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        children: [
                          Wrap(
                            children: searchAccount
                                .map((e) =>
                                    SearchUserCardDetail(searchUserDetail: e))
                                .toList(),
                          ),
                        ]),
                  );
                }),
          ])),
    );
  }
}

            // child: FutureBuilder(
            //     future: ChatroomService().searchChat(widget.userName),
            //     builder: (context, snapshot) {
            //       if (snapshot.connectionState == ConnectionState.waiting) {
            //         return const Center(
            //             child: Text("Retrieving your dog list data 1"));
            //       }
            //       if (snapshot.hasError) {
            //         return const Center(child: Text("Error accountID"));
            //       }
            //       if (!snapshot.hasData) {
            //         return const Text("No data");
            //       }
        
            //       final searchAccountList = snapshot.data!;
            //       return SingleChildScrollView(
            //         child: Column(
            //             // padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            //             children: [
          
            //               Wrap(
            //                 children: searchAccountList
            //                     .map((e) => SearchUserCardDetail(searchUserDetail: e))
            //                     .toList(),
            //               ),
            //             ]),
            //       );
            //     }),
