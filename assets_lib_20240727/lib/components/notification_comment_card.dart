import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:woofers/model/notification_model.dart';

class CommentNotificationCardDetail extends StatelessWidget {
  final ViewNotificationResponse notificationDetail;
  const CommentNotificationCardDetail({
    super.key,
    required this.notificationDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Row(
            children: [
              const SizedBox(
                width: 7,
              ),
              const Icon(
                Icons.broken_image_outlined,
                size: 25,
                color: Colors.black,
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.65,
                child: Expanded(
                  child: Text(
                    notificationDetail.notifMessage ?? "",
                    softWrap: true,
                    maxLines: 3,
                    style: const TextStyle(
                      color: Color.fromRGBO(40, 36, 36, 1),
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.125,
                child: Expanded(
                  child: Text(
                    notificationDetail.sendDate ?? "",
                    softWrap: true,
                    maxLines: 3,
                    style: const TextStyle(
                      color: Color.fromRGBO(40, 36, 36, 100),
                      fontSize: 9,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // ),
        ));
  }
}
