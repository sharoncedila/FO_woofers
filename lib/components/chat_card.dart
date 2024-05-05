import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woofers/model/chatlist_model.dart';
import 'package:woofers/model/chatroom_model.dart';
import 'package:woofers/pages/chatroom_page.dart';
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
    return Container(
      width: double.infinity,
      child: Padding(
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
              String recipientId = chatlistDetail.recipientId!;
              String chatroomChatId = chatlistDetail.chatroomId!;
              print('chatroom Id : $chatroomChatId');
              print('recipient id : $recipientId');
              //String read = chatlistDetail.isRead!;
              final OpenChatRequest req = OpenChatRequest(
                  chatroomId: chatroomChatId, recipientId: recipientId);
              _openChatService.openChatroom(req).then((value) =>
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => ChatroomPageDetail(
                          recipientId: recipientId,
                          chatroomId: chatroomChatId))));
            },
            child: SizedBox(
              height: 70,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            chatlistDetail.recipientUsername!,
                            style: GoogleFonts.lora(
                              color: const Color.fromRGBO(40, 36, 36, 10000),
                              fontSize: 17,
                              fontStyle: FontStyle.italic,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            chatlistDetail.lastMessage ?? "",
                            style: GoogleFonts.lora(
                              fontSize: 13,
                              color: chatlistDetail.isRead! == "false"
                                  ? Colors.black
                                  : const Color.fromRGBO(40, 36, 36, 10000),
                              fontWeight: chatlistDetail.isRead! == "false"
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          chatlistDetail.lastMessageTimestamp!,
                          style: GoogleFonts.lora(
                            fontSize: 12,
                            color: const Color.fromRGBO(40, 36, 36, 10000),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
