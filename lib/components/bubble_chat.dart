import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woofers/model/chat_model.dart';

class BubbleChatCardDetail extends StatelessWidget {
  final recipientId;
  final OpenChatResponse bubbleChatlistDetail;
  const BubbleChatCardDetail(
      {super.key,
      required this.bubbleChatlistDetail,
      required this.recipientId});

  @override
  Widget build(BuildContext context) {
    //other
    // String currentId = recipientId;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        // child: Card(
        //   color: Colors.white,
        child: Column(
          children: [
            // const SizedBox(height: 20),

            if (recipientId != bubbleChatlistDetail.senderId)
              Column(children: [
                BubbleSpecialThree(
                  text: bubbleChatlistDetail.message!,
                  color: const Color(0xFF1B97F3),
                  tail: false,
                  isSender: true,
                  textStyle: GoogleFonts.archivoNarrow(
                    fontSize: 17,
                    color: Colors.black,
                    //fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      // Assuming the time is in a format like "HH:mm"
                      bubbleChatlistDetail.timestamp!,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ])
            else
              Column(children: [
                BubbleSpecialThree(
                  text: bubbleChatlistDetail.message!,
                  color: const Color(0xFFE8E8EE),
                  tail: false,
                  isSender: false,
                  textStyle: GoogleFonts.archivoNarrow(
                    fontSize: 17,
                    color: Colors.black,
                    //fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      bubbleChatlistDetail.timestamp!,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ]),
            // Expanded(
            //   child: Align(
            //     alignment: FractionalOffset.bottomCenter,
            //     child: MessageBar(
            //       onSend: (_) => print(_),
            //       actions: const [],
            //     ),
            //   ),
            // ),
          ],
        ),
        //),
      ),
    );
  }
}
