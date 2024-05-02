import 'package:flutter/material.dart';
import 'package:woofers/model/chatlist_model.dart';
import 'package:woofers/model/chatroom_model.dart';
import 'package:woofers/pages/chatroom_page.dart';
import 'package:woofers/pages/user_profile_page.dart';
import 'package:woofers/services/chat/chat_service.dart';

class ChatCardDetail extends StatelessWidget {
  final RetrieveChatlistResponse chatlistDetail;
  ChatCardDetail({
    super.key,
    required this.chatlistDetail,
  });
  final _openChatService = ChatroomService();

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
          onTap: () async {
            /*Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatroomPageDetail(accountId: chatlistDetail.recipientId!)),
            );*/
            String accountId = chatlistDetail.recipientId!;
            final OpenChatRequest req = OpenChatRequest(recipientId: accountId);
            _openChatService.openChatroom(req).then((value) =>
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => ChatroomPageDetail(accountId: accountId))));
          },
          child: SizedBox(
            height: 80,
            child: Column(
              children: [
                const SizedBox(height: 10, width: 20),
                Text(
                  chatlistDetail.recipientUsername!,
                  style: const TextStyle(
                    color: Color.fromRGBO(40, 36, 36, 10000),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
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
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 10),
                      //   child: IconButton(
                      //     icon: const Icon(Icons.chat),
                      //     onPressed: () {
                      //       Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => ChatroomPageDetail(
                      //                 accountId: chatlistDetail.recipientId!)),
                      //       );
                      //     },
                      //   ),
                      // ),
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
