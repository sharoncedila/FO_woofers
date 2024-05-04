import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/classes/ws_chat_instance.dart';
import 'package:woofers/components/bubble_chat.dart';
import 'package:woofers/model/chatroom_model.dart';
import 'package:woofers/services/chat/chat_service.dart';

class ChatroomPageDetail extends StatelessWidget {
  final String recipientId;
  String? chatroomId;
  final ScrollController _scrollController = ScrollController();
  ChatroomPageDetail({super.key, required this.recipientId, this.chatroomId});

  @override
  Widget build(BuildContext context) {
    print("Data adoption: $recipientId");
    TextEditingController messageController = TextEditingController();

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
      ),
      body: Column(
        children: [
          Expanded(child: Chatroom(controller: _scrollController)),
          Container(
            color: Colors.white,
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      maxLines: null,
                      controller: messageController,
                      keyboardType: TextInputType.multiline,
                      decoration: const InputDecoration(
                        labelText: 'Type Here',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () async {
                    final SendChatRequest request = SendChatRequest(
                        recipientId: recipientId,
                        message: messageController.text);
                    WSChatInstance.sendMessage(request);
                    FocusScope.of(context).unfocus();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
<<<<<<< HEAD
=======
      // body: Column(
      //   children: [
      //   Expanded(child: Chatroom(controller: _scrollController)),
      //   Row(
      //     children:[
      //       Positioned(
      //       bottom:
      //           70, // Adjust this value to position the button at the desired height
      //       left: 0, // Align to the left side
      //       right: 0, // Align to the right side
      //       child: Container(
      //         color: Colors.white,
      //         child: TextFormField(
      //           controller: messageController,
      //           decoration: const InputDecoration(
      //             labelText: 'Type Here',
      //             border: OutlineInputBorder(),
      //           ),
      //         ),
      //         //button send
      //       ),
      //       child: IconButton(
      //         icon: const Icon(Icons.send),
      //         onPressed: () async {
      //           final SendChatRequest request = SendChatRequest(
      //               recipientId: accountId, message: messageController.text);

      //           WSChatInstance.sendMessage(request);
      //         },
      //       ),
      //     ),
      //     ]
      //   ),
      //   // Align(
      //   //   alignment: FractionalOffset.bottomCenter,
      //   //   child: Container(
      //   //     color: Colors.white,
      //   //     child: TextFormField(
      //   //       controller: messageController,
      //   //       decoration: const InputDecoration(
      //   //         labelText: 'Type Here',
      //   //         border: OutlineInputBorder(),
      //   //       ),
      //   //     ),
      //   //     //button send
      //   //   ),
      //   // ),
      // ]),
>>>>>>> 5da068f9316080f80e9d7cc596e25bc1ee3e3e8a
    );
  }

  Widget Chatroom({required ScrollController controller}) {
    return Column(
<<<<<<< HEAD
      children:[
=======
      children: [
>>>>>>> 5da068f9316080f80e9d7cc596e25bc1ee3e3e8a
        Expanded(
          child: SingleChildScrollView(
            controller: controller,
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: FutureBuilder(
                  future: ChatroomService()
                      .openChatroom(OpenChatRequest(recipientId: recipientId)),
                  builder: ((context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                          child: Text("Retrieving your data..."));
                    }
                    if (snapshot.hasError) {
                      return const Center(child: Text("Error"));
                    }
                    if (!snapshot.hasData) {
                      return const Text("No data");
                    }
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      // Scroll to bottom after the frame is rendered
                      controller.animateTo(
                        controller.position.maxScrollExtent,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      );
                    });
                    final chatList = snapshot.data!;
                    print("Chatroom data: $chatList");
                    // return MaterialApp(
                    //   home: Scaffold(
                    //     appBar: AppBar(
                    //       title: const Text('Username'), //snapshot.data?.message.username,
                    //       centerTitle: true,
                    //     ),
                    //     backgroundColor: Colors.grey[300],
                    //     body: Wrap(
                    return Wrap(
                      children: chatList
                          .map((e) => BubbleChatCardDetail(
                              recipientId: recipientId,
                              bubbleChatlistDetail: e))
                          .toList(),
                      //    ),
                      //  ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:woofers/components/chat_card.dart';
// import 'package:woofers/model/chatlist_model.dart';
// import 'package:woofers/pages/notification_page.dart';
// import 'package:woofers/pages/search_user_list_page.dart';
// import 'package:woofers/services/chat/chat_service.dart';

// class ChatListPage extends StatefulWidget {
//   const ChatListPage({Key? key}) : super(key: key);

//   @override
//   _ChatListPageState createState() => _ChatListPageState();
// }

// class _ChatListPageState extends State<ChatListPage> {
//   final TextEditingController _searchController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         toolbarHeight: 75,
//         elevation: 0,
//         backgroundColor: HexColor("#a0dcdc"),
//         title: FutureBuilder(
//           future: ChatroomService()
//               .retrieveChatroomList(), // Your Future<String> function to fetch the text
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Text("Loading..."); // Placeholder while loading
//             } else if (snapshot.hasError) {
//               return const Text("Error"); // Placeholder for error state
//             } else {
//               final chatroomdata = snapshot.data!;
//               final username =
//                   chatroomdata.map((e) => e.recipientUsername).toList();
//               print(username);
//               return Text(
//                 username as String, // Display the fetched text
//                 style: GoogleFonts.lora(
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                   color: const Color.fromRGBO(40, 36, 36, 10000),
//                 ),
//               );
//             }
//           },
//         ),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.notification_add_rounded),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const NotificationPage(),
//                 ),
//               );
//             },
//           ),
//           const SizedBox(
//             width: 5,
//           )
//         ],
//       ),
//       body: ChatList(),
//     );
//   }

//   // Future function to fetch the text for the AppBar title
//   Future<String> getTitleText() async {
//     // Example implementation, replace with your logic to fetch text
//     await Future.delayed(const Duration(seconds: 2)); // Simulating delay
//     return "CHATS";
//   }

//   Widget ChatList() {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.only(left: 25, right: 25),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 15),
//             const SizedBox(height: 15),
//             // Search box
//             Container(
//               width: double.infinity,
//               height: 48,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(15),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.2),
//                     spreadRadius: 2,
//                     blurRadius: 15,
//                     offset: const Offset(0, 1),
//                   )
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   const SizedBox(width: 5),
//                   const SizedBox(width: 15),
//                   Flexible(
//                     child: TextFormField(
//                       controller: _searchController,
//                       cursorColor: Colors.black,
//                       decoration: const InputDecoration(
//                         border: InputBorder.none,
//                         hintText: "Search for others",
//                       ),
//                     ),
//                   ),
//                   ElevatedButton(
//                     style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.resolveWith(
//                         (Set<MaterialState> states) {
//                           if (states.contains(MaterialState.pressed)) {
//                             return Theme.of(context)
//                                 .colorScheme
//                                 .primary
//                                 .withOpacity(0.5);
//                           }
//                           return null; // Use the component's default.
//                         },
//                       ),
//                     ),
//                     child: const Icon(Icons.search, color: Colors.black),
//                     onPressed: () async {
//                       String wordSearch = _searchController.text;
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => SearchUserListPage(
//                             userName: wordSearch,
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 10),
//             // Chat cards
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 5),
//               child: FutureBuilder(
//                 future: ChatroomService().retrieveChatroomList(),
//                 builder: ((context, snapshot) {
//                   if (snapshot.connectionState == ConnectionState.waiting) {
//                     return const Center(child: Text("Retrieving your data..."));
//                   }
//                   if (snapshot.hasError) {
//                     return const Center(child: Text("Error chatlist"));
//                   }
//                   if (!snapshot.hasData) {
//                     return const Text("No data");
//                   }
//                   final chatroomResponse = snapshot.data!;

//                   return Wrap(
//                     children: chatroomResponse
//                         .map((e) => ChatCardDetail(chatlistDetail: e))
//                         .toList(),
//                   );
//                 }),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
