import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/components/image_network.dart';
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

          // snapshot.data?.dogName==null?"gagalambildata":snapshot.data!.dogName,
          final imageURL = snapshot.data?.image == null ? "" : snapshot.data!.image;
          return SingleChildScrollView(
            child: Column(
              children: [
                Expanded(
                  child: ImageNetwork(urlImage: imageURL, width: 125, height: 125),
                ),
                // dog name
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            const Image(
                              image:
                                  AssetImage('assets/woofers_icon/profile.jpg'),
                              width: 35,
                              height: 35,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                  Text(
                                    "dog name",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                    child: TextFormField(
                                      readOnly: true,
                                      enabled: false,
                                      decoration: InputDecoration(
                                        border: const UnderlineInputBorder(),
                                        // labelText: 'Username',
                                        labelText:
                                            snapshot.data?.dogName == null
                                                ? ""
                                                : snapshot.data!.dogName,
                                        labelStyle: GoogleFonts.newsCycle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]))
                          ],
                        ),

                        // full name
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            const Image(
                              image:
                                  AssetImage('assets/woofers_icon/profile.jpg'),
                              width: 35,
                              height: 35,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                  Text(
                                    "breed",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                    child: TextFormField(
                                      readOnly: true,
                                      enabled: false,
                                      decoration: InputDecoration(
                                        border: const UnderlineInputBorder(),
                                        // labelText: 'Username',
                                        labelText:
                                            snapshot.data?.breedName == null
                                                ? ""
                                                : snapshot.data!.breedName,
                                        labelStyle: GoogleFonts.newsCycle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]))
                          ],
                        ),

                        // email
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            const Image(
                              image:
                                  AssetImage('assets/woofers_icon/email.png'),
                              width: 35,
                              height: 35,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                  Text(
                                    "date of birth",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                    child: TextFormField(
                                      readOnly: true,
                                      enabled: false,
                                      decoration: InputDecoration(
                                        border: const UnderlineInputBorder(),
                                        // labelText: 'Username',
                                        labelText: snapshot.data?.dateOfBirth == null
                                            ? ""
                                            : snapshot.data!.dateOfBirth,
                                        labelStyle: GoogleFonts.newsCycle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]))
                          ],
                        ),

                        // province name
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            const Image(
                              image: AssetImage(
                                  'assets/woofers_icon/province.png'),
                              width: 35,
                              height: 35,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                  Text(
                                    "gender",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                    child: TextFormField(
                                      readOnly: true,
                                      enabled: false,
                                      decoration: InputDecoration(
                                        border: const UnderlineInputBorder(),
                                        // labelText: 'Username',
                                        labelText:
                                            snapshot.data?.gender == null
                                                ? ""
                                                : snapshot.data!.gender,
                                        labelStyle: GoogleFonts.newsCycle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]))
                          ],
                        ),

                        // phone number
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            const Image(
                              image:
                                  AssetImage('assets/woofers_icon/phone.png'),
                              width: 35,
                              height: 35,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                  Text(
                                    "province",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                    child: TextFormField(
                                      readOnly: true,
                                      enabled: false,
                                      decoration: InputDecoration(
                                        border: const UnderlineInputBorder(),
                                        // labelText: 'Username',
                                        labelText:
                                            snapshot.data?.provinceName == null
                                                ? ""
                                                : snapshot.data!.provinceName,
                                        labelStyle: GoogleFonts.newsCycle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]))
                          ],
                        ),

                        // vaccine
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            const Image(
                              image:
                                  AssetImage('assets/woofers_icon/phone.png'),
                              width: 35,
                              height: 35,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                  Text(
                                    "vaccine",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                    child: TextFormField(
                                      readOnly: true,
                                      enabled: false,
                                      decoration: InputDecoration(
                                        border: const UnderlineInputBorder(),
                                        // labelText: 'Username',
                                        labelText:
                                            snapshot.data?.vaccination == null
                                                ? ""
                                                : snapshot.data!.vaccination,
                                        labelStyle: GoogleFonts.newsCycle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]))
                          ],
                        ),

                        // description
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            const Image(
                              image: AssetImage(
                                  'assets/woofers_icon/description.png'),
                              width: 35,
                              height: 35,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                  Text(
                                    "description",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                    child: TextFormField(
                                      readOnly: true,
                                      enabled: false,
                                      decoration: InputDecoration(
                                        border: const UnderlineInputBorder(),
                                        // labelText: 'Username',
                                        labelText:
                                            snapshot.data?.description == null
                                                ? ""
                                                : snapshot.data!.description,
                                        labelStyle: GoogleFonts.newsCycle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]))
                          ],
                        ),
              ],
            ),
          );
        }
      ),
    );
  }
}
