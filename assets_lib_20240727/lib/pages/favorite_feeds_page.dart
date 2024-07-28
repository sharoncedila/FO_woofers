import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/components/feeds_card.dart';
import 'package:woofers/pages/add_feeds_page.dart';
import 'package:woofers/pages/comment_page.dart';
import 'package:woofers/pages/notification_page.dart';
import 'package:woofers/services/feeds_service.dart';

class FavoritFeedsPage extends StatefulWidget {
  const FavoritFeedsPage({super.key});

  @override
  _FavoritFeedsPageState createState() => _FavoritFeedsPageState();
}

class _FavoritFeedsPageState extends State<FavoritFeedsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder(
          future: FeedsService().retrieveSavedFeedsData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: Text("Retrieving your data..."));
            }
            if (snapshot.hasError) {
              return const Center(child: Text("\n please like a feeds first"));
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

  // Widget feedsList() {
  //   return SingleChildScrollView(
  //     child: FutureBuilder(
  //         future: FeedsService().retrieveFeedsData(),
  //         builder: (context, snapshot) {
  //           if (snapshot.connectionState == ConnectionState.waiting) {
  //             return const Center(child: Text("Retrieving your data..."));
  //           }
  //           if (snapshot.hasError) {
  //             return const Center(child: Text("Error"));
  //           }
  //           if (!snapshot.hasData) {
  //             return const Text('no feeds');
  //           }
  //           final feedsList = snapshot.data!;
  //           return Wrap(
  //             children:
  //                 feedsList.map((e) => FeedsCard(feedsDetail: e)).toList(),
  //           );
  //         }),
  //   );
  // }
}
