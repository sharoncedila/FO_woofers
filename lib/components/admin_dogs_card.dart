import 'package:flutter/material.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/model/admin_model.dart';
import 'package:woofers/model/adoption_model.dart';
import 'package:woofers/pages/request_adoption_page.dart';
import 'package:woofers/services/admin_service.dart';

class AdminDogCard extends StatelessWidget {
  final Dog dog;
  const AdminDogCard({
    super.key,
    required this.dog,
  });

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
                  child: (dog.image != null)
                      ? ImageNetwork(
                          urlImage: dog.image,
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
                        dog.dogName ?? "",
                        style: const TextStyle(
                          color: Color.fromRGBO(40, 36, 36, 10000),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 1),
                      Text(
                        dog.dogBreed ?? "",
                        style: const TextStyle(
                          color: Color.fromRGBO(40, 36, 36, 10000),
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 2),
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
                                AdminService.deleteDog(dog.dogId);
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
