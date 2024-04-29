import 'package:flutter/material.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/model/dog_profile_model.dart';
import 'package:woofers/pages/dog_profile_page.dart';
import 'package:woofers/pages/user_profile_page.dart';

// /// Flutter code sample for [Card].

class MyDogCard extends StatelessWidget {
  final ResponseDogProfileModel dogProfile;
  const MyDogCard({
    super.key,
    required this.dogProfile,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Card(
          // elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: Colors.black,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DogProfilePage(dogId: dogProfile.dogId)),
              );
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Row(
                children: [
                  ImageNetwork(urlImage: dogProfile.image, width: 150, height: 150),
                  Column(
                    children: [
                      Text(dogProfile.dogName),
                      Text(dogProfile.breedName ?? ''),
                      Text(dogProfile.dateOfBirth ?? ''),
                    ],
                  ),
                  Column(
                    children: [
                        Expanded(
                            child: TextButton(
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
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: TextButton(
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
                          ),
                    ],
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
            )
          )
        ),
      );
    // );

  }
}
