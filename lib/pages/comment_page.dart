import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/components/comment_card.dart';
import 'package:woofers/components/feeds_card.dart';
import 'package:woofers/model/feeds_model.dart';
import 'package:woofers/services/feeds/feeds_service.dart';

class CommentPage extends StatelessWidget {
  final String feedsId;
  final _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  CommentPage({
    super.key,
    required this.feedsId,
  });

  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 75,
          elevation: 0,
          backgroundColor: HexColor("#a0dcdc"),
          centerTitle: true,
          title: Text(
            "COMMENTS",
            style: GoogleFonts.lora(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: const Color.fromRGBO(40, 36, 36, 10000),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: Column(
          children: [
            Expanded(child: CommentList(controller: _scrollController)),
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
                        controller: commentController,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          labelText: 'Type your comment here',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () async {
                      final LeaveCommentRequest request = LeaveCommentRequest(
                          feedsId: feedsId, content: commentController.text);
                      FeedsService().leaveCommentSection(request);
                      FocusScope.of(context).unfocus();
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Widget CommentList({required ScrollController controller}) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            controller: controller,
            child: SingleChildScrollView(
              child: FutureBuilder(
                  future: FeedsService().openCommentSection(feedsId),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                          child: Text("Retrieving your data..."));
                    }
                    if (snapshot.hasError) {
                      return const Center(child: Text("Error"));
                    }
                    if (!snapshot.hasData) {
                      return const Center(
                          child: Text("no comment available for this feeds"));
                    }

                    final commentList = snapshot.data!;
                    return Wrap(
                      children: commentList
                          .map((e) => CommentCard(commentDetail: e))
                          .toList(),
                    );
                  }),
            ),
          ),
        ),
      ],
    );
  }
}
