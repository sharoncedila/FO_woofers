import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/model/dog_profile_model.dart';
import 'package:woofers/pages/dog_profile_page.dart';
import 'package:woofers/pages/other_dog_profile_page.dart';

class OtherDogCard extends StatelessWidget {
  final ResponseDogCard dogProfile;
  const OtherDogCard({
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
                      OtherDogProfilePage(dogId: dogProfile.dogId)),
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
                        ImageNetwork(
                          urlImage: dogProfile.image, width: 135, height: 135),
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
                                    color: const Color.fromRGBO(40,36,36,10000),
                                  ),
                                ),
                                // breed
                                Text(
                                  dogProfile.breedName ?? '',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.lora(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.bold,
                                    color: const Color.fromRGBO(40,36,36,10000),
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
                                        color: const Color.fromRGBO(40,36,36,10000),
                                      ),
                                    ),
                                    Text(
                                      ' years old',
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.lora(
                                        fontSize: 15,
                                        // fontWeight: FontWeight.bold,
                                        color: const Color.fromRGBO(40,36,36,10000),
                                      ),
                                    ),
                                  ],
                                ),
                              // ],
                            // ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )))),
    );
    // );
  }
}
