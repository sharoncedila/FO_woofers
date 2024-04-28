import 'package:flutter/material.dart';
import 'package:woofers/model/adoption_model.dart';
import 'package:woofers/pages/dog_profile_page.dart';

class DogCardDetail extends StatelessWidget {
  final AdoptionDetail adoptionDetail;
  const DogCardDetail({
    super.key,
    required this.adoptionDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: Colors.black,
          child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DogProfilePage()),
                );
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                height: 250,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/dog_picture/dog1.jpg',
                        height: 150,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            adoptionDetail.breedName ?? '',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              // fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            adoptionDetail.age ?? '',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              // fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ));
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
