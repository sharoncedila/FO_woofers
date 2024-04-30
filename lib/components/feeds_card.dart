import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:woofers/model/adoption_model.dart';
import 'package:woofers/model/feeds_model.dart';
import 'package:woofers/pages/comment_page.dart';
=======
import 'package:woofers/components/image_network.dart';
import 'package:woofers/model/adoption_model.dart';
import 'package:woofers/model/feeds_model.dart';
import 'package:woofers/pages/comment_page.dart';
import 'package:woofers/pages/other_profile_page.dart';
>>>>>>> SYE_20240425

class FeedsCard extends StatelessWidget {
  final ViewFeedsResponse feedsDetail;
  const FeedsCard({
    super.key,
    required this.feedsDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
<<<<<<< HEAD
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Column(
            children: List.generate(5, (index) {
              return Container(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 288,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/dog_picture/dog1.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                            width: double.infinity,
                            height: 288,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // profile, nama orang, waktu
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/profile_picture/person1.jpg'),
                                          ),
                                          const SizedBox(
                                            width: 12,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                feedsDetail.username ?? '',
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                '10.43',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.white
                                                        .withOpacity(0.8)),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  // heart and comment
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
=======
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Column(
              children: List.generate(5, (index) {
                return Container(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Column(
                    children: [
                      Column (
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const OtherProfilePage())
                            );
                          },
                            child: Text(
                              feedsDetail.username ?? '',
                              style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(40,36,36,10000),
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ),
                          // Text(
                          //   feedsDetail.username ?? '',
                          //   style: const TextStyle(
                          //     fontSize: 15,
                          //     color: Color.fromRGBO(40,36,36,10000),
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            // '10.43',
                            feedsDetail.postDate ?? '',
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(40,36,36,10000),
                            ),
                          ),
                          ImageNetwork(urlImage: feedsDetail.image, width: double.infinity, height: 288),
                        ],
                      ),
                      // Stack(
                      //   children: [
                      //     // Container(
                      //       // width: double.infinity,
                      //       // height: 288,
                      //       // decoration: BoxDecoration(
                      //       //   image: const DecorationImage(
                      //       //     image: AssetImage('assets/dog_picture/dog1.jpg'),
                      //       //     fit: BoxFit.cover
                      //       //   ),
                      //       //   borderRadius: BorderRadius.circular(20)
                      //       // ),
                      //     // ),
                      //     ImageNetwork(urlImage: feedsDetail.image, width: double.infinity, height: 288),
                      //     Container(
                      //       width: double.infinity,
                      //       height: 288,
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(20),
                      //       ),
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(15),
                      //         child: Column(
                      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //           children: [
                      //             // profile, nama orang, waktu
                      //             Row(
                      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //               children: [
                      //                 Row(
                      //                   children: [
                      //                     // const CircleAvatar(
                      //                     //   backgroundImage: AssetImage('assets/profile_picture/person1.jpg'),
                      //                     // ),
                      //                     // const SizedBox(
                      //                     //   width: 12,
                      //                     // ),
                      //                     Column(
                      //                       crossAxisAlignment: CrossAxisAlignment.start,
                      //                       children: [
                      //                         Text(
                      //                           feedsDetail.username ?? '',
                      //                           style: const TextStyle(
                      //                             fontSize: 15,
                      //                             color: Colors.white,
                      //                             fontWeight: FontWeight.bold,
                      //                           ),
                      //                         ),
                      //                         const SizedBox(
                      //                           height: 3,
                      //                         ),
                      //                         Text(
                      //                           // '10.43',
                      //                           feedsDetail.postDate ?? '',
                      //                           style: TextStyle(
                      //                             fontSize: 13,
                      //                             color: Colors.white.withOpacity(0.8)
                      //                           ),
                      //                         ),
                      //                       ],
                      //                     )
                      //                   ],
                      //                 ),
                      //               ],
                      //             ),
                      //             // heart and comment

                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),

>>>>>>> SYE_20240425
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
                                  size: 20,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
<<<<<<< HEAD
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CommentPage()),
=======
                                    MaterialPageRoute(builder: (context) => const CommentPage()),
>>>>>>> SYE_20240425
                                  );
                                },
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.comment_outlined,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
<<<<<<< HEAD
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CommentPage()),
=======
                                    MaterialPageRoute(builder: (context) => const CommentPage()),
>>>>>>> SYE_20240425
                                  );
                                },
                              ),
                            ],
                          ),
<<<<<<< HEAD
                          const Text(
                            "     1 like",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ));
            }),
          )
        ],
      ),
    );
  }
=======
                          Row(
                            children: [
                              const Text(
                                '     ',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12
                                ),
                              ),
                              Text(
                                feedsDetail.likesCount ?? '',
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12
                                ),
                              ),
                              const Text(
                                ' likes',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12
                                ),
                              )
                            ],
                          )
                          
                        ],
                      )
                    ],
                  )
                );
              }),
            )
          ],
        ),
      );
      }
>>>>>>> SYE_20240425
}
