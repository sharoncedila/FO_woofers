import 'package:flutter/material.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/components/other_profile_page_template.dart';
import 'package:woofers/components/profile_page_template.dart';
import 'package:woofers/model/feeds_model.dart';
import 'package:woofers/pages/adoption_page.dart';
import 'package:woofers/pages/comment_page.dart';
import 'package:woofers/services/feeds_service.dart';

class FeedsCard extends StatefulWidget {
  final ViewFeedsResponse feedsDetail;
  const FeedsCard({Key? key, required this.feedsDetail}) : super(key: key);

  @override
  _FeedsCardState createState() => _FeedsCardState();
}

class _FeedsCardState extends State<FeedsCard> {
  String? feedsId;
  String? imageURL;
  String? isLike;

  @override
  void initState() {
    super.initState();
    isLike = widget.feedsDetail.isLike;
  }

  @override
  Widget build(BuildContext context) {
    ViewFeedsResponse feedsDetail = widget.feedsDetail;
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
                        // border: Border.all(color: Colors.black.withOpacity(10))
                      ),
                      child: (feedsDetail.profilePicture != null)
                          ? InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          OtherProfilePageTemplate(
                                              accountId:
                                                  feedsDetail.accountId ?? '')),
                                );
                              },
                              child: ClipOval(
                                  child: ImageNetwork(
                                  urlImage: feedsDetail.profilePicture,
                                  width: 45,
                                  height: 45,
                                ),
                              ),
                              borderRadius: BorderRadius.circular(50),
                            )
                          : InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        OtherProfilePageTemplate(
                                            accountId:
                                                feedsDetail.accountId ?? ''),
                                  ),
                                );
                              },
                              child: const Image(
                                  image: AssetImage(
                                      'assets/woofers_icon/profile.jpg')))),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // username
                      Text(
                        // '10.43',
                        feedsDetail.username ?? '',
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
                        feedsDetail.postDate ?? '',
                        style: const TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(40, 36, 36, 10000),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                  child: (feedsDetail.image != null)
                      ? ImageNetwork(
                          urlImage: feedsDetail.image,
                          width: double.infinity,
                          height: 375)
                      : Container()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // const SizedBox(
                      //   width: 13,
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Text(
                          feedsDetail.caption ?? '',
                          softWrap: true,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      )
                    ],
                  ),
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
                                    setState(() {
                                      isLike = "true";
                                      FeedsService()
                                          .likeFeeds(feedsDetail.feedsId ?? '');
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
                                    setState(() {
                                      isLike = null;
                                      FeedsService()
                                          .likeFeeds(feedsDetail.feedsId ?? '');
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
                    "     ${feedsDetail.likesCount ?? ''} likes",
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
