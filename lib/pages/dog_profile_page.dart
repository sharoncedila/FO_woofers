import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/pages/add_dog_page.dart';
import 'package:woofers/pages/comment_page.dart';
import 'package:woofers/pages/notification_page.dart';
import 'package:woofers/services/dog/dog_services.dart';

class DogProfilePage extends StatelessWidget {
  final String dogId;
  const DogProfilePage({
    super.key,
    required this.dogId,
  });

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
                    builder: (context) => const AddDogPage()),
              );
            },
          ),
        ],
      ),
      body: dogProfileDetail(),
    );
  }

  Widget dogProfileDetail() {
    return SingleChildScrollView(
      child: FutureBuilder(
        future: DogService().RetrieveDogProfileDetailPage(dogId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: Text("Retrieving your data..."));
          }
          if (snapshot.hasError) {
            return const Center(child: Text("Error"));
          }
          if (!snapshot.hasData) {
            return const Center(child: Text("no data available for this dog"));
          }
          return SingleChildScrollView(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 288,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/dog_picture/dog1.jpg'),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 288,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // profile, nama orang, waktu
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      'assets/profile_picture/person1.jpg'),
                                                ),
                                                const SizedBox(
                                                  width: 12,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      snapshot.data?.dogName==null?"gagalambildata":snapshot.data!.dogName,
                                                      style: const TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black),
                                                    ),
                                                    const SizedBox(
                                                      height: 3,
                                                    ),
                                                    Text(
                                                      '10.43',
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          color: Colors.white
                                                              .withOpacity(0.8)),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        // heart and comment
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      icon: const Icon(
                                        Icons.favorite_border,
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const CommentPage()),
                                        );
                                      },
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.comment_outlined,
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const CommentPage()),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                const Text(
                                  "     1 like",
                                  style:
                                      TextStyle(color: Colors.grey, fontSize: 12),
                                )
                              ],
                            )
                          ],
                        )),
              ],
            ),
          );
        }
      ),
    );
  }
}
