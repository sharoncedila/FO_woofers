import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/components/profile_page_template.dart';
import 'package:woofers/model/account_model.dart';
import 'package:woofers/model/image_model.dart';
import 'package:woofers/services/account_service.dart';
// import 'package:woofers/services/account_service.dart';
import 'package:woofers/services/image_service.dart';
import 'package:woofers/services/province_service.dart';

class EditMyProfile extends StatefulWidget {
  const EditMyProfile({super.key});

  @override
  _EditMyProfilePageState createState() => _EditMyProfilePageState();
}

class _EditMyProfilePageState extends State<EditMyProfile> {
  late Future<List<String?>> _provinceFuture;
  String? username;
  String? email;
  final _fullnameController = TextEditingController();
  final _provinceController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _addressController = TextEditingController();
  final _accountService = AccountService();
  String? _selectedProvince;
  String? uploadedImage;

  late List<String?> provinceNames;

  final Future<ResponseUserProfileModel?> _account =
      AccountService().retrieveUserData();

  Future<void> uploadProfilePic(File image) async {
    try {
      UploadImageResponse? pickedFile =
          await ImageService().uploadProfilePicture(image);
      if (pickedFile != null) {
        setState(() {
          uploadedImage = pickedFile.fileName;
          print(uploadedImage);
        });
      }
    } catch (error) {
      print(error);
    }
  }

  @override
  void initState() {
    super.initState();
    _provinceFuture = _fetchProvinceData();
    _loadUserProfile();
  }

  Future<void> _loadUserProfile() async {
    try {
      ResponseUserProfileModel? userProfile =
          await AccountService().retrieveUserData();

      // Set the state with the obtained values
      setState(() {
        _fullnameController.text = userProfile?.fullName ?? '';
        //_provin.text = userProfile?.breedName ?? '';
        _phoneNumberController.text = userProfile?.phoneNumber ?? '';
        _descriptionController.text = userProfile?.description ?? '';
      });
    } catch (error) {
      print(error);
    }
  }

