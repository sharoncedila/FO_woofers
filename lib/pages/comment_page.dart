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

<<<<<<< HEAD
=======
  TextEditingController commentController = TextEditingController();

>>>>>>> UAT
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
<<<<<<< HEAD
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
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
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'try',
                    border: OutlineInputBorder(),
                  ),
                ),
                // Container(
                //   // padding: const EdgeInsets.symmetric(horizontal: 10),
                //   width: double.infinity,
                //   height: double.infinity,
                //   child: TextFormField(
                //     controller: _messageController,
                //     maxLines: null,
                //     decoration: InputDecoration(
                //         enabledBorder: const OutlineInputBorder(
                //           borderSide: BorderSide(color: Colors.white),
                //         ),
                //         focusedBorder: OutlineInputBorder(
                //           borderSide: BorderSide(color: Colors.grey.shade400),
                //         ),
                //         fillColor: Colors.grey.shade200,
                //         filled: true,
                //         hintText: 'Type your message here...',
                //         hintStyle: TextStyle(color: Colors.grey[500])),
                //     // validator: (value) {
                //     //   if (value == null || value.isEmpty) {
                //     //     return 'Please fill vaccine field';
                //     //   }
                //     //   return null;
                //     // },
                //   ),
                // ),
                // IconButton(
                //   onPressed: () async {
                //     final LeaveCommentRequest request = LeaveCommentRequest(
                //       feedsId: feedsId,
                //       content: _messageController.text
                //     );

                //     FeedsService().leaveCommentSection(request);
                //   },
                //   icon: const Icon(Icons.send_outlined),
                // ),
              ),

              // child: MessageBar(
              /*
                final AddDogRequest add = AddDogRequest(
                        dogName: _nameController.text,
                        breedName: _selectedBreed,
                        dateOfBirth: formattedDate,
                        isOpenAdopt: _isSwitched,
                        gender: selectedGender!,
                        provinceName: _selectedProvince,
                        vaccination: _vaccineController.text,
                        description: _descriptionController.text);
              */
              //   onSend: (_) => print(_),
              //   actions: const [
              //     LeaveCommentRequest newComment = LeaveCommentRequest (
              //       feedsId: feedsId,
              //       content:
              //     );
              //     // InkWell(
              //     //   child: Icon(
              //     //     Icons.add,
              //     //     color: Colors.black,
              //     //     size: 24,
              //     //   ),
              //     //   onTap: () {},
              //     // ),
              //     // Padding(
              //     //   padding: EdgeInsets.only(left: 8, right: 8),
              //     //   child: InkWell(
              //     //     child: Icon(
              //     //       Icons.camera_alt,
              //     //       color: Colors.green,
              //     //       size: 24,
              //     //     ),
              //     //     onTap: () {},
              //     //   ),
              //     // ),
              //   ],
              // ),
            )
          ],
        ));
  }

  Widget CommentList() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: List.generate(10, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            spreadRadius: 2,
                            blurRadius: 15,
                            offset: const Offset(0, 1))
                      ],
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(33),
                    ),
                    child: Row(
                      //comment box-nya
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              border: Border.all(color: Colors.black)),
                          child: Center(
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/profile_picture/person1.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Sharon Cedila',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text("mau ngomong apa ya??",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.5)))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
=======
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
>>>>>>> UAT
}
