import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/main.dart';
import 'package:woofers/model/adoption_model.dart';
import 'package:woofers/pages/chatroom_page.dart';
import 'package:woofers/services/adoption_service.dart';

class RequestAdoptionPage extends StatefulWidget {
  final String dogId;
  const RequestAdoptionPage({
    super.key,
    required this.dogId,
  });

  @override
  _RequestAdoptionPageState createState() => _RequestAdoptionPageState();
}

class _RequestAdoptionPageState extends State<RequestAdoptionPage> {
  final _adoptionService = AdoptionService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 75,
        elevation: 0,
        backgroundColor: HexColor("#a0dcdc"),
        title: Text(
          "REQUEST ADOPT",
          style: GoogleFonts.lora(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: const Color.fromRGBO(40, 36, 36, 10000),
          ),
        ),
        actions: <Widget>[
          // IconButton(
          //   icon: const Icon(Icons.notification_add_rounded),
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => const NotificationPage()),
          //     );
          //   },
          // ),
          FutureBuilder(
              future: AdoptionService().retrieveAdoptConfirmation(widget.dogId),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Padding(
                    padding: EdgeInsets.all(160),
                    child: Container(
                      // Center the CircularProgressIndicator
                      alignment: Alignment.center,
                      color: Colors
                          .transparent, // Ensure the container doesn't block interaction with underlying widgets
                      child: const CircularProgressIndicator(),
                    ),
                  );
                }
                if (snapshot.hasError) {
                  return const Center(child: Text("Error"));
                }
                if (!snapshot.hasData) {
                  return const Center(
                      child: Text("no data available for this dog"));
                }
                String? ownerAccountId =
                    snapshot.data?.ownerData!.accountId == null
                        ? ""
                        : snapshot.data!.ownerData!.accountId;

