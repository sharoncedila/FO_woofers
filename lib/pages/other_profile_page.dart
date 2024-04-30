import 'package:flutter/material.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/model/user_profile_model.dart';
import 'package:woofers/pages/edit_my_profile_page.dart';
import 'package:woofers/pages/login_page.dart';
// import 'package:woofers/interfaces/profile/user_profile_interface.dart';
import 'package:woofers/services/account/user_profile_services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const OtherProfilePage());

class OtherProfilePage extends StatefulWidget {
  const OtherProfilePage({super.key});

  @override
  _OtherProfilePageState createState() => _OtherProfilePageState();
}

class _OtherProfilePageState extends State<OtherProfilePage> { 
  // const OtherProfilePagetate({Key key}) : super(key: key);
  final Future<ResponseUserProfileModel?> _account =
      RetrieveAccountService().retrieveUserData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 10), 
          Expanded(
            child: FutureBuilder(
                future: _account,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: Text("Retrieving your data..."));
                  }
                  if (snapshot.hasError) {
                    return const Center(child: Text("Error"));
                  }
                  if (snapshot.hasData) {
                    return SingleChildScrollView(
                      child: Column(children: [
                        // user profile picture
                        const SizedBox(height: 15),
                        FutureBuilder(
                            future: RetrieveAccountService().retrieveUserData(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Image(
                                  image: AssetImage(
                                      'assets/woofers_icon/profile.jpg'),
                                  width: 150,
                                  height: 150,
                                );
                              }

                              final imageURL = snapshot.data!.image;
                              if (imageURL == null) {
                                return const Image(
                                  image: AssetImage(
                                      'assets/woofers_icon/profileImageTemplate.png'),
                                  width: 150,
                                  height: 150,
                                );
                              }
                              //masi kena disini err
                              return ImageNetwork(
                                  urlImage: imageURL, width: 150, height: 150);
                            }),

                        // username
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            // const Image(
                            //   image:
                            //       AssetImage('assets/woofers_icon/profile.jpg'),
                            //   width: 35,
                            //   height: 35,
                            // ),
                            const Icon(
                              Icons.person_2_outlined,
                              size: 35,
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
                                        // labelText: 'Username',
                                        labelText:
                                            snapshot.data?.username == null
                                                ? ""
                                                : snapshot.data!.username,
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
                                    "full name",
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
                                            snapshot.data?.fullName == null
                                                ? ""
                                                : snapshot.data!.fullName,
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
                            // const Image(
                            //   image:
                            //       AssetImage('assets/woofers_icon/email.png'),
                            //   width: 35,
                            //   height: 35,
                            // ),
                            const Icon(
                              Icons.email_sharp,
                              size: 35,
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
                                    "email",
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
                                        labelText: snapshot.data?.email == null
                                            ? ""
                                            : snapshot.data!.email,
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
                            // const Image(
                            //   image: AssetImage(
                            //       'assets/woofers_icon/province.png'),
                            //   width: 35,
                            //   height: 35,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                  Text(
                                    "province name",
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

                        // phone number
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            // const Image(
                            //   image:
                            //       AssetImage('assets/woofers_icon/phone.png'),
                            //   width: 35,
                            //   height: 35,
                            // ),
                            const Icon(
                              Icons.phone_android_sharp,
                              size: 35,
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
                                    "phone number",
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
                                            snapshot.data?.phoneNumber == null
                                                ? ""
                                                : snapshot.data!.phoneNumber,
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
                      ]),
                    );
                  }

                  return const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // children: ;
                    ),
                  );
                }),
          ),
          const SizedBox(height: 25),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Center(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
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
                            builder: (context) => const EditMyProfile()),
                      );
                    },
                  ),
                  const SizedBox(width: 25),
                  ElevatedButton(
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
                    child: const Text('Logout'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                  ),
                ]),
              )),
        ],
      ),
    );
  }
}
