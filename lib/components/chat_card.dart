import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/model/chat_model.dart';
import 'package:woofers/pages/chatroom_page.dart';
import 'package:woofers/services/chat_service.dart';

class ChatCardDetail extends StatefulWidget {
  final RetrieveChatlistResponse chatlistDetail;
  const ChatCardDetail({
    super.key,
    required this.chatlistDetail,
  });

  @override
  _ChatCardState createState() => _ChatCardState();
}

class _ChatCardState extends State<ChatCardDetail> {
  final _openChatService = ChatService();
  String? imageURL;

  @override
  Widget build(BuildContext context) {
    RetrieveChatlistResponse chatlistDetail = widget.chatlistDetail;
    return SizedBox(
      width: double.infinity,
     
        child: InkWell(
          onTap: () async {
            String recipientId = chatlistDetail.recipientId!;
            String chatroomChatId = chatlistDetail.chatroomId!;
            String username = chatlistDetail.recipientUsername!;
            final OpenChatRequest req = OpenChatRequest(
                chatroomId: chatroomChatId, recipientId: recipientId);
            _openChatService
                .openChatroom(req)
                .then((value) => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => ChatroomPageDetail(
                          recipientId: recipientId,
                          chatroomId: chatroomChatId,
                          username: username,
                        ))));
          },
          child: SizedBox(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //image profile

                  (chatlistDetail.profilePicture != null)
                      ? InkWell(
                          borderRadius: BorderRadius.circular(50),
                          child: ImageNetwork(
                            urlImage: chatlistDetail.profilePicture,
                            width: 45,
                            height: 45,
                          ),
                        )
                      : const InkWell(
                          child: Image(
                              image: AssetImage(
                                  'assets/woofers_icon/profile.jpg'))),
                  const SizedBox(width: 10),
                  //username
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text(
                            chatlistDetail.recipientUsername!,
                            style: GoogleFonts.lora(
                              color: const Color.fromRGBO(40, 36, 36, 10000),
                              fontSize: 17,
                              fontStyle: FontStyle.italic,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                        const SizedBox(height: 5),
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
      //),
      // ),
    );
  }
}
