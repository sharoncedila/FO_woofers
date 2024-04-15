import 'package:flutter/material.dart';
import 'package:woofers/pages/login_page.dart';
import 'package:woofers/pages/edit_my_profile_page.dart';

void main() => runApp(const UserProfilePage());

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: ProfilePage(),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
              hintText: 'Username',
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
              hintText: 'Your Name',
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
              hintText: 'Email',
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
              hintText: 'Phone Number',
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
                    MaterialPageRoute(builder: (context) => const EditMyProfile()),
                  );
                },
              ),
              const SizedBox(width: 25),
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
                child: const Text('Logout'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
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