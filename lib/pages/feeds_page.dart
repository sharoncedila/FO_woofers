import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/components/feeds_card.dart';
import 'package:woofers/pages/add_feeds_page.dart';
import 'package:woofers/pages/comment_page.dart';
import 'package:woofers/pages/notification_page.dart';
import 'package:woofers/services/feeds_service.dart';

class FeedsPage extends StatefulWidget {
  const FeedsPage({super.key});

  @override
  _FeedsPageState createState() => _FeedsPageState();
}

class _FeedsPageState extends State<FeedsPage> {
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
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications_on),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.add_to_photos),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddFeedsPage()),
              );
            },
          ),
        ],
      ),
      body: feedsList(),
    );
  }

  Widget feedsList() {
    return SingleChildScrollView(
      child: FutureBuilder(
          future: FeedsService().retrieveFeedsData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Padding(
                padding: EdgeInsets.all(160),
                child: Container(
                  // Center the CircularProgressIndicator
                  alignment: Alignment.center,
                  color: Colors
                      .transparent, // Ensure the container doesn't block interaction with underlying widgets
                  child: const CircularProgressIndicator(),
                ),
              );
            }
            if (snapshot.hasError) {
              return const Center(child: Text("Error"));
            }
            if (!snapshot.hasData) {
              return const Text('no feeds');
            }
            final feedsList = snapshot.data!;
            return Wrap(
              children:
                  feedsList.map((e) => FeedsCard(feedsDetail: e)).toList(),
            );
          }),
    );
  }
}
