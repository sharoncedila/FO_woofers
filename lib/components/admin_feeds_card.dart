import 'package:flutter/material.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/components/other_profile_page_template.dart';
import 'package:woofers/model/admin_model.dart';
import 'package:woofers/model/feeds_model.dart';
import 'package:woofers/services/admin_service.dart';

class AdminFeedsCard extends StatelessWidget {
  final ShowFeedsResponse feed;

  const AdminFeedsCard({
    //Key? key, required this.feed}) : super(key: key);
    super.key,
    required this.feed,
  });

  // @override
  // _AdminFeedsCardState createState() => _AdminFeedsCardState();
//}

//class _AdminFeedsCardState extends State<AdminFeedsCard> {
  // String? feedsId;
  // String? imageURL;
  // String? isLike;
  // int? feedLikeCount;

  // @override
  // void initState() {
  //   super.initState();
  //   isLike = widget.feed.isLike;
  //   ViewFeedsResponse feedsDetail = widget.feedsDetail;
  //   feedLikeCount = int.tryParse(feedsDetail.likesCount ?? "0");
  // }

  @override
  Widget build(BuildContext context) {
    //ShowFeedsResponse feedsDetail = widget.feed;
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: (feed.profilePicture != null)
                          ? InkWell(
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             OtherProfilePageTemplate(
                              //                 accountId:
                              //                     feed.accountId ?? '')),
                              //   );
                              // },
                              child: ImageNetwork(
                                urlImage: feed.profilePicture,
                                width: 45,
                                height: 45,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            )
                          : InkWell(
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) =>
                              //           OtherProfilePageTemplate(
                              //               accountId:
                              //                   feed.accountId ?? ''),
                              //     ),
                              //   );
                              // },
                              child: const Image(
                                  image: AssetImage(
                                      'assets/woofers_icon/profile.jpg')))),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // username
                      Text(
                        // '10.43',
                        feed.username ?? '',
                        style: const TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(40, 36, 36, 10000),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      // posting date
                      Text(
                        feed.postDate ?? '',
                        style: const TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(40, 36, 36, 10000),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 125,
                  ),
                  SizedBox(
                    height: 35,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                          fixedSize: const Size(75, 10)),
                      onPressed: () async {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Confirmation'),
                              content: const Text(
                                  'Are you sure want to delete this feeds?'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(false);
                                  },
                                  child: const Text('No'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(true);
                                  },
                                  child: const Text('Yes'),
                                ),
                              ],
                            );
                          },
                        ).then((value) {
                          // yess
                          if (value != null && value) {
                            // buat delete tpi ga ada logicnya haha
                            /*
                            DogService()
                                .deleteDog(dogProfile.dogId);
                            */
                            AdminService.deleteFeeds(feed.feedsId ?? '');
                          }
                        });
                      },
                      child: const Text(
                        "Delete",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                  child: (feed.image != null)
                      ? ImageNetwork(
                          urlImage: feed.image,
                          width: double.infinity,
                          height: 375)
                      : Container()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 13,
                      ),
                      SizedBox(
                        width: 375,
                        child: Text(
                          feed.caption ?? '',
                          softWrap: true,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 17),
                        ),
                      )
                    ],
                  ),
                  /*
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: <Widget>[
                          (isLike == null)
                              ? IconButton(
                                  icon: const Icon(
                                    Icons.favorite_border,
                                    color: Colors.black,
                                    size: 23,
                                  ),
                                  onPressed: () {
                                    FeedsService()
                                        .likeFeeds(feedsDetail.feedsId ?? '');
                                    setState(() {
                                      feedLikeCount = feedLikeCount! + 1;
                                      isLike = "true";
                                    });
                                  },
                                )
                              : IconButton(
                                  icon: const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 23,
                                  ),
                                  onPressed: () {
                                    FeedsService()
                                        .likeFeeds(feedsDetail.feedsId ?? '');
                                    setState(() {
                                      feedLikeCount = feedLikeCount! - 1;
                                      isLike = null;
                                    });
                                  },
                                )
                        ],
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
                  Text(
                    "     ${feedLikeCount ?? ''} likes",
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  */
                  const SizedBox(
                    height: 10,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
