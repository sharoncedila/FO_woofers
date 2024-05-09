import 'package:flutter/material.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/model/adoption_model.dart';
import 'package:woofers/pages/request_adoption_page.dart';

class AdoptionCardDetail extends StatelessWidget {
  final AdoptionDetail adoptionDetail;
  const AdoptionCardDetail({
    super.key,
    required this.adoptionDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Card(
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            // bo
          ),
          
          // color: const Color.fromRGBO(160, 220, 220, 10),
          color: const Color.fromARGB(200, 255, 255, 255),
          child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          RequestAdoptionPage(dogId: adoptionDetail.dogId)),
                  //builder: (context) => const FeedsPage(),
                );
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2.3,
                height: 215,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      child: (adoptionDetail.image != null)
                          ? ImageNetwork(
                              urlImage: adoptionDetail.image,
                              width: double.infinity,
                              height: 150,
                            )
                          : const Image(
                              image: AssetImage(
                                  'assets/woofers_icon/profile.jpg')),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      adoptionDetail.dogName ?? "",
                      style: const TextStyle(
                          color: Color.fromRGBO(40, 36, 36, 10000),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Text(
                      adoptionDetail.breedName ?? "",
                      style: const TextStyle(
                          color: Color.fromRGBO(40, 36, 36, 10000),
                          fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "${adoptionDetail.age} years old",
                      style: const TextStyle(
                        color: Color.fromRGBO(40, 36, 36, 10000),
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ))),
    );
  }
}
