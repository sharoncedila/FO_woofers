import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:woofers/components/adoption_card.dart';
import 'package:woofers/services/adoption/adoption_service.dart';
// import 'package:woofers/components/adoption_card.dart';
// import 'package:woofers/pages/notification_page.dart';
// import 'package:woofers/services/adoption/adoption_list_service.dart';
=======
import 'package:shared_preferences/shared_preferences.dart';
import 'package:woofers/components/my_dog_card.dart';
import 'package:woofers/services/dog/dog_services.dart';

void main() => runApp(const DogListPage());
>>>>>>> SYE_20240425

class DogListPage extends StatefulWidget {
  const DogListPage({super.key});

  @override
  _DogListPageState createState() => _DogListPageState();
}

class _DogListPageState extends State<DogListPage> {
<<<<<<< HEAD
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: FutureBuilder(
          future: AdoptionService().retrieveAdoptionList(),
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("sabar ya");
            }
            if (snapshot.hasError) {
              return const Text("error");
=======
  Future<String> geToken() async {
    final prefs = await SharedPreferences.getInstance();
    return Future.value(prefs.getString('accountId'));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder(
          future: geToken(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: Text("Retrieving your data..."));
            }
            if (snapshot.hasError) {
              return const Center(child: Text("Error accountID"));
>>>>>>> SYE_20240425
            }
            if (!snapshot.hasData) {
              return const Text("No data");
            }
<<<<<<< HEAD
            final adoptionList = snapshot.data!;
            return Wrap(
              children: adoptionList
                  .map((e) => DogCardDetail(adoptionDetail: e))
                  .toList(),
            );
          }),
        ),
      ),
    );
  }
}

// class _AdoptionPageState extends State<AdoptionPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar:
//           // PreferredSize(child: getAppBar(), preferredSize: Size.fromHeight(60)),
//           AppBar(
//         toolbarHeight: 75,
//         elevation: 0,
//         backgroundColor: Colors.blueGrey[200],
//         title: const Text(
//           "WOOFERS",
//           style: TextStyle(
//               fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
//         ),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.notification_add_rounded),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => const NotificationPage()),
//               );
//             },
//           ),
//           IconButton(
//             icon: const Icon(Icons.add_to_photos),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => const NotificationPage()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: adoptionList(),
//     );
//   }

//   Widget adoptionList() {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
//         child: FutureBuilder(
//           future: RetrieveAdoptionListService().retrieveAdoptionList(),
//           builder: ((context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Text("sabar ya");
//             }
//             if (snapshot.hasError) {
//               return const Text("error");
//             }
//             if (!snapshot.hasData) {
//               return const Text("No data");
//             }
//             final adoptionList = snapshot.data!;
//             return Wrap(
//               children: adoptionList
//                   .map((e) => DogCardDetail(adoptionDetail: e))
//                   .toList(),
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
=======

            String accountId =
                snapshot.data == null ? "" : snapshot.requireData;
            return Expanded(
                child: FutureBuilder(
                    future: DogService().retrieveDogList(accountId),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                            child: Text("Retrieving your data..."));
                      }
                      if (snapshot.hasError) {
                        return const Center(child: Text("Error dogList"));
                      }
                      if (!snapshot.hasData) {
                        return const Text("You do not have any dog.");
                      }

                      final dogList = snapshot.data!;
                      return Wrap(
                        children: dogList
                            .map((e) => MyDogCard(dogProfile: e))
                            .toList(),
                      );
                    }));
          }),
    );
  }
}
>>>>>>> SYE_20240425
