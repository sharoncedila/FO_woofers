import 'package:flutter/material.dart';
import 'package:woofers/model/adoption_model.dart';
import 'package:woofers/model/notification_model.dart';
import 'package:woofers/pages/notification_page.dart';
import 'package:woofers/services/adoption_service.dart';

class AdoptionNotificationCardDetail extends StatelessWidget {
  final ViewNotificationResponse notificationDetail;
  const AdoptionNotificationCardDetail({
    super.key,
    required this.notificationDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: const Color.fromARGB(156, 149, 255, 255),
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 1,
          height: 100,
          child: Row(children: [
            const SizedBox(width: 15),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.pets,
                        color: Colors.grey.shade200,
                        size: 20,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        notificationDetail.dogName ?? '',
                        style: const TextStyle(
                          color: Color.fromRGBO(40, 36, 36, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        notificationDetail.sendDate ?? '',
                        style: const TextStyle(
                          color: Color.fromRGBO(40, 36, 36, 100),
                          fontSize: 11,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    notificationDetail.notifMessage ?? "",
                    style: const TextStyle(
                      color: Color.fromRGBO(4, 4, 4, 1),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.275,
                alignment: Alignment.center,
                child:
                    (notificationDetail.status == "OPEN")
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(color: Colors.black),
                                  ],
                                  borderRadius: BorderRadius.circular(
                                      8),
                                ),
                                child: TextButton(
                                  onPressed: () async {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text('Confirmation'),
                                          content: const Text(
                                              'Are you sure want to approve this adoption request?'),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pop(false);
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
                                        final ApproveRejectAdoptionRequest
                                            request =
                                            ApproveRejectAdoptionRequest(
                                                notificationId:
                                                    notificationDetail
                                                        .notificationId,
                                                status: "APPROVED");
                                        AdoptionService()
                                            .approveRejectAdoption(request);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const NotificationPage()));
                                      }
                                    });
                                  },
                                  child: const Text(
                                    "APPROVE",
                                    style: TextStyle(
                                        color: Colors
                                            .black87,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  boxShadow: const [
                                    BoxShadow(color: Colors.black),
                                  ],
                                  borderRadius: BorderRadius.circular(
                                      8),
                                ),
                                child: TextButton(
                                  onPressed: () async {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text('Confirmation'),
                                          content: const Text(
                                              'Are you sure want to reject this adoption request?'),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pop(false);
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
                                      if (value != null && value) {
                                        final ApproveRejectAdoptionRequest
                                            request =
                                            ApproveRejectAdoptionRequest(
                                                notificationId:
                                                    notificationDetail
                                                        .notificationId,
                                                status: "REJECTED");
                                        AdoptionService()
                                            .approveRejectAdoption(request);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const NotificationPage()));
                                      }
                                    });
                                  },
                                  child: const Text(
                                    "REJECT",
                                    style: TextStyle(
                                      color: Colors
                                          .white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Text(
                            notificationDetail.status ?? "",
                            style: const TextStyle(
                                color: Color.fromARGB(255, 65, 65,
                                    65),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
              ),
            ),
          ]),
        ),
        // ],
      ),
    );
  }
}