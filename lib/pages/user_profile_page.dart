import 'package:flutter/material.dart';
import 'package:woofers/model/user_profile_model.dart';
import 'package:woofers/pages/edit_my_profile_page.dart';
import 'package:woofers/pages/login_page.dart';
// import 'package:woofers/interfaces/profile/user_profile_interface.dart';
import 'package:woofers/services/account/user_profile_services.dart';

void main() => runApp(const UserProfilePage());

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  // _ContactListWidgetState createState() => _ContactListWidgetState();
  _UserProfilePageState createState() => _UserProfilePageState();
  // Widget build(BuildContext context) {
  //   return const MaterialApp(
  //     home: Scaffold(
  //       body: Center(
  //         child: ProfilePage(accountId),
  //       ),
  //     ),
  //   );
  // }
}

class _UserProfilePageState extends State<UserProfilePage> {
  // const UserProfilePagetate({Key key}) : super(key: key);
  final Future<ResponseUserProfileModel?> _account =
      RetrieveAccountService().retrieveUserData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 10), 
          Expanded(
            child: FutureBuilder(
                future: _account,
                builder: (context, snapshot) {
                  // List<Widget> children;
                  // if (snapshot.hasData) {
                  // children = <Widget>[
                  //   const Icon(
                  //     Icons.check_circle_outline,
                  //     color: Colors.green,
                  //     size: 60,
                  //   ),
                  //   Padding(
                  //     padding: const EdgeInsets.only(top: 16),
                  //     child: Text('Result: ${snapshot.data}'),
                  //   ),
                  // ];

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Container(
                      child: Text("sabar ya"),
                    );
                  }
                  if (snapshot.hasError) {
                    return Container(
                      child: Text("error"),
                    );
                  }
                  if (snapshot.hasData) {
                    return SingleChildScrollView(
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: TextFormField(
                            readOnly: true,
                            enabled: false,
                            decoration: InputDecoration(
                              border: const UnderlineInputBorder(),
                              // hintText : 'Username',
                              hintText: snapshot.data!.username,

                              // hintText: Account.fromJson(snapshot.u),
                              hintStyle: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: TextFormField(
                            readOnly: true,
                            enabled: false,
                            decoration: InputDecoration(
                              border: const UnderlineInputBorder(),
                              // snapshot.data==null? "Username" : snapshot.data.fulName,
                              hintText: snapshot.data?.fullName == null
                                  ? 'Your name'
                                  : snapshot.data!.fullName,
                              // hintText : snapshot.data==null? "Username" : snapshot.data.fulName,
                              hintStyle: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: TextFormField(
                            readOnly: true,
                            enabled: false,
                            decoration: InputDecoration(
                              border: const UnderlineInputBorder(),
                              // hintText: 'Email',
                              hintText: snapshot.data?.email == null
                                  ? 'Your Name'
                                  : snapshot.data!.email,
                              hintStyle: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: TextFormField(
                            readOnly: true,
                            enabled: false,
                            decoration: InputDecoration(
                              border: const UnderlineInputBorder(),
                              // hintText: 'Province',
                              hintText: snapshot.data?.provinceName == null
                                  ? 'Your name'
                                  : snapshot.data!.provinceName,
                              hintStyle: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: TextFormField(
                            readOnly: true,
                            enabled: false,
                            decoration: InputDecoration(
                              border: const UnderlineInputBorder(),
                              // hintText: 'Phone Number',
                              hintText: snapshot.data?.phoneNumber == null
                                  ? 'Your name'
                                  : snapshot.data!.phoneNumber,
                              hintStyle: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            child: TextFormField(
                              readOnly: true,
                              enabled: false,
                              decoration: InputDecoration(
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade400),
                                ),
                                // fillColor: Colors.grey.shade200,
                                // filled: true,
                                // hintText: 'Description',
                                hintText: snapshot.data?.description == null
                                    ? 'Your name'
                                    : snapshot.data!.description,
                                hintStyle: const TextStyle(color: Colors.black),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your description';
                                }
                                return null;
                              },
                            )),
                      ]),
                    );
                  }

                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  //   child: TextFormField(
                  //     readOnly: true,
                  //     enabled: false,
                  //     decoration: InputDecoration(
                  //       border: const UnderlineInputBorder(),
                  //       // hintText : 'Username',
                  //       // hintText : ,
                  //       // hintText: Account.fromJson(snapshot.u),
                  //       hintStyle: const TextStyle(color: Colors.black),
                  //     ),
                  //   ),
                  // );

                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  //   child: TextFormField(
                  //     readOnly: true,
                  //     enabled: false,
                  //     decoration: const InputDecoration(
                  //       border: UnderlineInputBorder(),
                  //       hintText: 'Your Name',
                  //       // hintText : snapshot.data==null? "Username" : snapshot.data.fulName,
                  //       hintStyle: TextStyle(color: Colors.black),
                  //     ),
                  //   ),
                  // );

                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  //   child: TextFormField(
                  //     readOnly: true,
                  //     enabled: false,
                  //     decoration: const InputDecoration(
                  //       border: UnderlineInputBorder(),
                  //       hintText: 'Email',
                  //       // hintText : snapshot.data!.email,
                  //       hintStyle: TextStyle(color: Colors.black),
                  //     ),
                  //   ),
                  // );

                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  //   child: TextFormField(
                  //     readOnly: true,
                  //     enabled: false,
                  //     decoration: const InputDecoration(
                  //       border: UnderlineInputBorder(),
                  //       hintText: 'Province',
                  //       hintStyle: TextStyle(color: Colors.black),
                  //     ),
                  //   ),
                  // );

                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  //   child: TextFormField(
                  //     readOnly: true,
                  //     enabled: false,
                  //     decoration: const InputDecoration(
                  //       border: UnderlineInputBorder(),
                  //       hintText: 'Phone Number',
                  //       hintStyle: TextStyle(color: Colors.black),
                  //     ),
                  //   ),
                  // );

                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  //   child: TextFormField(
                  //     readOnly: true,
                  //     enabled: false,
                  //     decoration: InputDecoration(
                  //       enabledBorder: const OutlineInputBorder(
                  //         borderSide: BorderSide(color: Colors.white),
                  //       ),
                  //       focusedBorder: OutlineInputBorder(
                  //         borderSide: BorderSide(color: Colors.grey.shade400),
                  //       ),
                  //       // fillColor: Colors.grey.shade200,
                  //       // filled: true,
                  //       hintText: 'Description',
                  //       hintStyle: TextStyle(color: Colors.black),
                  //     ),
                  //     validator: (value){
                  //       if (value == null || value.isEmpty) {
                  //         return 'Please enter your description';
                  //       }
                  //       return null;
                  //     },
                  //   )
                  // );
                  // }

                  // handling async
                  // } else if (snapshot.hasError) {
                  //   children = <Widget>[
                  //     const Icon(
                  //       Icons.error_outline,
                  //       color: Colors.red,
                  //       size: 60,
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.only(top: 16),
                  //       child: Text('Error: ${snapshot.error}'),
                  //     ),
                  //   ];
                  // } else {
                  //   children = const <Widget>[
                  //     SizedBox(
                  //       width: 60,
                  //       height: 60,
                  //       child: CircularProgressIndicator(),
                  //     ),
                  //     Padding(
                  //       padding: EdgeInsets.only(top: 16),
                  //       child: Text('Awaiting result...'),
                  //     ),
                  //   ];
                  // }

                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // children: ;
                    ),
                  );
                }),
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
                    MaterialPageRoute(
                        builder: (context) => const EditMyProfile()),
                  );
                },
              ),
              const SizedBox(width: 25),
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
                child: const Text('Logout'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
              ),
            ]),
          )),

          // const Expanded(child: BottomMenu()),
        ],
      ),
    );
  }
}


/*
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
*/