import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/components/notification_adoption_card.dart';
import 'package:woofers/components/notification_comment_card.dart';
import 'package:woofers/services/notification_service.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final ScrollController _firstController = ScrollController();
  final ScrollController _secondController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 75,
          elevation: 0,
          backgroundColor: HexColor("#a0dcdc"),
          title: Text(
            "WOOFERS",
            style: GoogleFonts.lora(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: const Color.fromRGBO(40, 36, 36, 10000),
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              "ADOPTION LIST",
              style: GoogleFonts.lora(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.975,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: adoptionNotificationList(),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "COMMENT LIST",
              style: GoogleFonts.lora(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.975,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: commentNotificationList(),
                )
              ],
            )
          ],
        )

        //adoptionNotificationList(), //commentNotificationList()
        );
  }

  Widget adoptionNotificationList() {
    // final ScrollController _secondController = ScrollController();

    return Scrollbar(
      thumbVisibility: true,
      controller: _firstController,
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: FutureBuilder(
              future: NotificationService().retrieveAdoptionList(),
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: Text("Retrieving your data..."));
                }
                if (snapshot.hasError) {
                  return const Center(child: Text("Error"));
                }
                if (!snapshot.hasData) {
                  return const Text("No data");
                }
                final adoptionList = snapshot.data!;
                return Wrap(
                  children: adoptionList
                      .map((e) =>
                          AdoptionNotificationCardDetail(notificationDetail: e))
                      .toList(),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }

  Widget commentNotificationList() {
    return Scrollbar(
      thumbVisibility: true,
      controller: _secondController,
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: FutureBuilder(
              future: NotificationService().retrieveNotificationList(),
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: Text("Retrieving your data..."));
                }
                if (snapshot.hasError) {
                  return const Center(child: Text("Error"));
                }
                if (!snapshot.hasData) {
                  return const Text("No data");
                }
                final adoptionList = snapshot.data!;
                return Wrap(
                  children: adoptionList
                      .map((e) =>
                          CommentNotificationCardDetail(notificationDetail: e))
                      .toList(),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
