import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/components/adoption_card.dart';
import 'package:woofers/pages/notification_page.dart';
import 'package:woofers/services/adoption/adoption_service.dart';

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
        AppBar(
          toolbarHeight: 75,
          elevation: 0,
          backgroundColor: HexColor("#a0dcdc"),
          title:
            Text(
              "WOOFERS",
              style: GoogleFonts.lora(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(40,36,36,10000),
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.notification_add_rounded),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NotificationPage()),
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
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: FutureBuilder(
            future: AdoptionService().retrieveAdoptionList(),
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
                    .map((e) => DogCardDetail(adoptionDetail: e))
                    .toList(),
              );
            }),
          ),
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