                String? ownerUsername =
                    snapshot.data?.ownerData!.username == null
                        ? ""
                        : snapshot.data!.ownerData!.username;
                return IconButton(
                  icon: const Icon(Icons.chat),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatroomPageDetail(
                              recipientId: ownerAccountId!,
                              username: ownerUsername!)),
                    );
                  },
                );
              }),
        ],
      ),
      body: reqAdoptDetail(),
    );
  }

  Widget reqAdoptDetail() {
    return SingleChildScrollView(
      child: Container(
        child: FutureBuilder(
            future: AdoptionService().retrieveAdoptConfirmation(widget.dogId),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Padding(
                  padding: EdgeInsets.all(160),
                  child: Container(
                    // Center the CircularProgressIndicator
                    alignment: Alignment.center,
                    color: Colors
                        .transparent, // Ensure the container doesn't block interaction with underlying widgets
                    child: const CircularProgressIndicator(),
                  ),
                );
              }
              if (snapshot.hasError) {
                return const Center(child: Text("Error"));
              }
              if (!snapshot.hasData) {
                return const Center(
                    child: Text("no data available for this dog"));
              }

              // AdoptConfirmationRequest adoptConfirmData =
              //     snapshot.data as AdoptConfirmationRequest;

              // AdoptConfirmationRequest adoptData =
              // adoptConfirmData.dogData! as AdoptConfirmationRequest;

              final imageURL = snapshot.data?.dogData!.image == null
                  ? ""
                  : snapshot.data!.dogData!.image;

              final imageURL2 = snapshot.data?.ownerData!.image == null
                  ? ""
                  : snapshot.data!.ownerData!.image;

              return Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Text('Dog Information',
                        style: GoogleFonts.lora(fontSize: 20)),
                  ]),

                  const SizedBox(
                    height: 30,
                  ),
                  ImageNetwork(urlImage: imageURL, width: 150, height: 150),
                  const SizedBox(
                    height: 30,
                  ),
                  // dog name
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
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
                                        labelText: snapshot
                                                    .data?.dogData!.dogName ==
                                                null
                                            ? ""
                                            : snapshot.data!.dogData!.dogName,
                                        labelStyle: GoogleFonts.newsCycle(
                                          color: Colors.black,
                                        )))),
                          ]))
                    ],
                  ),

                  // dog breed
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
                                  labelText:
                                      snapshot.data?.dogData!.breedName == null
                                          ? ""
                                          : snapshot.data!.dogData!.breedName,
                                  labelStyle: GoogleFonts.newsCycle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            // ),
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
                                  labelText:
                                      snapshot.data?.dogData!.dateOfBirth ==
                                              null
                                          ? ""
                                          : snapshot.data!.dogData!.dateOfBirth,
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
                                  labelText: snapshot.data?.dogData!.gender ==
                                          null
                                      ? ""
                                      : snapshot.data!.dogData!.gender == 'M'
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
                                  labelText: snapshot
                                              .data?.dogData!.provinceName ==
                                          null
                                      ? ""
                                      : snapshot.data!.dogData!.provinceName,
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
                                  labelText:
                                      snapshot.data?.dogData!.vaccination ==
                                              null
                                          ? ""
                                          : snapshot.data!.dogData!.vaccination,
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
                                  labelText:
                                      snapshot.data?.dogData!.description ==
                                              null
                                          ? ""
                                          : snapshot.data!.dogData!.description,
                                  labelStyle: GoogleFonts.newsCycle(
                                    color: Colors.black,
                                  ),
                                ),
                                //maxLines: null,
                              ),
                            ),
                          ])),
                    ],
                  ),

                  Divider(
                    color: Colors.grey.shade800, //HexColor("#a0dcdc"),
                    thickness: 1.5,
                    height:
                        100.0, // Optional, specify the height of the divider
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Text('Owner Information',
                        style: GoogleFonts.lora(fontSize: 20)),
                  ]),
                  const SizedBox(
                    height: 30,
                  ),
                  ImageNetwork(urlImage: imageURL2, width: 150, height: 150),

                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
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
                                // labelText: 'Username',
                                labelText:
                                    snapshot.data?.ownerData!.username == null
                                        ? ""
                                        : snapshot.data!.ownerData!.username,
                                labelStyle: GoogleFonts.newsCycle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
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
                            "fullname",
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
                                    snapshot.data?.ownerData!.fullName == null
                                        ? ""
                                        : snapshot.data!.ownerData!.fullName,
                                labelStyle: GoogleFonts.newsCycle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
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
                            "Province",
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
                                labelText: snapshot
                                            .data?.ownerData!.provinceName ==
                                        null
                                    ? ""
                                    : snapshot.data!.ownerData!.provinceName,
                                labelStyle: GoogleFonts.newsCycle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phone Number",
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
                                    snapshot.data?.ownerData!.phoneNumber ==
                                            null
                                        ? ""
                                        : snapshot.data!.ownerData!.phoneNumber,
                                labelStyle: GoogleFonts.newsCycle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  (sharedPreference?.getString("accountId") !=
                          snapshot.data?.ownerData?.accountId)
                      ?
                      // request to adopt button
                      Padding(
                          padding: const EdgeInsets.only(bottom: 50.0, top: 30),
                          child: SizedBox(
                              width: 210,
                              height: 40,
                              child: Expanded(
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.pressed)) {
                                          return Theme.of(context)
                                              .colorScheme
                                              .primary
                                              .withOpacity(0.5);
                                        }
                                        return null; // Use the component's default.
                                      },
                                    ),
                                  ),
                                  child: const Text('REQUEST TO ADOPT',
                                      style: TextStyle(
                                          //color: Colors.grey[600],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                                  onPressed: () async {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text('Confirmation'),
                                          content: const Text(
                                              'Are you sure want to adopt this dog?'),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pop(false);
                                              },
                                              child: const Text('No'),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop(true);
                                              },
                                              child: const Text('Yes'),
                                            ),
                                          ],
                                        );
                                      },
                                    ).then((value) {
                                      // yess
                                      if (value != null && value) {
                                        String? ownerAccountId = snapshot.data
                                                    ?.ownerData!.accountId ==
                                                null
                                            ? ""
                                            : snapshot
                                                .data!.ownerData!.accountId;
                                        String? ownerUsername = snapshot.data
                                                    ?.ownerData!.username ==
                                                null
                                            ? ""
                                            : snapshot
                                                .data!.ownerData!.username;
                                        final SendAdoptionNotification send = SendAdoptionNotification(
                                            dogId: snapshot.data?.dogData!.dogId == null
                                                ? ""
                                                : snapshot.data!.dogData!.dogId,
                                            dogName:
                                                snapshot.data?.dogData!.dogName == null
                                                    ? ""
                                                    : snapshot
                                                        .data!.dogData!.dogName,
                                            breedName:
                                                snapshot.data?.dogData!.breedName ==
                                                        null
                                                    ? ""
                                                    : snapshot.data!.dogData!
                                                        .breedName,
                                            ownerId: snapshot.data?.ownerData!
                                                        .accountId ==
                                                    null
                                                ? ""
                                                : snapshot
                                                    .data!.ownerData!.accountId,
                                            ownerUsername: snapshot.data
                                                        ?.ownerData!.username ==
                                                    null
                                                ? ""
                                                : snapshot
                                                    .data!.ownerData!.username);

                                        _adoptionService
                                            .sendAdoptNotif(send)
                                            .then((value) => Navigator.of(
                                                    context)
                                                .pushReplacement(
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                            ChatroomPageDetail(
                                                              recipientId:
                                                                  ownerAccountId!,
                                                              username:
                                                                  ownerUsername!,
                                                            ))));
                                      }
                                    });
                                  },
                                ),
                              )),
                        )
                      : const SizedBox(),
                ],
              );
              // );
            }),
      ),
    );
  }
}
