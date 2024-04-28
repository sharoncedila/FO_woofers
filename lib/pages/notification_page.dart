import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woofers/pages/dog_profile_page.dart';
import 'package:woofers/pages/user_profile_page.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              // user profile page
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Image(
                    image: AssetImage('assets/woofers_icon/profile.jpg'),
                    width: 35,
                    height: 35,
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
                          "username",
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
                              labelText: 'Username',
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

              // adoption list card
              Container(
                alignment: Alignment.center,
                child: Wrap(
                  children: [
                    // 1
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Card(
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: const Color.fromRGBO(160, 220, 220, 10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const UserProfilePage()
                              ),
                            );
                          },
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2.25,
                            height: 200,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                  child: Image.asset(
                                    'assets/dog_picture/dog1.jpg',
                                    height: 150,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Nama Ashu',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 1,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 1, vertical: 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Golden Retriever',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        '8',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        )
                      ),
                    ),

                    // 2
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Card(
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: const Color.fromRGBO(160, 220, 220, 10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const UserProfilePage()
                              ),
                            );
                          },
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2.25,
                            height: 200,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                  child: Image.asset(
                                    'assets/dog_picture/dog1.jpg',
                                    height: 150,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Nama Ashu',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 1,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 1, vertical: 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Golden Retriever',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        '8',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        )
                      ),
                    ),

                    // 3
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Card(
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: const Color.fromRGBO(160, 220, 220, 10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const UserProfilePage()
                              ),
                            );
                          },
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2.25,
                            height: 200,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                  child: Image.asset(
                                    'assets/dog_picture/dog1.jpg',
                                    height: 150,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Nama Ashu',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 1,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 1, vertical: 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Golden Retriever',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        '8',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        )
                      ),
                    ),

                    // 4
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Card(
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: const Color.fromRGBO(160, 220, 220, 10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const UserProfilePage()
                              ),
                            );
                          },
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2.25,
                            height: 200,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                  child: Image.asset(
                                    'assets/dog_picture/dog1.jpg',
                                    height: 150,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Nama Ashu',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 1,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 1, vertical: 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Golden Retriever',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        '8',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        )
                      ),
                    ),

                  ],
                ),
              ),




            ]),
          ),
        ),
    );
  }
}
