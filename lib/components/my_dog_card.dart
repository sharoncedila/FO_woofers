import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/model/dog_profile_model.dart';
import 'package:woofers/pages/dog_profile_page.dart';
import 'package:woofers/pages/edit_dog_page.dart';
import 'package:woofers/services/dog/dog_services.dart';

class MyDogCard extends StatelessWidget {
  final ResponseDogCard dogProfile;
  const MyDogCard({
    super.key,
    required this.dogProfile,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: const Color.fromRGBO(160, 220, 220, 10),
          child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DogProfilePage(dogId: dogProfile.dogId)),
                );
              },
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: Center(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        // image
                        (dogProfile.image != null)
                            ? ImageNetwork(
                                urlImage: dogProfile.image,
                                width: 135,
                                height: 135,
                              )
                            : const Image(
                                image: AssetImage(
                                    'assets/woofers_icon/profile.jpg')),
                        // ImageNetwork(
                        //     urlImage: dogProfile.image,
                        //     width: 135,
                        //     height: 135),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Column(
                            // children: [
                            // name
                            Text(
                              dogProfile.dogName,
                              textAlign: TextAlign.left,
                              style: GoogleFonts.lora(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromRGBO(40, 36, 36, 10000),
                              ),
                            ),
                            // breed
                            Text(
                              dogProfile.breedName ?? '',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.lora(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                                color: const Color.fromRGBO(40, 36, 36, 10000),
                              ),
                            ),
                            // age
                            Row(
                              children: [
                                Text(
                                  dogProfile.age ?? '',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.lora(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromRGBO(40, 36, 36, 10000),
                                  ),
                                ),
                                Text(
                                  ' years old',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.lora(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromRGBO(40, 36, 36, 10000),
                                  ),
                                ),
                              ],
                            ),
                            // ],
                            // ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                // edit button
                                SizedBox(
                                  // height: 45,
                                  // width: 35,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      fixedSize: const Size(75, 10),
                                    ),
                                    /*
                                    onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                          DogProfilePage(dogId: dogProfile.dogId)),
                                    );
                                  },
                                    */
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => EditDogPage(
                                                dogId: dogProfile.dogId)),
                                      );
                                    },
                                    child: const Text(
                                      "Edit",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        // fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                // delete button
                                SizedBox(
                                  height: 45,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.red,
                                        fixedSize: const Size(75, 10)),
                                    // onPressed: () {
                                    //   DogService().deleteDog(dogProfile.dogId);
                                    // },
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
                                                  Navigator.of(context)
                                                      .pop(false);
                                                },
                                                child: const Text('No'),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pop(true);
                                                },
                                                child: const Text('Yes'),
                                              ),
                                            ],
                                          );
                                        },
                                      ).then((value) {
                                        // yess
                                        if (value != null && value) {
                                          DogService()
                                              .deleteDog(dogProfile.dogId);
                                        }
                                        // no
                                        // else {
                                        //   // If 'No' is pressed or the dialog is dismissed
                                        //   // print('User canceled');
                                        //   // Perform the desired action or do nothing
                                        // }
                                      });
                                    },
                                    child: const Text(
                                      "Delete",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        // fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )))),
    );
    // );
  }
}



/*
onPressed: () async {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Confirmation'),
                              content: const Text(
                                  'Are you sure want to log out your account?'),
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
                            _loginService.logout();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()),
                            );
                          }
                          // no
                          // else {
                          //   // If 'No' is pressed or the dialog is dismissed
                          //   // print('User canceled');
                          //   // Perform the desired action or do nothing
                          // }
                        });
                      },
*/