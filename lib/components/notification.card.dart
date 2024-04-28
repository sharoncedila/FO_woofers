import 'package:flutter/material.dart';
import 'package:woofers/model/notification_model.dart';
import 'package:woofers/pages/user_profile_page.dart';

class NotificationCardDetail extends StatelessWidget {
  final ViewNotificationResponse notificationDetail;
  const NotificationCardDetail({
    super.key,
    required this.notificationDetail,
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
                width: MediaQuery.of(context).size.width / 1,
                height: 95,
                child: Column(
                  children: [
                    //bisa gambar?
                    /*ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      child: ImageNetwork(
                          urlImage: notificationDetail.image,
                          width: double.infinity,
                          height: 150),
                    ),*/
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.pets,
                            color: Colors.grey.shade200,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Dog Name: ${notificationDetail.dogName}",
                            style: const TextStyle(
                              color: Color.fromRGBO(40, 36, 36, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 1),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 1, horizontal: 1),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                notificationDetail.notifMessage ?? "",
                                style: const TextStyle(
                                  color: Color.fromRGBO(40, 36, 36, 1),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Padding(
                            padding: const EdgeInsets.only(right: 15), // Add padding to the right side of the container
                            child: Container(
                              padding: const EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                color:
                                    Colors.grey.shade500, // Background color of the box
                                borderRadius: BorderRadius.circular(
                                    8), // Border radius to round the corners
                              ),
                              child: Text(
                                notificationDetail.status ?? "",
                                style: const TextStyle(
                                  color:
                                      Colors.white, // Text color inside the box
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    /*const SizedBox(
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            notificationDetail.notifMessage ?? "",
                            style: const TextStyle(
                              color: Color.fromRGBO(40, 36, 36, 10000),
                              fontSize: 14,
                            ),
                            //textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            notificationDetail.status ?? "",
                            style: const TextStyle(
                              color: Color.fromRGBO(40, 36, 36, 10000),
                              fontSize: 14,
                            ),
                            //textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),*/
                  ],
                ),
              ))),
    );
  }
}