  Future<List<String?>> _fetchProvinceData() async {
    try {
      final provinceResponse = await ProvinceService().retrieveAllProvince();
      return provinceResponse.provinceList
          .map((province) => province.provinceName)
          .toList();
    } catch (error) {
      throw Exception('Failed to retrieve province data: $error');
    }
  }

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
                return Padding(
                  padding: const EdgeInsets.all(160),
                  child: Container(
                    // Center the CircularProgressIndicator
                    alignment: Alignment.center,
                    color: Colors
                        .transparent, // Ensure the container doesn't block interaction with underlying widgets
                    child: const CircularProgressIndicator(),
                  ),
                );
              }
              if (snapshot.hasError) {
                return const Center(child: Text("Error"));
              }
              if (!snapshot.hasData) {
                return const Center(
                  child: Text("No data available for this user"),
                );
              }

              final myProfile = snapshot.data as ResponseUserProfileModel;

              _selectedProvince = myProfile.provinceName;

              // Assigning values to the text controllers

              // if (_fullnameController.text == myProfile.fullName) {
              //   _fullnameController.text = myProfile.fullName ?? '';
              // }
              // if (_provinceController.text == myProfile.provinceName) {
              //   _provinceController.text = myProfile.provinceName ?? '';
              // }
              // print("province: $_provinceController");
              // if (_phoneNumberController.text == myProfile.phoneNumber) {
              //   _phoneNumberController.text = myProfile.phoneNumber ?? '';
              // }
              // if (_descriptionController.text == myProfile.description) {
              //   _descriptionController.text = myProfile.description ?? '';
              // }

              //provinceController.text = dogProfile.provinceName ?? '';

              // final imageURL = myProfile.image ?? '';
              return Column(
                children: [
                  const SizedBox(height: 15),
                  (uploadedImage == null && myProfile.image == null)
                      ? const Image(
                          image: AssetImage('assets/woofers_icon/profile.jpg'))
                      : (uploadedImage != null && myProfile.image == null)
                          ? ImageNetwork(
                              urlImage: "/temp/$uploadedImage",
                              width: 150,
                              height: 150)
                          : ImageNetwork(
                              urlImage: myProfile.image,
                              width: 150,
                              height: 150),
                  IconButton(
                      onPressed: () async {
                        final pickedFile = await ImagePicker()
                            .pickImage(source: ImageSource.gallery);
                        if (pickedFile != null) {
                          File image = File(pickedFile.path);
                          uploadProfilePic(image);
                        }
                        // ImageService().uploadFeeds();
                      },
                      icon: const Icon(Icons.camera_alt)),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Image(
                        image: AssetImage('assets/woofers_icon/profile.jpg'),
                        width: 35,
                        height: 35,
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
                                  style: GoogleFonts.newsCycle(
                                    color: Colors.black,
                                  ),
                                  onFieldSubmitted: (String? newValue) {
                                    _fullnameController.text = newValue!;
                                  },
                                )),
                          ]))
                    ],
                  ),
                  // ),

                  // province
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
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
                                child: FutureBuilder(
                                  future: _provinceFuture,
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.waiting) {
                                      return const Text("");
                                    }
                                    if (snapshot.hasError) {
                                      return Text("Error: ${snapshot.error}");
                                    }
                                    if (!snapshot.hasData) {
                                      return const Text("No data");
                                    }
                                    final provinceNames =
                                        snapshot.data as List<String?>;
                                    return DropdownButtonFormField<String>(
                                      value: _selectedProvince,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        hintText: _provinceController.text,
                                      ),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          _selectedProvince =
                                              newValue; // Update selected province directly
                                        });
                                      },
                                      items: provinceNames.map((province) {
                                        return DropdownMenuItem<String>(
                                          value: province,
                                          child: Text(
                                            province!,
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontFamily:
                                                  GoogleFonts.newsCycle()
                                                      .fontFamily,
                                            ),
                                          ),
                                        );
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
                          ],
                        ),
                      ),
                    ],
                  ),

                  // address
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      // const Image(
                      //   image: AssetImage(
                      //       'assets/woofers_icon/province.png'),
                      //   width: 35,
                      //   height: 35,
                      const Icon(
                        Icons.location_on,
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
                              "address",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              width: 325,
                              child: TextFormField(
                                // readOnly: true,
                                // enabled: false,
                                decoration: InputDecoration(
                                  border: const UnderlineInputBorder(),
                                  // labelText: 'Username',
                                  labelText: "Mekarsari V Street number 10",
                                  labelStyle: GoogleFonts.newsCycle(
                                    color: Colors.black,
                                  ),
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
                      const Icon(
                        Icons.phone_android_sharp,
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
                            const SizedBox(height: 5),
                            SizedBox(
                              height: 25,
                              child: TextFormField(
                                controller: _phoneNumberController,
                                keyboardType: TextInputType.number,
                                style: GoogleFonts.newsCycle(
                                  color: Colors.black,
                                ),
                                onFieldSubmitted: (String? newValue) {
                                  _phoneNumberController.text = newValue!;
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please fill phone number field';
                                  }
                                  const pattern =
                                      r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
                                  final regExp = RegExp(pattern);
                                  if (!regExp.hasMatch(value)) {
                                    return 'Please enter number only in this field';
                                  }
                                  if (value.length < 8) {
                                    return 'Phone number should have at least 8 digits';
                                  } else if (value.length > 13) {
                                    return 'Phone number has maximum of 13 digits';
                                  }
                                  return null;
                                },
                              ),
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
                              height: 75,
                              child: TextFormField(
                                  maxLines: 3,
                                  maxLength: 300,
                                  controller: _descriptionController,
                                  style: GoogleFonts.newsCycle(
                                    color: Colors.black,
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
                                      description: _descriptionController.text,
                                      image: uploadedImage);

                              _accountService
                                  .editAccountProfile(edit)
                                  .then((value) => Navigator.of(context)
                                      .pushReplacement(MaterialPageRoute(
                                          builder: (_) =>
                                              ProfilePageTemplate())))
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
            }),
      ),
    );
  }
}
