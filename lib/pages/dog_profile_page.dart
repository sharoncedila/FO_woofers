import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/pages/add_dog_page.dart';
import 'package:woofers/pages/edit_my_dog.dart';
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
                MaterialPageRoute(builder: (context) => const AddDogPage()),
              );
            },
          ),
        ],
      ),
      body: dogProfileDetail(),
    );
  }

  Widget dogProfileDetail() {
    return Container(
      // SingleChildScrollView(
      child: FutureBuilder(
          future: DogService().retrieveDogProfile(dogId),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: Text("Retrieving your data..."));
            }
            if (snapshot.hasError) {
              return const Center(child: Text("Error"));
            }
            if (!snapshot.hasData) {
              return const Center(
                  child: Text("no data available for this dog"));
            }

            // snapshot.data?.dogName==null?"gagalambildata":snapshot.data!.dogName,
            final imageURL =
                snapshot.data?.image == null ? "" : snapshot.data!.image;
            return Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                ImageNetwork(urlImage: imageURL, width: 150, height: 150),
                const SizedBox(
                  height: 15,
                ),
                // dog name
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    // const Image(
                    //   image:
                    //       AssetImage('assets/woofers_icon/profile.jpg'),
                    //   width: 35,
                    //   height: 35,
                    // ),
                    const Icon(
                      Icons.pets_sharp,
                      size: 35,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                labelText: snapshot.data?.dogName == null
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

                // doog breed
                const SizedBox(height: 15),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.pets_outlined,
                      size: 35,
                    ),
                    // const Image(
                    //   image:
                    //       AssetImage('assets/woofers_icon/profile.jpg'),
                    //   width: 35,
                    //   height: 35,
                    // ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                labelText: snapshot.data?.breedName == null
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

                // date of birth
                const SizedBox(height: 15),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    // const Image(
                    //   image:
                    //       AssetImage('assets/woofers_icon/email.png'),
                    //   width: 35,
                    //   height: 35,
                    // ),
                    const Icon(
                      Icons.calendar_month_outlined,
                      size: 35,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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

                // gender
                const SizedBox(height: 15),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    // const Image(
                    //   image: AssetImage(
                    //       'assets/woofers_icon/province.png'),
                    //   width: 35,
                    //   height: 35,
                    // ),
                    const Icon(
                      Icons.transgender_outlined,
                      size: 35,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                labelText: snapshot.data?.gender == null
                                    ? ""
                                    : snapshot.data!.gender == 'M'
                                        ? 'Male'
                                        : 'Female',
                                labelStyle: GoogleFonts.newsCycle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ]))
                  ],
                ),

                // province
                const SizedBox(height: 15),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    // const Image(
                    //   image:
                    //       AssetImage('assets/woofers_icon/province.png'),
                    //   width: 35,
                    //   height: 35,
                    // ),
                    const Icon(
                      Icons.location_city_outlined,
                      size: 35,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                labelText: snapshot.data?.provinceName == null
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
                      width: 20,
                    ),
                    // const Image(
                    //   image:
                    //       AssetImage('assets/woofers_icon/phone.png'),
                    //   width: 35,
                    //   height: 35,
                    // ),
                    const Icon(
                      Icons.medical_services_outlined,
                      size: 35,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                labelText: snapshot.data?.vaccination == null
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
                      width: 20,
                    ),
                    // const Image(
                    //   image: AssetImage(
                    //       'assets/woofers_icon/description.png'),
                    //   width: 35,
                    //   height: 35,
                    // ),
                    const Icon(
                      Icons.abc_outlined,
                      size: 35,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                labelText: snapshot.data?.description == null
                                    ? ""
                                    : snapshot.data!.description,
                                labelStyle: GoogleFonts.newsCycle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ]
                      )
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  width: 125,
                  height: 35,
                  child: Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.5);
                              }
                              return null; // Use the component's default.
                            },
                          ),
                        ),
                        child: const Text('Edit'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EditMyDog()),
                          );
                        },
                      ),
                    )
                )
              ],
            );
            // );
          }),
    );
  }
}
