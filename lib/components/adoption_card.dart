import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:woofers/model/adoption_model.dart';
import 'package:woofers/pages/dog_profile_page.dart';
=======
import 'package:woofers/components/image_network.dart';
import 'package:woofers/model/adoption_model.dart';
import 'package:woofers/pages/user_profile_page.dart';
>>>>>>> SYE_20240425

class DogCardDetail extends StatelessWidget {
  final AdoptionDetail adoptionDetail;
  const DogCardDetail({
    super.key,
    required this.adoptionDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
<<<<<<< HEAD
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Card(
          /* child: Hero(
            tag: adoptionDetail.dogName ?? '',
            child: Material(
              child: InkWell(onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DogProfilePage()),
              );
              },
              child : GridTile(
                footer: Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Text(adoptionDetail.dogName ?? ''),
                  ),
                ),
                child: Image.asset(
                      'assets/dog_picture/dog1.jpg',
                      fit: BoxFit.cover,
                )
              ),
            ),
          ),*/
          // elevation: 12,
=======
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Card(
          shadowColor: Colors.black,
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
                      builder: (context) => const DogProfilePage()),
                );
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                height: 250,
=======
                      builder: (context) => const UserProfilePage()),
                );
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2.3,
                height: 200,
>>>>>>> SYE_20240425
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
<<<<<<< HEAD
                      child: Image.asset(
                        'assets/dog_picture/dog1.jpg',
                        height: 150,
                        fit: BoxFit.cover,
                        width: double.infinity,
=======
                      child: ImageNetwork(
                          urlImage: adoptionDetail.image,
                          width: double.infinity,
                          height: 150
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      adoptionDetail.dogName ?? "",
                      style: const TextStyle(
                        color: Color.fromRGBO(40, 36, 36, 10000),
                        fontSize: 17,
>>>>>>> SYE_20240425
                      ),
                    ),
<<<<<<< HEAD
                    ListTile(
                      title: Text(
                        adoptionDetail.dogName ?? '',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
=======
                    const SizedBox(
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 1, vertical: 1),
>>>>>>> SYE_20240425
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
<<<<<<< HEAD
                            adoptionDetail.breedName ?? '',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              // fontWeight: FontWeight.w300,
=======
                            adoptionDetail.breedName ?? "",
                            style: const TextStyle(
                              color: Color.fromRGBO(40, 36, 36, 10000),
                              fontSize: 14,
>>>>>>> SYE_20240425
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
<<<<<<< HEAD
                            adoptionDetail.age ?? '',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              // fontWeight: FontWeight.w300,
=======
                            "${adoptionDetail.age} y.o",
                            style: const TextStyle(
                              color: Color.fromRGBO(40, 36, 36, 10000),
                              fontSize: 14,
>>>>>>> SYE_20240425
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
<<<<<<< HEAD
              )),
        ));
=======
              ))),
    );
>>>>>>> SYE_20240425
  }
}

/*
Widget build(BuildContext context){
  return Card(
    child : Hero(
      tag : prod_name,
      child: Material(
        child:InkWell(onTap: (){}),
        child:GridTile(
          footer: Container(
            color : Colors.white,
            child : ListTile(
              leading : Text (prod_name)
            ),
          ),
          child : Image.asset(prod_picture,
          fit : BoxFit.cover,)),
        ),
      ),
    ),
  );
}

 */
