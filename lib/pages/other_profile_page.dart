import 'package:flutter/material.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/model/user_profile_model.dart';
import 'package:woofers/pages/chatroom_page.dart';
import 'package:woofers/pages/edit_my_profile_page.dart';
import 'package:woofers/pages/login_page.dart';
// import 'package:woofers/interfaces/profile/user_profile_interface.dart';
import 'package:woofers/services/account/user_profile_services.dart';
import 'package:google_fonts/google_fonts.dart';

// class OtherProfilePage extends StatelessWidget {
//   // const OtherProfilePage({super.key});
//   final String dogId;
//   const DogProfilePage({
//     super.key,
//     required this.dogId,
//   });

//   @override
//   _OtherProfilePageState createState() => _OtherProfilePageState();
// }

class OtherProfilePage extends StatelessWidget {
  final String accountId;
  const OtherProfilePage({
    super.key,
    required this.accountId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 5),
          // IconButton(
          //   // color: Colors.black12,
          //   alignment: Alignment.topLeft,
          //   onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => const ChatroomPage()),
          //       );
          //     },
          //   icon: const Icon(Icons.chat_outlined),
          // ),
          Expanded(
            child: FutureBuilder(
                future: RetrieveAccountService().viewOtherUserProfile(accountId),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: Text("Retrieving your data..."));
                  }
                  if (snapshot.hasError) {
                    return const Center(child: Text("Error"));
                  }
                  if (snapshot.hasData) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          // user profile picture
                          // const SizedBox(height: 15),
                          FutureBuilder(
                              future: RetrieveAccountService().viewOtherUserProfile(accountId),
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

            const SizedBox(height: 50),
            SizedBox(
              width: 200,
              height: 45,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
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
                child: Text(
                  'CONTACT ME',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatroomPageDetail(recipientId: accountId),
                  ));
                },
              ),
            ),

                        ]
                        
                        ),
                      );
                    }

                  //   TextButton(
                  //   child: const Text(
                  //     'Contact Me',
                  //     style: TextStyle(
                  //       color: Colors.blue,
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //   ),
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => const ChatroomPage()),
                  //     );
                  //   }
                  // );

                    return const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // children: ;
                      ),
                    );
                }),
          ),
        ],
      ),
    );
  }
}
