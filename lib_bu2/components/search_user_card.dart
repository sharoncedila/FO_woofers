import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woofers/model/chat_model.dart';
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

                    builder: (context) => ChatroomPageDetail(
                        recipientId: searchUserDetail.accountId!,
                        username: searchUserDetail.username)),
              );
            },
            child: Row(
              children: [
                const SizedBox(width: 20),
                Flexible(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 12),
                        child: Text(
                          searchUserDetail.username ?? "",
                          style: GoogleFonts.lora(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
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
                                  builder: (context) => ChatroomPageDetail(
                                      recipientId: searchUserDetail.accountId!,
                                      username: searchUserDetail.username!)),
                            );
                          },
                        ),
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
