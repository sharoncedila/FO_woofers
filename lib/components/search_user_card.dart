import 'package:flutter/material.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/model/adoption_model.dart';
import 'package:woofers/model/chatlist_model.dart';
import 'package:woofers/pages/user_profile_page.dart';

class SearchUserCardDetail extends StatelessWidget {
  final SearchChatResponse searchUserDetail;
  const SearchUserCardDetail({
    super.key,
    required this.searchUserDetail,
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

                    // image
                    /*const SizedBox(height: 5),
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      child: ImageNetwork(
                          urlImage: searchUserDetail.accountList?.Image!,
                          width: double.infinity,
                          height: 150),
                    ),
                    const SizedBox(
                      height: 1,
                    ),*/

                    // username
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 1, vertical: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            searchUserDetail.accountList?.username ?? "",
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
