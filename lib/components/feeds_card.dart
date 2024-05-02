import 'package:flutter/material.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/components/other_profile_page_template.dart';
import 'package:woofers/model/feeds_model.dart';
import 'package:woofers/pages/comment_page.dart';
import 'package:woofers/services/feeds/feeds_service.dart';

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
  String? postImage;

  @override
  void initState(){
    super.initState();
    isLike = widget.feedsDetail.isLike;
  }

  @override
  Widget build(BuildContext context) {
    // final imageURL = feedsDetail?.profilePicture;
    ViewFeedsResponse feedsDetail = widget.feedsDetail;
    isLike = feedsDetail.isLike;
    postImage = feedsDetail.image;
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(
          //   height: 15,
          // ),
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
                    child: ImageNetwork(
                        urlImage: feedsDetail.profilePicture,
                        width: 45,
                        height: 45),
                  ),
                  const SizedBox(
                    width: 15,
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
                        // '10.43',
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
                height: 10,
              ),
              ImageNetwork(
                  urlImage: feedsDetail.image,
                  width: double.infinity,
                  height: 375),
              const SizedBox(
                height: 15,
              ),
              // (postImage == null) ? '' : ImageNetwork(urlImage: postImage, width: double.infinity, height: 375),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                                    print(isLike);
                                    setState(() {
                                      isLike = 'true';
                                      print(isLike);
                                      FeedsService()
                                          .likeFeeds(feedsDetail.feedsId ?? '');
                                    });
                                  },
                                )

                              /*
                                IconButton(
                  onPressed: () {
                    setState(() {
                      filterAdoption = filterAdoption.copyWith(
                        breed: _selectedBreed,
                        province: _selectedProvince,
                        gender: _selectedGender,
                      );
                    });
                  },
                  icon: Icon(Icons.search_outlined),
                )
                                */
                              : IconButton(
                                  icon: const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 23,
                                  ),
                                  onPressed: () {
                                    print(isLike);
                                    setState(() {
                                      isLike = null;
                                      print(isLike);
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
                  // Text(
                  //   "     ${feedsDetail.likesCount ?? ''} likes",
                  //   style: const TextStyle(color: Colors.grey, fontSize: 12),
                  //   // "Dog Name: ${notificationDetail.dogName}",
                  // ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 13,
                      ),
                      Text(
                        feedsDetail.caption ?? '',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 15),
                        // "Dog Name: ${notificationDetail.dogName}",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  )
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
