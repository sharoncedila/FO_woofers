import 'package:flutter/material.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/components/other_profile_page_template.dart';
import 'package:woofers/model/feeds_model.dart';
import 'package:woofers/pages/comment_page.dart';

class FeedsCard extends StatelessWidget {
  final ViewFeedsResponse feedsDetail;
  const FeedsCard({
    super.key,
    required this.feedsDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(
          //   height: 15,
          // ),
          Column(
                children: [
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      OtherProfilePageTemplate(
                                          accountId:
                                              feedsDetail.accountId ?? '')));
                        },
                        child: Text(
                          feedsDetail.username ?? '',
                          style: const TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(40, 36, 36, 10000),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        // '10.43',
                        feedsDetail.postDate ?? '',
                        style: const TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(40, 36, 36, 10000),
                        ),
                      ),
                      ImageNetwork(
                          urlImage: feedsDetail.image,
                          width: double.infinity,
                          height: 375),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.favorite_border,
                              color: Colors.black,
                              size: 23,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CommentPage(
                                        feedsId: feedsDetail.feedsId ?? '')),
                              );
                            },
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.comment_outlined,
                              color: Colors.black,
                              size: 23,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CommentPage(
                                        feedsId: feedsDetail.feedsId ?? '')),
                              );
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            '     ',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          Text(
                            feedsDetail.likesCount ?? '',
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 12),
                          ),
                          const Text(
                            ' likes',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
        ],
      ),
    );
  }
}
