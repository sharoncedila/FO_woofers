import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/components/comment_card.dart';
import 'package:woofers/model/feeds_model.dart';
import 'package:woofers/services/feeds_service.dart';

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
                      FeedsService().leaveCommentSection(request).then((_) {
                        FocusScope.of(context).unfocus();
                        commentController.clear();
                      });
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
                      return Padding(
                        padding: EdgeInsets.all(160),
                        child: Container(
                          // Center the CircularProgressIndicator
                          alignment: Alignment.center,
                          color: Colors
                              .transparent, // Ensure the container doesn't block interaction with underlying widgets
                          child: const CircularProgressIndicator(),
                        ),
                      );
                    }
                    if (snapshot.hasError) {
                      return const Center(child: Text(""));
                    }
                    if (!snapshot.hasData) {
                      return const Center(child: Text(""));
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
