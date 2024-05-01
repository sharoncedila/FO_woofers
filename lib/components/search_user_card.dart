import 'package:flutter/material.dart';
import 'package:woofers/model/chatlist_model.dart';
import 'package:woofers/pages/chatroom_page.dart';

class SearchUserCardDetail extends StatelessWidget {
  final SearchChatResponse searchUserDetail;
  const SearchUserCardDetail({
    super.key,
    required this.searchUserDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Card(
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: const Color.fromRGBO(160, 220, 220, 10),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    //Other User Profile
                    builder: (context) => const ChatroomPage()),
              );
            },
            child: Row(
              children: [
                const SizedBox(width: 20),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        searchUserDetail.username ?? "",
                        style:
                            const TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
