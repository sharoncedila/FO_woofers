import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woofers/model/chatlist_model.dart';
import 'package:woofers/model/chatroom_model.dart';
import 'package:woofers/pages/chatroom_page.dart';
import 'package:woofers/services/chat/chat_service.dart';

class ChatCardDetail extends StatefulWidget {
  final RetrieveChatlistResponse chatlistDetail;
  ChatCardDetail({
    super.key,
    required this.chatlistDetail,
  });
  
  @override
  _ChatCardState createState() => _ChatCardState();
}

class _ChatCardState extends State<ChatCardDetail> {
  final _openChatService = ChatroomService();
  String? imageURL;
 
  @override
  Widget build(BuildContext context) {
    RetrieveChatlistResponse chatlistDetail = widget.chatlistDetail;
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
              String username = chatlistDetail.recipientUsername!;
              //String read = chatlistDetail.isRead!;
              final OpenChatRequest req = OpenChatRequest(
                  chatroomId: chatroomChatId, recipientId: recipientId);
              _openChatService.openChatroom(req).then((value) =>
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => ChatroomPageDetail(
                          recipientId: recipientId,
                          chatroomId: chatroomChatId,
                          username: username,))));
            },
            child: SizedBox(
              height: 80,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //image profile
                    /*
                    (feedsDetail.profilePicture != null)
                          ? InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          OtherProfilePageTemplate(
                                              accountId:
                                                  feedsDetail.accountId ?? '')),
                                );
                              },
                              child: ImageNetwork(
                                urlImage: feedsDetail.profilePicture,
                                width: 45,
                                height: 45,
                              ),
                            )
                          : InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        OtherProfilePageTemplate(
                                            accountId:
                                                feedsDetail.accountId ?? ''),
                                  ),
                                );
                              },
                              child: const Image(
                                  image: AssetImage(
                                      'assets/woofers_icon/profile.jpg')))),
                     */

                    //username
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
                            style: GoogleFonts.archivoNarrow(
                              fontSize: 15,
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
