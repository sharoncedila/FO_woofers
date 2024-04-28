import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woofers/pages/edit_my_dog.dart';

class DogProfilePage extends StatelessWidget {
  const DogProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
              // logo
              Image.asset(
                'assets/dog_picture/dog1.jpg',
                width: 100,
                height: 100,
              ),

              const SizedBox(height: 10),
              // WOOFERS
              const Text(
                'Dog1',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              const DogProfileDetail(),
              ],
            ),
          )
        ),
      ),
    );
  }
}

class DogProfileDetail extends StatelessWidget {
  const DogProfileDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column( 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // dog name
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            const Image(
              image: AssetImage('assets/woofers_icon/profile.jpg'),
              width: 35,
              height: 35,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "name",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    child: TextFormField(
                      readOnly: true,
                      enabled: false,
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        labelText: 'Nama Ashu',
                        // hintText: snapshot.data!.username,
                        labelStyle: GoogleFonts.newsCycle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ]
              )
            )
          ],
        ),

        // dog breed
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            const Image(
              image: AssetImage('assets/woofers_icon/profile.jpg'),
              width: 35,
              height: 35,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "breed",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    child: TextFormField(
                      readOnly: true,
                      enabled: false,
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        labelText: 'Dog Breed',
                        // hintText: snapshot.data!.username,
                        labelStyle: GoogleFonts.newsCycle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ]
              )
            )
          ],
        ),

        // dog birth of date
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            const Image(
              image: AssetImage('assets/woofers_icon/profile.jpg'),
              width: 35,
              height: 35,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "date of birth",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    child: TextFormField(
                      readOnly: true,
                      enabled: false,
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        labelText: 'Date of Birth',
                        // hintText: snapshot.data!.username,
                        labelStyle: GoogleFonts.newsCycle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ]
              )
            )
          ],
        ),

        // dog gender
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            const Image(
              image: AssetImage('assets/woofers_icon/profile.jpg'),
              width: 35,
              height: 35,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "gender",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    child: TextFormField(
                      readOnly: true,
                      enabled: false,
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        labelText: 'Gender',
                        // hintText: snapshot.data!.username,
                        labelStyle: GoogleFonts.newsCycle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ]
              )
            )
          ],
        ),

        // dog province
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            const Image(
              image: AssetImage('assets/woofers_icon/profile.jpg'),
              width: 35,
              height: 35,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "province",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    child: TextFormField(
                      readOnly: true,
                      enabled: false,
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        labelText: 'Province',
                        // hintText: snapshot.data!.username,
                        labelStyle: GoogleFonts.newsCycle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ]
              )
            )
          ],
        ),

        // dog vaccination list
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            const Image(
              image: AssetImage('assets/woofers_icon/profile.jpg'),
              width: 35,
              height: 35,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "vaccine",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    child: TextFormField(
                      readOnly: true,
                      enabled: false,
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        labelText: 'Rabies Vaccine, Canine Distemper Vaccine, Canine Parvovirus Vaccine, Canine Adenovirus Type 1 and Type 2 (CAV-1 and CAV-2) Vaccine',
                        // hintText: snapshot.data!.username,
                        labelStyle: GoogleFonts.newsCycle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ]
              )
            )
          ],
        ),

        // dog description
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            const Image(
              image: AssetImage('assets/woofers_icon/profile.jpg'),
              width: 35,
              height: 35,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "description",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    child: TextFormField(
                      readOnly: true,
                      enabled: false,
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        labelText: 'dog description',
                        // hintText: snapshot.data!.username,
                        labelStyle: GoogleFonts.newsCycle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ]
              )
            )
          ],
        ),


        const SizedBox(height: 50),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.1,
          height: 45,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Theme.of(context).colorScheme.primary.withOpacity(0.5);
                  }
                  return null; // Use the component's default.
                },
              ),
            ),
          child: const Text('Edit'),
          onPressed: () async {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EditMyDog()),
            );
          },
        ),
      ),


      /* unused
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: TextFormField(
            readOnly: true,
            enabled: false,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Name',
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: TextFormField(
            readOnly: true,
            enabled: false,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Breed',
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: TextFormField(
            readOnly: true,
            enabled: false,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Date of Birth',
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: TextFormField(
            readOnly: true,
            enabled: false,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Province',
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: TextFormField(
            readOnly: true,
            enabled: false,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Vaccine',
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: TextFormField(
            readOnly: true,
            enabled: false,
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
              // fillColor: Colors.grey.shade200,
              // filled: true,
              hintText: 'Description',
              hintStyle: TextStyle(color: Colors.black),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your description';
              }
              return null;
            },
          ),
        ),
        const SizedBox(height: 50),
        SizedBox(
            width: 200,
            height: 45,
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Theme.of(context).colorScheme.primary.withOpacity(0.5);
                        }
                        return null; // Use the component's default.
                      },
                    ),
                  ),
                child: const Text('Logout'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
              ),
            ),

        child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.5);
                    }
                    return null; // Use the component's default.
                  },
                ),
              ),
              child: const Text('Edit'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EditMyDog()),
                );
              },
            ),
          ]
        )
      ),
        */



      ],
    );
  }
}
