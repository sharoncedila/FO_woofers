import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/components/bottom_menu.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/model/account_model.dart';
import 'package:woofers/model/user_profile_model.dart';
import 'package:woofers/services/account/account_service.dart';
import 'package:woofers/services/account/user_profile_services.dart';
import 'package:woofers/services/province/province_service.dart';

class EditMyProfile extends StatefulWidget {
  const EditMyProfile({super.key});

  @override
  _EditMyProfilePageState createState() => _EditMyProfilePageState();
}

class _EditMyProfilePageState extends State<EditMyProfile> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? email;
  final _fullnameController = TextEditingController();
  final _provinceController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _accountService = AccountService();
  String? _selectedProvince;

  late List<String?> provinceNames;

  final Future<ResponseUserProfileModel?> _account =
      RetrieveAccountService().retrieveUserData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 75,
        centerTitle: true,
        elevation: 0,
        backgroundColor: HexColor("#a0dcdc"),
        title: Text(
          "EDIT MY PROFILE",
          style: GoogleFonts.lora(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: const Color.fromRGBO(40, 36, 36, 10000),
          ),
        ),
      ),
      body: editMyProfile(),
    );
  }

  Widget editMyProfile() {
    return SingleChildScrollView(
      child: Container(
        child: FutureBuilder(
            future: _account,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: Text("Retrieving your data..."));
              }
              if (snapshot.hasError) {
                return const Center(child: Text("Error"));
              }
              if (!snapshot.hasData) {
                return const Center(
                    child: Text("no data available for this dog"));
              }

              ResponseUserProfileModel myProfile =
                  snapshot.data as ResponseUserProfileModel;

              // Assigning values to the text controllers
              username = myProfile.username ?? '';
              _fullnameController.text = myProfile.fullName ?? '';
              email = myProfile.email ?? '';
              _provinceController.text = myProfile.provinceName ?? '';
              _phoneNumberController.text = myProfile.phoneNumber ?? '';
              _descriptionController.text = myProfile.description ?? '';

              final imageURL =
                  snapshot.data?.image == null ? "" : snapshot.data!.image;
              return Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  ImageNetwork(urlImage: imageURL, width: 150, height: 150),
                  const SizedBox(
                    height: 15,
                  ),
                  // username
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        Icons.pets_sharp,
                        size: 35,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(
                              "username",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(
                                height: 25,
                                child: TextFormField(
                                  readOnly: true,
                                  decoration: InputDecoration(
                                      border: const UnderlineInputBorder(),
                                      labelText: username,
                                      labelStyle: GoogleFonts.newsCycle(
                                        color: Colors.black,
                                      )),
                                )),
                          ]))
                    ],
                  ),

                  // full name
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        Icons.pets_sharp,
                        size: 35,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(
                              "full name",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(
                                height: 25,
                                child: TextFormField(
                                  controller: _fullnameController,
                                  decoration: InputDecoration(
                                      border: const UnderlineInputBorder(),
                                      labelStyle: GoogleFonts.newsCycle(
                                        color: Colors.black,
                                      )),
                                  onFieldSubmitted: (String? newValue) {
                                    _fullnameController.text = newValue!;
                                  },
                                )),
                          ]))
                    ],
                  ),

                  //email
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        Icons.pets_sharp,
                        size: 35,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(
                              "email",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(
                                height: 25,
                                child: TextFormField(
                                  readOnly: true,
                                  decoration: InputDecoration(
                                      border: const UnderlineInputBorder(),
                                      labelText: email,
                                      labelStyle: GoogleFonts.newsCycle(
                                        color: Colors.black,
                                      )),
                                )),
                          ]))
                    ],
                  ),

                  // province
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      // const Image(
                      //   image:
                      //       AssetImage('assets/woofers_icon/province.png'),
                      //   width: 35,
                      //   height: 35,
                      // ),
                      const Icon(
                        Icons.location_city_outlined,
                        size: 35,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(
                              "province name",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              child: SingleChildScrollView(
                                //child: Padding(
                                //padding: const EdgeInsets.symmetric(),
                                child: FutureBuilder(
                                  future: RetrieveProvinceService()
                                      .retrieveAllProvince(),
                                  //initialData: breedController.text,
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.waiting) {
                                      return const Text("Breed");
                                    }
                                    if (snapshot.hasError) {
                                      return Text("Error: ${snapshot.error}");
                                    }
                                    if (!snapshot.hasData) {
                                      return const Text("No data");
                                    }
                                    final provinceResponse = snapshot.data!;
                                    final provinceNames = provinceResponse
                                        .provinceList
                                        .map((e) => e.provinceName)
                                        .toList();
                                    return DropdownButtonFormField<String>(
                                      value: _selectedProvince,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        hintText: _provinceController.text,
                                      ),
                                      onChanged: (String? newValue) {
                                        if (newValue != null) {
                                          setState(() {
                                            _selectedProvince = newValue;
                                          });
                                        }
                                      },
                                      items: provinceNames.map((province) {
                                        return DropdownMenuItem<String>(
                                            value: province,
                                            child: Text(
                                              province,
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontFamily:
                                                    GoogleFonts.newsCycle()
                                                        .fontFamily,
                                              ),
                                            ));
                                      }).toList(),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          value = _provinceController.text;
                                        }
                                        return null;
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ]))
                    ],
                  ),

                  // phone number
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      // const Image(
                      //   image:
                      //       AssetImage('assets/woofers_icon/phone.png'),
                      //   width: 35,
                      //   height: 35,
                      // ),
                      const Icon(
                        Icons.medical_services_outlined,
                        size: 35,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(
                              "phone number",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              child: TextFormField(
                                  controller: _phoneNumberController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: const UnderlineInputBorder(),
                                    // labelText: 'Username',
                                    labelStyle: GoogleFonts.newsCycle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onFieldSubmitted: (String? newValue) {
                                    _phoneNumberController.text = newValue!;
                                  }),
                            ),
                          ]))
                    ],
                  ),

                  // description
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      // const Image(
                      //   image: AssetImage(
                      //       'assets/woofers_icon/description.png'),
                      //   width: 35,
                      //   height: 35,
                      // ),
                      const Icon(
                        Icons.abc_outlined,
                        size: 35,
                      ),
                      const SizedBox(
                        width: 20,
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
                              height: 70,
                              child: TextFormField(
                                  maxLines: null,
                                  controller: _descriptionController,
                                  decoration: InputDecoration(
                                    border: const UnderlineInputBorder(),
                                    // labelText: 'Username',
                                    labelStyle: GoogleFonts.newsCycle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onFieldSubmitted: (String? newValue) {
                                    _descriptionController.text = newValue!;
                                  }),
                            ),
                          ])),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SizedBox(
                        width: 125,
                        height: 35,
                        child: Expanded(
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color?>(
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
                            child: const Text('Save',
                                style: TextStyle(
                                    //color: Colors.grey[600],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            onPressed: () async {
                              _selectedProvince ??= snapshot.data!.provinceName;

                              final EditProfileRequest edit =
                                  EditProfileRequest(
                                      fullName: _fullnameController.text,
                                      provinceName: _selectedProvince,
                                      phoneNumber: _phoneNumberController.text,
                                      description: _descriptionController.text);

                              _accountService
                                  .editAccountProfile(edit)
                                  .then((value) => Navigator.of(context)
                                      .pushReplacement(MaterialPageRoute(
                                          builder: (_) =>
                                              const BottomMenuBar())))
                                  .onError<Exception>((error, stackTrace) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    //return Text(error.toString());
                                    return SimpleDialog(
                                      children: [Text(error.toString())],
                                    );
                                  },
                                );
                              });
                            },
                          ),
                        )),
                  )
                ],
              );
              // );
            }),
      ),
    );
  }
}
