import 'package:flutter/material.dart';

class AddFeedsPage extends StatelessWidget {
  const AddFeedsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar:
        //   PreferredSize(child: getAppBar(), preferredSize: Size.fromHeight(0)),
        body: AddFeeds(),
        // const SafeArea(
          // child: Text(
          //   'add feeds page nih bos, senggol dong'
          // )
        // ),
      ),
    );
  }
}

Widget getAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
  );
}

Widget AddFeeds() {
    return const Padding(
        padding: EdgeInsets.only(left: 25, right: 25),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "POST YOUR FEED",
                    style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            

          ],
        ),


      );
  }




/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:woofers/pages/chatroom_page.dart';
import 'package:woofers/pages/dog_profile_page.dart';
import 'package:woofers/pages/notification_page.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
// import 'package:flutter_icons/flutter_icons.dart';
// import 'package:social_ui_kit/data/user_json.dart';
// import 'package:social_ui_kit/theme/colors.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
          PreferredSize(child: getAppBar(), preferredSize: Size.fromHeight(0)),
      body: CommentList(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
    );
  }

  Widget CommentList() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    "COMMENTS", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: List.generate(2, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    // decoration: BoxDecoration(
                        // boxShadow: [
                        //   BoxShadow(
                        //       color: Colors.grey.withOpacity(0.15),
                        //       spreadRadius: 2,
                        //       blurRadius: 15,
                        //       offset: const Offset(0, 1))
                        // ],
                        // color: Colors.white.withOpacity(0.6),
                        // borderRadius: BorderRadius.circular(33),
                    // ),
                    // child: InkWell(
                      // onTap: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => const ChatroomPage()),
                      //   );
                      // },
                      child: Row(
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
                    // ),
                  ),
                );
              }),
            ),

            // Padding(padding: padding),

            // Row(
              // Align:
              // Stack(
              //   children: <Widget>[
              //     Align(
              //       alignment: Alignment.bottomCenter,
              //       child: Container(
              //         padding: const EdgeInsets.only(left: 10,bottom: 10,top: 10),
              //         height: 60,
              //         width: double.infinity,
              //         color: Colors.white,
              //         child: Row(
              //           children: <Widget>[
              //             Expanded(
              //               child: TextField(
              //                 decoration: InputDecoration(
              //                   hintText: "Write message...",
              //                   hintStyle: TextStyle(color: Colors.black54),
              //                   border: InputBorder.none
              //                 ),
              //               ),
              //             ),
              //             SizedBox(width: 15,),
              //             FloatingActionButton(
              //               onPressed: (){},
              //               child: Icon(Icons.send,color: Colors.white,size: 18,),
              //               backgroundColor: Colors.blue,
              //               elevation: 0,
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            // ),

              // const Expanded(
              //   child: Text('Text'),
              //   //Align(
              //   //   alignment: FractionalOffset.bottomCenter,
              //   //   child: Text('teng tong'),
              //   // )
              // ),


            MessageBar(
              // onSend: (_) => print(_),
              // actions: [
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
              // ],
            ),

            // const Expanded(
            //   child: Align(
            //     alignment: FractionalOffset.bottomCenter,
            //     // child: Text(''),
            //   )

            // )

          ],
        ),

        

      ),

      
    );
  }
}

*/