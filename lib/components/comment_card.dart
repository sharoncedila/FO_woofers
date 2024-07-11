import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/components/other_profile_page_template.dart';
import 'package:woofers/model/feeds_model.dart';

class CommentCard extends StatelessWidget {
  final OpenCommentsResponse commentDetail;
  const CommentCard({
    super.key,
    required this.commentDetail,
  });

  @override
  Widget build(BuildContext context) {
    final imageURL = commentDetail.profilePicture;
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.6),
                borderRadius: BorderRadius.circular(33),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  (commentDetail.profilePicture != null)
                      ? InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      OtherProfilePageTemplate(
                                          accountId:
                                              commentDetail.accountId ?? '')),
                            );
                          },
                          child: ImageNetwork(
                            urlImage: commentDetail.profilePicture,
                            width: 45,
                            height: 45,
                          ),
                        )
                      : InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OtherProfilePageTemplate(
                                    accountId: commentDetail.accountId ?? ''),
                              ),
                            );
                          },
                          child: const Image(
                            image:
                                AssetImage('assets/woofers_icon/profile.jpg'),
                            width: 45,
                            height: 45,
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
                        Row(
                          children: [
                            Text(
                                commentDetail.username ?? '',
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.none,
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                                commentDetail.commentDate ?? '',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black.withOpacity(0.4),
                                  decoration: TextDecoration.none,
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          commentDetail.content ?? '',
                          style: GoogleFonts.archivoNarrow(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
