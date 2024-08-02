import 'package:flutter/material.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/components/other_profile_page_template.dart';
import 'package:woofers/model/admin_model.dart';
import 'package:woofers/model/feeds_model.dart';
import 'package:woofers/services/admin_service.dart';

class AdminAccountsCard extends StatelessWidget {
  final ShowAccountsResponse account;

  const AdminAccountsCard({
    //Key? key, required this.feed}) : super(key: key);
    super.key,
    required this.account,
  });

  // @override
  // _AdminFeedsCardState createState() => _AdminFeedsCardState();
//}

//class _AdminFeedsCardState extends State<AdminFeedsCard> {
  // String? feedsId;
  // String? imageURL;
  // String? isLike;
  // int? feedLikeCount;

  // @override
  // void initState() {
  //   super.initState();
  //   isLike = widget.feed.isLike;
  //   ViewFeedsResponse feedsDetail = widget.feedsDetail;
  //   feedLikeCount = int.tryParse(feedsDetail.likesCount ?? "0");
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Card(
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: const Color.fromARGB(200, 255, 255, 255),
        child: InkWell(
          // onTap: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) =>
          //           RequestAdoptionPage(dogId: adoptionDetail.dogId),
          //     ),
          //   );
          // },
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2.3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  child: (account.image != null)
                      ? ImageNetwork(
                          urlImage: account.image,
                          width: double.infinity,
                          height: 150,
                        )
                      : const Image(
                          image: AssetImage('assets/woofers_icon/profile.jpg'),
                        ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Text(
                        account.username ?? "",
                        style: const TextStyle(
                          color: Color.fromRGBO(40, 36, 36, 10000),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 1),
                      // Text(
                      //   dog.dogBreed ?? "",
                      //   style: const TextStyle(
                      //     color: Color.fromRGBO(40, 36, 36, 10000),
                      //     fontSize: 12,
                      //   ),
                      //   textAlign: TextAlign.center,
                      // ),
                      // const SizedBox(height: 2),
                      /*
                      Text(
                        "${adoptionDetail.age} years old",
                        style: const TextStyle(
                          color: Color.fromRGBO(40, 36, 36, 10000),
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      */
                      SizedBox(
                        height: 30,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.red,
                              fixedSize: const Size(150, 10)),
                          onPressed: () async {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Confirmation'),
                                  content: const Text(
                                      'Are you sure want to delete this dog?'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(false);
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
                                // buat delete tpi ga ada logicnya haha
                                /*
                            DogService()
                                .deleteDog(dogProfile.dogId);
                            */
                                AdminService.deleteAccount(account.accountId ?? '');
                              }
                            });
                          },
                          child: const Text(
                            "DELETE",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}









































// import 'package:flutter/material.dart';
// import 'package:woofers/components/image_network.dart';
// import 'package:woofers/model/account_model.dart';
// import 'package:woofers/model/admin_model.dart';
// import 'package:woofers/model/dog_model.dart';
// import 'package:woofers/pages/request_adoption_page.dart';

// class AdminUsersCard extends StatelessWidget {
//   final Account user;
//   const AdminUsersCard({
//     super.key,
//     required this.user,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//       child: Card(
//         shadowColor: Colors.black,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20.0),
//         ),
//         color: const Color.fromARGB(200, 255, 255, 255),
//         child: InkWell(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) =>
//                     RequestAdoptionPage(dogId: dogProfile.dogId),
//               ),
//             );
//           },
//           child: SizedBox(
//             width: MediaQuery.of(context).size.width / 2.3,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 ClipRRect(
//                   borderRadius: const BorderRadius.only(
//                     topRight: Radius.circular(20),
//                     topLeft: Radius.circular(20),
//                   ),
//                   child: (dogProfile.image != null)
//                       ? ImageNetwork(
//                           urlImage: dogProfile.image,
//                           width: double.infinity,
//                           height: 150,
//                         )
//                       : const Image(
//                           image: AssetImage('assets/woofers_icon/profile.jpg'),
//                         ),
//                 ),
//                 const SizedBox(height: 5),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                   child: Column(
//                     children: [
//                       Text(
//                         dogProfile.dogName ?? "",
//                         style: const TextStyle(
//                           color: Color.fromRGBO(40, 36, 36, 10000),
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                       const SizedBox(height: 1),
//                       // Text(
//                       //   dogProfile.breedName ?? "",
//                       //   style: const TextStyle(
//                       //     color: Color.fromRGBO(40, 36, 36, 10000),
//                       //     fontSize: 12,
//                       //   ),
//                       //   textAlign: TextAlign.center,
//                       // ),
//                       const SizedBox(height: 2),
//                       /*
//                       Text(
//                         "${dogProfile.age} years old",
//                         style: const TextStyle(
//                           color: Color.fromRGBO(40, 36, 36, 10000),
//                           fontSize: 12,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                       */
//                       SizedBox(
//                         height: 30,
//                         child: TextButton(
//                           style: TextButton.styleFrom(
//                               backgroundColor: Colors.red,
//                               fixedSize: const Size(150, 10)),
//                           onPressed: () async {
//                             showDialog(
//                               context: context,
//                               builder: (BuildContext context) {
//                                 return AlertDialog(
//                                   title: const Text('Confirmation'),
//                                   content: const Text(
//                                       'Are you sure want to delete this dog?'),
//                                   actions: <Widget>[
//                                     TextButton(
//                                       onPressed: () {
//                                         Navigator.of(context).pop(false);
//                                       },
//                                       child: const Text('No'),
//                                     ),
//                                     TextButton(
//                                       onPressed: () {
//                                         Navigator.of(context).pop(true);
//                                       },
//                                       child: const Text('Yes'),
//                                     ),
//                                   ],
//                                 );
//                               },
//                             ).then((value) {
//                               // yess
//                               if (value != null && value) {
//                                 // buat delete tpi ga ada logicnya haha
//                                 /*
//                             DogService()
//                                 .deleteDog(dogProfile.dogId);
//                             */
//                               }
//                             });
//                           },
//                           child: const Text(
//                             "DELETE",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 13,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 10),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }





// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/widgets.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:woofers/components/image_network.dart';
// // import 'package:woofers/model/dog_model.dart';
// // import 'package:woofers/pages/dog_profile_page.dart';
// // import 'package:woofers/pages/edit_dog_page.dart';
// // import 'package:woofers/services/dog_services.dart';

// // class AdminUsersCard extends StatelessWidget {
// //   final ResponseDogCard dogProfile;
// //   const AdminUsersCard({
// //     super.key,
// //     required this.dogProfile,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
// //       child: Card(
// //           shape: RoundedRectangleBorder(
// //             borderRadius: BorderRadius.circular(20.0),
// //           ),
// //           color: const Color.fromRGBO(160, 220, 220, 10),
// //           child: InkWell(
// //               onTap: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(
// //                       builder: (context) =>
// //                           DogProfilePage(dogId: dogProfile.dogId)),
// //                 );
// //               },
// //               child: SizedBox(
// //                   width: MediaQuery.of(context).size.width,
// //                   height: 150,
// //                   child: Center(
// //                     child: Row(
// //                       children: [
// //                         const SizedBox(
// //                           width: 20,
// //                         ),
// //                         // image
// //                         (dogProfile.image != null)
// //                             ? ImageNetwork(
// //                                 urlImage: dogProfile.image,
// //                                 width: 135,
// //                                 height: 135,
// //                               )
// //                             : const Image(
// //                                 image: AssetImage(
// //                                     'assets/woofers_icon/profile.jpg')),
// //                         const SizedBox(
// //                           width: 15,
// //                         ),
// //                         Column(
// //                           crossAxisAlignment: CrossAxisAlignment.start,
// //                           mainAxisAlignment: MainAxisAlignment.center,
// //                           children: [
// //                             Text(
// //                               dogProfile.dogName,
// //                               textAlign: TextAlign.left,
// //                               style: GoogleFonts.lora(
// //                                 fontSize: 17,
// //                                 fontWeight: FontWeight.bold,
// //                                 color: const Color.fromRGBO(40, 36, 36, 10000),
// //                               ),
// //                             ),
// //                             // breed
// //                             Text(
// //                               dogProfile.breedName ?? '',
// //                               textAlign: TextAlign.left,
// //                               style: GoogleFonts.lora(
// //                                 fontSize: 15,
// //                                 color: const Color.fromRGBO(40, 36, 36, 10000),
// //                               ),
// //                             ),
// //                             // age
// //                             Row(
// //                               children: [
// //                                 Text(
// //                                   dogProfile.age ?? '',
// //                                   textAlign: TextAlign.left,
// //                                   style: GoogleFonts.lora(
// //                                     fontSize: 15,
// //                                     color:
// //                                         const Color.fromRGBO(40, 36, 36, 10000),
// //                                   ),
// //                                 ),
// //                                 Text(
// //                                   ' years old',
// //                                   textAlign: TextAlign.left,
// //                                   style: GoogleFonts.lora(
// //                                     fontSize: 15,
// //                                     color:
// //                                         const Color.fromRGBO(40, 36, 36, 10000),
// //                                   ),
// //                                 ),
// //                               ],
// //                             ),
// //                             const SizedBox(
// //                               height: 10,
// //                             ),
// //                             Row(
// //                               children: [
// //                                 // edit button
// //                                 SizedBox(
// //                                   child: TextButton(
// //                                     style: TextButton.styleFrom(
// //                                       backgroundColor: Colors.white,
// //                                       fixedSize: const Size(75, 10),
// //                                     ),
// //                                     onPressed: () {
// //                                       Navigator.push(
// //                                         context,
// //                                         MaterialPageRoute(
// //                                             builder: (context) => EditDogPage(
// //                                                 dogId: dogProfile.dogId)),
// //                                       );
// //                                     },
// //                                     child: const Text(
// //                                       "Edit",
// //                                       style: TextStyle(
// //                                         color: Colors.black,
// //                                         fontSize: 13,
// //                                       ),
// //                                     ),
// //                                   ),
// //                                 ),
// //                                 const SizedBox(
// //                                   width: 15,
// //                                 ),
// //                                 // delete button
// //                                 SizedBox(
// //                                   height: 45,
// //                                   child: TextButton(
// //                                     style: TextButton.styleFrom(
// //                                         backgroundColor: Colors.red,
// //                                         fixedSize: const Size(75, 10)),
// //                                     onPressed: () async {
// //                                       showDialog(
// //                                         context: context,
// //                                         builder: (BuildContext context) {
// //                                           return AlertDialog(
// //                                             title: const Text('Confirmation'),
// //                                             content: const Text(
// //                                                 'Are you sure want to delete this dog?'),
// //                                             actions: <Widget>[
// //                                               TextButton(
// //                                                 onPressed: () {
// //                                                   Navigator.of(context)
// //                                                       .pop(false);
// //                                                 },
// //                                                 child: const Text('No'),
// //                                               ),
// //                                               TextButton(
// //                                                 onPressed: () {
// //                                                   Navigator.of(context)
// //                                                       .pop(true);
// //                                                 },
// //                                                 child: const Text('Yes'),
// //                                               ),
// //                                             ],
// //                                           );
// //                                         },
// //                                       ).then((value) {
// //                                         // yess
// //                                         if (value != null && value) {
// //                                           DogService()
// //                                               .deleteDog(dogProfile.dogId);
// //                                         }
// //                                       });
// //                                     },
// //                                     child: const Text(
// //                                       "Delete",
// //                                       style: TextStyle(
// //                                         color: Colors.white,
// //                                         fontSize: 13,
// //                                       ),
// //                                     ),
// //                                   ),
// //                                 ),
// //                               ],
// //                             )
// //                           ],
// //                         ),
// //                       ],
// //                     ),
// //                   )))),
// //     );
// //   }
// // }
