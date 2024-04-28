import 'package:flutter/material.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/model/adoption_model.dart';
import 'package:woofers/model/chatlist_model.dart';
import 'package:woofers/pages/user_profile_page.dart';

class ChatCardDetail extends StatelessWidget {
  final RetrieveChatlistResponse chatlistDetail;
  const ChatCardDetail({
    super.key,
    required this.chatlistDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Card(
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: const Color.fromRGBO(160, 220, 220, 10),
          child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UserProfilePage()),
                );
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2.3,
                height: 200,
                child: Column(
                  children: [
                    //ga ada image nya ya?
                    /*ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      child: ImageNetwork(
                          urlImage: chatlistDetail.image,
                          width: double.infinity,
                          height: 150),
                    ),*/

                    // id sekarang -> harusnya nama
                    const SizedBox(height: 5),
                    Text(
                      chatlistDetail.senderId ?? "",
                      style: const TextStyle(
                        color: Color.fromRGBO(40, 36, 36, 10000),
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 1,
                    ),

                    // last message
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 1, vertical: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            chatlistDetail.lastMessage ?? "",
                            style: const TextStyle(
                              color: Color.fromRGBO(40, 36, 36, 10000),
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),

                          //timestamp
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            chatlistDetail.lastMessage ?? "",
                            style: const TextStyle(
                              color: Color.fromRGBO(40, 36, 36, 10000),
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }
}
