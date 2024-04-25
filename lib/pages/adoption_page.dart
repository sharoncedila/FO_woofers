import 'package:flutter/material.dart';
import 'package:woofers/components/adoption_card.dart';
import 'package:woofers/pages/notification_page.dart';
import 'package:woofers/services/adoption/adoption_list_service.dart';

class AdoptionPage extends StatefulWidget {
  const AdoptionPage({Key? key}) : super(key: key);

  @override
  _AdoptionPageState createState() => _AdoptionPageState();
}

class _AdoptionPageState extends State<AdoptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
          // PreferredSize(child: getAppBar(), preferredSize: Size.fromHeight(60)),
          AppBar(
        toolbarHeight: 75,
        elevation: 0,
        backgroundColor: Colors.blueGrey[200],
        title: const Text(
          "WOOFERS",
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notification_add_rounded),
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
                MaterialPageRoute(
                    builder: (context) => const NotificationPage()),
              );
            },
          ),
        ],
      ),
      body: adoptionList(),
    );
  }

  Widget adoptionList() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: FutureBuilder(
          future: RetrieveAdoptionListService().retrieveAdoptionList(),
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("sabar ya");
            }
            if (snapshot.hasError) {
              return const Text("error");
            }
            if (!snapshot.hasData) {
              return const Text("No data");
            }
            final adoptionList = snapshot.data!;
            return Wrap(
              children: adoptionList.map((e) => DogCardDetail(adoptionDetail: e)).toList(),
            );
          }),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
