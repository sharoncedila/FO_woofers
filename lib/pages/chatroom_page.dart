import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

class ChatroomPage extends StatefulWidget {
  
  const ChatroomPage({Key? key}) : super(key: key);

  @override
  _ChatroomPageState createState() => _ChatroomPageState();

}

class _ChatroomPageState extends State<ChatroomPage> {
  final TextEditingController _messageController = TextEditingController();
  final String recipientId = "";
  final String receiverId = "";
  
  void sendMessage() async{
    if(_messageController.text.isNotEmpty){
      // service for send message
      //await chatservice.sendMessage(receiverId, );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Username'),centerTitle: true,),
        backgroundColor: Colors.grey[300],
        body: SafeArea( 
          child: Column(
            children: [
              SizedBox(height: 20),
              const BubbleSpecialThree(
                text: 'Added iMessage shape bubbles',
                color: Color(0xFF1B97F3),
                tail: false,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),
              ),
              const BubbleSpecialThree(
                text: 'Sure',
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),

              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: MessageBar(
                    onSend: (_) => print(_),
                    actions: [
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
              )
              
            ],
          ),
          // BubbleSpecialThree(
          //   text: 'Sure',
          //   color: Color(0xFFE8E8EE),
          //   tail: false,
          //   isSender: false,
          // ),
          // child: Text(
          //   'chatroom page nih bos, senggol dong'
          // )
          // BubbleSpecialThree(
          //   text: 'Added iMessage shape bubbles',
          //   color: Color(0xFF1B97F3),
          //   tail: false,
          //   textStyle: TextStyle(
          //       color: Colors.white,
          //       fontSize: 16
          //   ),
          // ),

          // BubbleSpecialThree(
          //   text: 'Please try and give some feedback on it!',
          //   color: Color(0xFF1B97F3),
          //   tail: true,
          //   textStyle: TextStyle(
          //     color: Colors.white,
          //     fontSize: 16
          //   ),
          // ),
          // BubbleSpecialThree(
          //   text: 'Sure',
          //   color: Color(0xFFE8E8EE),
          //   tail: false,
          //   isSender: false,
          // ),
          // BubbleSpecialThree(
          //   text: "I tried. It's awesome!!!",
          //   color: Color(0xFFE8E8EE),
          //   tail: false,
          //   isSender: false,
          // ),
          // BubbleSpecialThree(
          //   text: "Thanks",
          //   color: Color(0xFFE8E8EE),
          //   tail: true,
          //   isSender: false,
          // ),
        ),
        // MessageBar(
        //   onSend: (_) => print(_),
        //   actions: [
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
      ),
    );
  }
}