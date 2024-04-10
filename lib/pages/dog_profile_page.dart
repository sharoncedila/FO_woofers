// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// void main() {
//   runApp(const CupertinoApp(
//     home: SecondRoute(),
//   ));
// }

// // class FirstRoute extends StatelessWidget {
// //   const FirstRoute({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return CupertinoPageScaffold(
// //       navigationBar: const CupertinoNavigationBar(
// //         middle: Text('First Route'),
// //       ),
// //       child: Center(
// //         child: CupertinoButton(
// //           child: const Text('Open route'),
// //           onPressed: () {
// //             Navigator.push(
// //               context,
// //               CupertinoPageRoute(builder: (context) => const SecondRoute()),
// //             );
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }

// class SecondRoute extends StatelessWidget {
//   const SecondRoute({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: const CupertinoNavigationBar(
//         middle: Text('Second Route'),
//       ),
//       child: Center(
//         child: CupertinoButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:woofers/pages/edit_my_dog.dart';
import 'package:woofers/pages/login_page.dart';
import 'package:email_validator/email_validator.dart';
import 'package:woofers/pages/edit_my_profile_page.dart';

class DogProfilePage extends StatelessWidget {
  const DogProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
              // logo
              Image.asset(
                'assets/dog_picture/dog1.jpg',
                width: 100, height: 100,
              ),

              const SizedBox(height: 10),
              // WOOFERS
              Text(
                'Dog1',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'San Francisco'
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
        const SizedBox(height: 10),
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
            validator: (value){
              if (value == null || value.isEmpty) {
                return 'Please enter your description';
              }
              return null;
            },
          ),
        ),

        const SizedBox(height: 50),
        SizedBox(
          // width: 200,
          // height: 45,
        //   child: Center(
        //     child: ElevatedButton(
        //       style: ButtonStyle(
        //         backgroundColor: MaterialStateProperty.resolveWith<Color?>(
        //           (Set<MaterialState> states) {
        //             if (states.contains(MaterialState.pressed)) {
        //               return Theme.of(context).colorScheme.primary.withOpacity(0.5);
        //             }
        //             return null; // Use the component's default.
        //           },
        //         ),
        //       ),
        //     child: const Text('Logout'),
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => const LoginPage()),
        //       );
        //     },
        //   ),
        // ),



        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
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
                child: const Text('Edit'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EditMyDog()),
                  );
                },
              ),
            ]
          ),
        )
      ),


      ],
    );
  }
}