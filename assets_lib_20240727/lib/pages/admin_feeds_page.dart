// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:woofers/components/admin_feeds_card.dart';
// import 'package:woofers/components/feeds_card.dart';
// import 'package:woofers/model/feeds_model.dart';
// import 'package:woofers/pages/add_feeds_page.dart';
// import 'package:woofers/pages/notification_page.dart';
// import 'package:woofers/services/feeds_service.dart';

// class AdminFeedsPage extends StatefulWidget {
//   const AdminFeedsPage({super.key});

//   @override
//   _AdminFeedsPageState createState() => _AdminFeedsPageState();
// }

// class _AdminFeedsPageState extends State<AdminFeedsPage> {
//   PaginationFeeds paginationFeeds = PaginationFeeds();
//   bool isLoading = false; // Initially, set to false
//   List<ViewFeedsResponse> feedsList = [];
//   final ScrollController _scrollController = ScrollController();

//   @override
//   void initState() {
//     super.initState();
//     fetchInitialData();

//     _scrollController.addListener(() {
//       if (_scrollController.position.pixels ==
//           _scrollController.position.maxScrollExtent) {
//         fetchInitialData();
//       }
//     });
//   }

//   Future<void> fetchInitialData() async {
//     if (isLoading) return;

//     setState(() {
//       isLoading = true;
//     });

//     try {
//       final viewFeedsResponse =
//           await FeedsService().retrieveFeedsData(paginationFeeds);

//       setState(() {
//         feedsList.addAll(viewFeedsResponse);
//         isLoading = false;
//       });
//     } catch (e) {
//       print(e);
//       setState(() {
//         isLoading = false;
//       });
//     }
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         toolbarHeight: 75,
//         elevation: 0,
//         backgroundColor: HexColor("#a0dcdc"),
//         title: Text(
//           "WOOFERS",
//           style: GoogleFonts.lora(
//             fontSize: 25,
//             fontWeight: FontWeight.bold,
//             color: const Color.fromRGBO(40, 36, 36, 10000),
//           ),
//         ),
//       ),
//       body: ListView.builder(
//         controller: _scrollController,
//         itemCount: feedsList.length + 1,
//         itemBuilder: (context, index) {
//           if (index == feedsList.length) {
//             return isLoading
//                 ? const Center(child: CircularProgressIndicator())
//                 : const SizedBox.shrink();
//           }

//           return AdminFeedsCard(feedsDetail: feedsList[index]);
//         },
//       ),
//     );
//   }
// }
