import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
<<<<<<< HEAD
import 'package:woofers/pages/edit_my_dog.dart';
=======
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/pages/add_feeds_page.dart';
import 'package:woofers/pages/comment_page.dart';
import 'package:woofers/pages/notification_page.dart';
>>>>>>> SYE_20240425

class DogProfilePage extends StatefulWidget {
  const DogProfilePage({Key? key}) : super(key: key);

  @override
  _DogProfilePageState createState() => _DogProfilePageState();
}

class _DogProfilePageState extends State<DogProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
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
          )
        ),
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
                ]
              )
            )
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
                ]
              )
            )
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
                ]
              )
            )
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
                ]
              )
            )
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
                ]
              )
            )
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
                        labelText: 'Rabies Vaccine, Canine Distemper Vaccine, Canine Parvovirus Vaccine, Canine Adenovirus Type 1 and Type 2 (CAV-1 and CAV-2) Vaccine',
                        // hintText: snapshot.data!.username,
                        labelStyle: GoogleFonts.newsCycle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ]
              )
            )
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
                ]
              )
            )
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
                    return Theme.of(context).colorScheme.primary.withOpacity(0.5);
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
=======
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
>>>>>>> SYE_20240425
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
                    builder: (context) => const AddDogProfilePage()),
              );
            },
          ),
        ],
      ),
      body: feedsList(),
    );
  }

  Widget feedsList() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Column(
              children: List.generate(5, (index) {
                return Container(
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
                                                const Text(
                                                  'Sharon Cedila',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white),
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
                    ));
              }),
            )
          ],
        ),
      ),
    );
  }
}
