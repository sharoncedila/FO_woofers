import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:woofers/components/image_network.dart';
import 'package:woofers/model/dog_profile_model.dart';
import 'package:woofers/pages/dog_profile_page.dart';

// /// Flutter code sample for [Card].
=======
import 'package:google_fonts/google_fonts.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/model/dog_profile_model.dart';
import 'package:woofers/pages/dog_profile_page.dart';
>>>>>>> SYE_20240425

class MyDogCard extends StatelessWidget {
  final ResponseDogCard dogProfile;
  const MyDogCard({
    super.key,
    required this.dogProfile,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Card(
<<<<<<< HEAD
          // elevation: 12,
=======
>>>>>>> SYE_20240425
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: const Color.fromRGBO(160, 220, 220, 10),
          child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
<<<<<<< HEAD
                      builder: (context) =>
                          DogProfilePage(dogId: dogProfile.dogId)),
                );
              },
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Row(
                    children: [
                      ImageNetwork(
                          urlImage: dogProfile.image, width: 150, height: 150),
                      Column(
                        children: [
                          Text(dogProfile.dogName),
                          Text(dogProfile.breedName ?? ''),
                          Text(dogProfile.dateOfBirth ?? ''),
                        ],
                      ),
                      Column(
=======
                    builder: (context) =>
                      DogProfilePage(dogId: dogProfile.dogId)),
                );
              },
              child: SizedBox(
                
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      ImageNetwork(
                        urlImage: dogProfile.image, width: 150, height: 150),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
>>>>>>> SYE_20240425
                        children: [
                          Column(
                            children: [
                              Text(
                                dogProfile.dogName,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.lora(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromRGBO(40,36,36,10000),
                                ),
                              ),
                              Text(
                                dogProfile.breedName ?? '',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.lora(
                                  fontSize: 13,
                                  // fontWeight: FontWeight.bold,
                                  color: const Color.fromRGBO(40,36,36,10000),
                                ),
                              ),
                              Text(
                                dogProfile.age ?? '',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.lora(
                                  fontSize: 13,
                                  // fontWeight: FontWeight.bold,
                                  color: const Color.fromRGBO(40,36,36,10000),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.white),
                                onPressed: () {},
                                child: const Text(
                                  "Edit",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    // fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.red),
                                onPressed: () {},
                                child: const Text(
                                  "Delete",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    // fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
<<<<<<< HEAD
                      )
                    ],
                  )
                  // Column(
                  //   children: [
                  //     ClipRRect(
                  //       borderRadius: const BorderRadius.only(
                  //         topRight: Radius.circular(20),
                  //         topLeft: Radius.circular(20),
                  //       ),
                  //       child: Image.asset(
                  //         'assets/dog_picture/dog1.jpg',
                  //         height: 150,
                  //         fit: BoxFit.cover,
                  //         width: double.infinity,
                  //       ),
                  //     ),
                  //     ListTile(
                  //       title: Text(
                  //         // 'Melbourne Cricket Stadium',
                  //         dogProfile.dogName ?? '',
                  //         style: const TextStyle(
                  //           color: Colors.white,
                  //         ),
                  //       ),
                  //       subtitle: Row(
                  //         children: [
                  //           Text(
                  //             dogProfile.breedName ?? '',
                  //             style: const TextStyle(
                  //               color: Colors.grey,
                  //             ),
                  //           ),
                  //           Text(
                  //             dogProfile.dateOfBirth ?? '',
                  //             style: const TextStyle(
                  //               color: Colors.grey,
                  //             ),
                  //           ),
                  //         ]
                  //       ),
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  //         child: Row(
                  //           children: [
                  //             Expanded(
                  //               child: TextButton(
                  //                 style: TextButton.styleFrom(
                  //                     backgroundColor: Colors.white),
                  //                 onPressed: () {},
                  //                 child: const Text(
                  //                   "Edit",
                  //                   style: TextStyle(
                  //                     color: Colors.black,
                  //                     fontSize: 12,
                  //                     // fontWeight: FontWeight.w300,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //             const SizedBox(
                  //               width: 5,
                  //             ),
                  //             Expanded(
                  //               child: TextButton(
                  //                 style: TextButton.styleFrom(
                  //                     backgroundColor: Colors.red),
                  //                 onPressed: () {},
                  //                 child: const Text(
                  //                   "Delete",
                  //                   style: TextStyle(
                  //                     color: Colors.white,
                  //                     fontSize: 12,
                  //                     // fontWeight: FontWeight.w300,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //         ),
                  //   ],
                  // ),
                  ))),
=======
                      ),
                    ],
                  )))),
>>>>>>> SYE_20240425
    );
    // );
  }
}
