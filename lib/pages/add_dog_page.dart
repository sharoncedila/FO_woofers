import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:woofers/components/bottom_menu.dart';
import 'package:woofers/components/image_network.dart';
import 'package:woofers/model/dog_model.dart';
import 'package:woofers/model/image_model.dart';
import 'package:woofers/services/dog_services.dart';
import 'package:woofers/services/image_service.dart';
import 'package:woofers/services/province_service.dart';

class AddDogPage extends StatefulWidget {
  const AddDogPage({
    super.key,
  });

  @override
  _AddDogPageState createState() => _AddDogPageState();
}

class _AddDogPageState extends State<AddDogPage> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final vaccineController = TextEditingController();
  final descriptionController = TextEditingController();
  bool passwordVisible = true;
  final _dogService = DogService();
  String? selectedProvince;
  String? selectedBreed;
  DateTime? selectedDate;
  String? selectedGender;
  bool isSwitched = false;
  String? uploadedImage;

  late List<String?> provinceNames;
  late List<String?> breedNames;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  Future<void> uploadDogProfilePic(File image) async {
    try {
      UploadImageResponse? pickedFile =
          await ImageService().uploadDogImage(null, image);
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 75,
        centerTitle: true,
        elevation: 0,
        backgroundColor: HexColor("#a0dcdc"),
        title: Text(
          "ADD DOG",
          style: GoogleFonts.lora(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: const Color.fromRGBO(40, 36, 36, 10000),
          ),
        ),
      ),
      body: addDogProfile(),
    );
  }

  Widget addDogProfile() {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            // Adjust the value as needed
            child: Column(children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Open for adoption',
                    style: GoogleFonts.lora(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(40, 36, 36, 10000),
                    ),
                  ),
                  const SizedBox(
                      width: 10), // Add space between text and switch
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeTrackColor: HexColor("#a0dcdc"),
                    activeColor: Colors.white,
                  ),
                ],
              ),
            ]),
          ),
          Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              // const Image(image: AssetImage('assets/dog_picture/dog1.jpg')),
              (uploadedImage == null)
                  ? const Icon(
                      Icons.pets,
                      size: 200,
                      color: Colors.black38,
                    )
                  : ImageNetwork(
                      urlImage: "/temp/$uploadedImage",
                      width: 300,
                      height: 300),
              const SizedBox(
                height: 15,
              ),

              IconButton(
                  onPressed: () async {
                    final pickedFile = await ImagePicker()
                        .pickImage(source: ImageSource.gallery);
                    if (pickedFile != null) {
                      File image = File(pickedFile.path);
                      uploadDogProfilePic(image);
                    }
                    // ImageService().uploadFeeds();
                  },
                  icon: const Icon(Icons.camera_alt)),
              const SizedBox(
                height: 15,
              ),

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

                  // dog name
                  Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Text(
                          "dog name",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(
                            height: 50,
                            child: TextFormField(
                              controller: nameController,
                              decoration: InputDecoration(
                                  border: const UnderlineInputBorder(),
                                  labelStyle: GoogleFonts.newsCycle(
                                    color: Colors.black,
                                  )),
                              onFieldSubmitted: (String? newValue) {
                                nameController.text = newValue!;
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please fill dog name field';
                                }
                                return null;
                              },
                            )),
                      ])),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),

              // dog breed
              const SizedBox(height: 25),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.pets_outlined,
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
                          "breed",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(
                          height: 75,
                          child: SingleChildScrollView(
                            //child: Padding(
                            //padding: const EdgeInsets.symmetric(),
                            child: FutureBuilder(
                              future: DogService().retrieveAllBreed(),
                              //initialData: breedController.text,
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
                                final breedResponse = snapshot.data!;
                                final breedNames = breedResponse.breedList
                                    .map((e) => e.breedName)
                                    .toList();
                                return DropdownButtonFormField<String>(
                                  value: selectedBreed,
                                  onChanged: (String? newValue) {
                                    if (newValue != null) {
                                      setState(() {
                                        selectedBreed = newValue;
                                      });
                                    }
                                  },
                                  items: breedNames.map((breed) {
                                    return DropdownMenuItem<String>(
                                        value: breed,
                                        child: Text(
                                          breed,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontFamily: GoogleFonts.newsCycle()
                                                .fontFamily,
                                          ),
                                        ));
                                  }).toList(),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please choose your dog breed';
                                    }
                                    return null;
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        // ),
                      ])),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),

              // date of birth
              const SizedBox(height: 25),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.calendar_month_outlined,
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
                          "date of birth",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                selectedDate != null
                                    ? Text(
                                        '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontFamily: GoogleFonts.newsCycle()
                                              .fontFamily,
                                        ),
                                      )
                                    : const Text(
                                        'Date of Birth',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.grey),
                                      ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: HexColor(
                                        "#a0dcdc"), // Background color of the button
                                  ),
                                  onPressed: () => _selectDate(context),
                                  child: Text(
                                    'Select Date',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily:
                                          GoogleFonts.newsCycle().fontFamily,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ])),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),

              // gender
              const SizedBox(height: 25),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.transgender_outlined,
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
                          "gender",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(
                            height: 70,
                            child: DropdownButtonFormField<String>(
                              value: selectedGender,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedGender = newValue;
                                });
                              },
                              items: <String>['Male', 'Female']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontFamily:
                                          GoogleFonts.newsCycle().fontFamily,
                                    ),
                                  ),
                                );
                              }).toList(),
                              // validator: (value) {
                              //   if (value == null || value.isEmpty) {
                              //     value = 'Please choose your dog gender';
                              //   }
                              //   return null;
                              // },
                            )),
                      ])),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),

              // province
              const SizedBox(height: 25),
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
                          "province",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          child: SingleChildScrollView(
                            child: FutureBuilder(
                              future: ProvinceService().retrieveAllProvince(),
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
                                final provinceResponse = snapshot.data!;
                                final provinceNames = provinceResponse
                                    .provinceList
                                    .map((e) => e.provinceName)
                                    .toList();
                                return DropdownButtonFormField<String>(
                                  value: selectedProvince,
                                  onChanged: (String? newValue) {
                                    if (newValue != null) {
                                      setState(() {
                                        selectedProvince = newValue;
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
                                            fontFamily: GoogleFonts.newsCycle()
                                                .fontFamily,
                                          ),
                                        ));
                                  }).toList(),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please choose your dog province';
                                    }
                                    return null;
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ])),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),

              // vaccine
              const SizedBox(height: 25),
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
                          "vaccine",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: TextFormField(
                            controller: vaccineController,
                            maxLines: 5,
                            decoration: InputDecoration(
                              border: const UnderlineInputBorder(),
                              // labelText: 'Username',
                              labelStyle: GoogleFonts.newsCycle(
                                color: Colors.black,
                              ),
                            ),
                            // validator: (value) {
                            //   if (value == null || value.isEmpty) {
                            //     return 'Please fill vaccine field';
                            //   }
                            //   return null;
                            // },
                          ),
                        ),
                      ])),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),

              // description
              const SizedBox(height: 25),
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
                              maxLines: 5,
                              controller: descriptionController,
                              decoration: InputDecoration(
                                border: const UnderlineInputBorder(),
                                // labelText: 'Username',
                                labelStyle: GoogleFonts.newsCycle(
                                  color: Colors.black,
                                ),
                              ),
                              onFieldSubmitted: (String? newValue) {
                                descriptionController.text = newValue!;
                              }),
                        ),
                      ])),
                  const SizedBox(
                    width: 20,
                  ),
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
                        child: const Text('Add',
                            style: TextStyle(
                                //color: Colors.grey[600],
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            if (selectedGender == 'Male') {
                              selectedGender = 'M';
                            } else if (selectedGender == 'Female') {
                              selectedGender = 'F';
                            }
                            String formattedDate = selectedDate != null
                                ? DateFormat('dd-MM-yyyy').format(selectedDate!)
                                : 'No date selected';

                            String? d = uploadedImage;
                            final AddDogRequest request = AddDogRequest(
                                dogName: nameController.text,
                                breedName: selectedBreed,
                                dateOfBirth: formattedDate,
                                isOpenAdopt: isSwitched,
                                gender: selectedGender!,
                                provinceName: selectedProvince,
                                vaccination: vaccineController.text,
                                description: descriptionController.text,
                                image: uploadedImage);

                            _dogService
                                .addNewDog(request)
                                .then((value) => Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                        builder: (_) => const BottomMenuBar(
                                              initialIndex: 3,
                                              profileInitialIndex: 1,
                                            ))))
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
                          }
                        },
                      ),
                    )),
              )
            ],
          ),
        ]),
      ),
    );
    // );
    //       }),
    // ),
  }
}
