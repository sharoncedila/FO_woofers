import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woofers/pages/edit_my_dog.dart';

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
      body: SafeArea(
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              // logo
              Image.asset(
                'assets/dog_picture/dog1.jpg',
                width: 100,
                height: 100,
              ),

              const SizedBox(height: 10),
              // WOOFERS
              const Text(
                'Dog1',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              const DogProfileDetail(),
            ],
          ),
        )),
      ),
    );
  }
}

class DogProfileDetail extends StatelessWidget {
  const DogProfileDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // dog name
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            const Image(
              image: AssetImage('assets/woofers_icon/profile.jpg'),
              width: 35,
              height: 35,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(
                    "name",
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
                        labelText: 'Nama Ashu',
                        // hintText: snapshot.data!.username,
                        labelStyle: GoogleFonts.newsCycle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ]))
          ],
        ),

        // dog breed
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            const Image(
              image: AssetImage('assets/woofers_icon/profile.jpg'),
              width: 35,
              height: 35,
            ),
            const SizedBox(
              width: 10,
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
                        labelText: 'Dog Breed',
                        // hintText: snapshot.data!.username,
                        labelStyle: GoogleFonts.newsCycle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ]))
          ],
        ),

        // dog birth of date
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            const Image(
              image: AssetImage('assets/woofers_icon/profile.jpg'),
              width: 35,
              height: 35,
            ),
            const SizedBox(
              width: 10,
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
                        labelText: 'Date of Birth',
                        // hintText: snapshot.data!.username,
                        labelStyle: GoogleFonts.newsCycle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ]))
          ],
        ),

        // dog gender
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            const Image(
              image: AssetImage('assets/woofers_icon/profile.jpg'),
              width: 35,
              height: 35,
            ),
            const SizedBox(
              width: 10,
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
                        labelText: 'Gender',
                        // hintText: snapshot.data!.username,
                        labelStyle: GoogleFonts.newsCycle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ]))
          ],
        ),

        // dog province
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            const Image(
              image: AssetImage('assets/woofers_icon/profile.jpg'),
              width: 35,
              height: 35,
            ),
            const SizedBox(
              width: 10,
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
                        labelText: 'Province',
                        // hintText: snapshot.data!.username,
                        labelStyle: GoogleFonts.newsCycle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ]))
          ],
        ),

        // dog vaccination list
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            const Image(
              image: AssetImage('assets/woofers_icon/profile.jpg'),
              width: 35,
              height: 35,
            ),
            const SizedBox(
              width: 10,
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
                        labelText:
                            'Rabies Vaccine, Canine Distemper Vaccine, Canine Parvovirus Vaccine, Canine Adenovirus Type 1 and Type 2 (CAV-1 and CAV-2) Vaccine',
                        // hintText: snapshot.data!.username,
                        labelStyle: GoogleFonts.newsCycle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ]))
          ],
        ),

        // dog description
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            const Image(
              image: AssetImage('assets/woofers_icon/profile.jpg'),
              width: 35,
              height: 35,
            ),
            const SizedBox(
              width: 10,
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
                        labelText: 'dog description',
                        // hintText: snapshot.data!.username,
                        labelStyle: GoogleFonts.newsCycle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ]))
          ],
        ),

        const SizedBox(height: 50),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.1,
          height: 45,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
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
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EditMyDog()),
              );
            },
          ),
        ),
      ],
    );
  }
}

/* unused
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: TextFormField(
            readOnly: true,
            enabled: false,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Name',
              hintStyle: TextStyle(color: Colors.black),
            ),
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
}*/
