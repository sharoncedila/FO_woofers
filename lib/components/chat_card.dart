import 'package:flutter/material.dart';
import 'package:woofers/model/chatlist_model.dart';
import 'package:woofers/pages/chatroom_page.dart';
import 'package:woofers/pages/user_profile_page.dart';

class ChatCardDetail extends StatelessWidget {
  final RetrieveChatlistResponse chatlistDetail;
  const ChatCardDetail({
    super.key,
    required this.chatlistDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Card(
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: const Color.fromRGBO(160, 220, 220, 10),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UserProfilePage()),
            );
          },
          child: SizedBox(
            height: 80,
            child: Column(
              children: [
                const SizedBox(height: 5),
                Text(
                  chatlistDetail.recipientId ?? "",
                  style: const TextStyle(
                    color: Color.fromRGBO(40, 36, 36, 10000),
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.left,
                ),

                // last message
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 12),
                        child: Text(
                          chatlistDetail.lastMessage ?? "",
                          style: const TextStyle(
                              fontSize: 12, color: Colors.black),
                        ),
                        /*child: TextFormField(
                          readOnly: true,
                          maxLines: null,
                          decoration: InputDecoration(
                            labelText: chatlistDetail.lastMessage ?? "",
                            labelStyle: const TextStyle(
                                fontSize: 12, color: Colors.black),
                          ),
                        ),*/
                      ),
                      // const SizedBox(
                      //   height: 3,
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                          icon: const Icon(Icons.chat),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ChatroomPage()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
