import 'package:chat_bubbles/chat_bubbles.dart';
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
  const CommentPage({
    super.key,
    required this.feedsId,
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
        AppBar(
          toolbarHeight: 75,
          elevation: 0,
          backgroundColor: HexColor("#a0dcdc"),
          centerTitle: true,
          title:
            Text(
              "COMMENTS",
              style: GoogleFonts.lora(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(40,36,36,10000),
              ),
              textAlign: TextAlign.center,
            ),
          ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: FutureBuilder(
                future: FeedsService().openCommentSection(feedsId),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: Text("Retrieving your data..."));
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
                }
              ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: MessageBar(
              onSend: (_) => print(_),
              actions: const [
                // InkWell(
                //   child: Icon(
                //     Icons.add,
                //     color: Colors.black,
                //     size: 24,
                //   ),
                //   onTap: () {},
                // ),
                // Padding(
                //   padding: EdgeInsets.only(left: 8, right: 8),
                //   child: InkWell(
                //     child: Icon(
                //       Icons.camera_alt,
                //       color: Colors.green,
                //       size: 24,
                //     ),
                //     onTap: () {},
                //   ),
                // ),
              ],
            ),
          )
        ],
      )
      
    );
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
                                      image:
                                          AssetImage('assets/profile_picture/person1.jpg'),
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
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "mau ngomong apa ya??",
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
}