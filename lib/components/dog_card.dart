import 'package:flutter/material.dart';
import 'package:woofers/pages/dog_profile_page.dart';

/// Flutter code sample for [Card].

void main() => runApp(const DogCard());

class DogCard extends StatelessWidget {
  const DogCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: DogCardDetail(),
      ),
    );
  }
}

class DogCardDetail extends StatelessWidget {
  const DogCardDetail({super.key});

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
                MaterialPageRoute(builder: (context) => const DogProfilePage()),
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
                  const ListTile(
                    title: Text(
                      'Nama Anjeng',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "breed",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            // fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(width: 15,),
                        const Text(
                          "age",
                          style: TextStyle(
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
            )
          )
        ),
      );
    // );

  }
}
