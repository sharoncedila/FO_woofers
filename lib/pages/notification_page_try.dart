// import 'package:flutter/material.dart';
// import 'package:woofers/services/account/notification_service.dart';
// import 'notification.dart';
// // import 'package:woofers/services/notification_service.dart';

// class NotificationPage2 extends StatelessWidget {
//   const NotificationPage2({super.key});
 
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(
//               title: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     'assets/woofers_icon/woofers.jpg',
//                     width: 40,
//                     height: 40,
//                   ),
//                   const Text("WOOFERS"),
//                 ],
//               ),
//               bottom: PreferredSize(
//                 preferredSize: Size.fromHeight(0.0),
//                 child: Divider(
//                   height: 0.0,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//             body: FutureBuilder<ViewNotificationResponse?>(
//                 future: fetchNotifications(),
//                 builder: (context, snapshot) {
//                   if (snapshot.connectionState == ConnectionState.waiting) {
//                     return Center(child: CircularProgressIndicator());
//                   } else if (snapshot.hasError) {
//                     return Center(child: Text('Error: ${snapshot.error}'));
//                   } else if (snapshot.hasData) {
//                     final List<String> notifications = snapshot.data!.outputSchema.notificationList
//                                                         ?.map((notification) => notification.notifMessage ?? '')
//                                                         .toList() ?? [];
//                     return ListView.builder(
//                         itemCount: notifications.length,
//                         itemBuilder: (context, index) {
//                           return Container(
//                             height: 75,
//                             decoration: BoxDecoration(
//                               border: Border(
//                                 bottom: BorderSide(
//                                   color: Colors.black,
//                                   width: 1
//                                 )
//                               )
//                             ),
//                             child: Center(
//                               child : Padding(
//                                 padding: EdgeInsets.only(top: 5, bottom: 5, left: 30, right: 30),
//                                 child : Row(
//                               children: [Icon(Icons.notifications), Text(notifications[index])],
//                           )
//                               )
//                             ));
//                         },
//                       );
//                   }else{
//                     return Center(child: Text('No data available'));
//                   }
//                 }),
//                 floatingActionButton: FloatingActionButton(
//                   onPressed: () {
//                     fetchNotifications();
//                   },
//                   child: const Icon(Icons.refresh),
//                 ),));
//   }
// }