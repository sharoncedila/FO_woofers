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

class EditDogPage extends StatefulWidget {
  final String dogId;
  const EditDogPage({
    super.key,
    required this.dogId,
  });

  @override
  _EditDogPageState createState() => _EditDogPageState();
}

class _EditDogPageState extends State<EditDogPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController breedController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController provinceController = TextEditingController();
  TextEditingController vaccineController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  String? _selectedProvince;
  String? _selectedBreed;
  DateTime? _selectedDate;
  String? _selectedGender;
  String? uploadedImage;
  final _dogService = DogService();
  bool isSwitched = false;
  String? urlImage;

  late List<String?> breedNames;
  Future<void> uploadDogPic(String dogId, File image) async {
    try {
      UploadImageResponse? pickedFile =
          await ImageService().uploadDogImage(dogId, image);
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
    _loadDogProfile();
  }


  Future<void> _loadDogProfile() async {
    try {
      ResponseDogProfileModel? dogProfile =
          await DogService().retrieveDogProfile(widget.dogId);

      setState(() {
        nameController.text = dogProfile?.dogName ?? '';
        breedController.text = dogProfile?.breedName ?? '';
        dateOfBirthController.text = dogProfile?.dateOfBirth ?? '';
        provinceController.text = dogProfile?.provinceName ?? '';
        vaccineController.text = dogProfile?.vaccination ?? '';
        descriptionController.text = dogProfile?.description ?? '';

        if (dogProfile?.gender == 'M') {
          _selectedGender = 'Male';
        } else if (dogProfile?.gender == 'F') {
          _selectedGender = 'Female';
        }

        final dateFormat = DateFormat('dd-MM-yyyy');
        _selectedDate = dateFormat.parse(dogProfile?.dateOfBirth ?? '');

        if (dogProfile?.isOpenAdopt == 'true') {
          isSwitched = true;
        } else if (dogProfile?.isOpenAdopt == 'false') {
          isSwitched = false;
        }

        urlImage = dogProfile?.image == null ? "" : dogProfile!.image;
      });
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
          "EDIT DOG",
          style: GoogleFonts.lora(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: const Color.fromRGBO(40, 36, 36, 10000),
          ),
        ),
      ),
      body: editDogProfile(),
    );
  }

  Widget editDogProfile() {
    return SingleChildScrollView(
      child: Container(
        child: FutureBuilder(
            future: DogService().retrieveDogProfile(widget.dogId),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Padding(
                  padding: const EdgeInsets.all(160),
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors
                        .transparent, 
                    child: const CircularProgressIndicator(),
                  ),
                );
              }
              if (snapshot.hasError) {
                return const Center(child: Text("Error"));
              }
              if (!snapshot.hasData) {
                return const Center(
                    child: Text("no data available for this dog"));
              }

              ResponseDogProfileModel dogProfile =
                  snapshot.data as ResponseDogProfileModel;
              breedController.text = dogProfile.breedName ?? '';
              provinceController.text = dogProfile.provinceName ?? '';

              if (dogProfile.gender == 'M') {
                genderController.text = 'Male';
              } else if (dogProfile.gender == 'F') {
                genderController.text = 'Female';
              }

              final dateFormat = DateFormat('dd-MM-yyyy');
              _selectedDate = dateFormat.parse(dogProfile.dateOfBirth!);

              Future<void> selectDate(BuildContext context) async {
                final DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: _selectedDate ?? DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                );
                if (pickedDate != null && pickedDate != _selectedDate) {
                  setState(() {
                    _selectedDate = pickedDate;
                    dateOfBirthController.text =
                        DateFormat('dd-MM-yyyy').format(pickedDate);
                  });
                }
              }

              final imageURL =
                  snapshot.data?.image == null ? "" : snapshot.data!.image;
              return Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
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
                            width: 10), 
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
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  ImageNetwork(urlImage: imageURL, width: 150, height: 150),
                  const SizedBox(
                    height: 15,
                  ),

                  IconButton(
                      onPressed: () async {
                        final pickedFile = await ImagePicker()
                            .pickImage(source: ImageSource.gallery);
                        if (pickedFile != null) {
                          File image = File(pickedFile.path);
                          uploadDogPic(snapshot.data!.dogId, image);
                        }
                      },
                      icon: const Icon(Icons.camera)),
                  const SizedBox(
                    height: 15,
                  ),
                  // dog name
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
                              "dog name",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(
                                height: 25,
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
                                )),
                          ])),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),

                  // dog breed
                  const SizedBox(height: 15),
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
                              height: 50,
                              child: SingleChildScrollView(
                                child: FutureBuilder(
                                  future: DogService().retrieveAllBreed(),
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
                                      value: _selectedBreed,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        hintText: breedController.text,
                                      ),
                                      onChanged: (String? newValue) {
                                        if (newValue != null) {
                                          setState(() {
                                            _selectedBreed = newValue;
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
                                                fontFamily:
                                                    GoogleFonts.newsCycle()
                                                        .fontFamily,
                                              ),
                                            ));
                                      }).toList(),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          value = breedController.text;
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
                  const SizedBox(height: 15),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    _selectedDate != null
                                        ? Text(
                                            '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontFamily:
                                                  GoogleFonts.newsCycle()
                                                      .fontFamily,
                                            ),
                                          )
                                        : const Text(
                                            'Date of Birth',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey),
                                          ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: HexColor(
                                            "#a0dcdc"), // Background color of the button
                                      ),
                                      onPressed: () => selectDate(context),
                                      child: Text(
                                        'Select Date',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontFamily: GoogleFonts.newsCycle()
                                              .fontFamily,
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
                  const SizedBox(height: 15),
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
                                height: 50,
                                child: DropdownButtonFormField<String>(
                                  value: _selectedGender,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: genderController.text,
                                  ),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      _selectedGender = newValue;
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
                                          fontFamily: GoogleFonts.newsCycle()
                                              .fontFamily,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      value = genderController.text;
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

                  // province
                  const SizedBox(height: 15),
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
                              "province",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              child: SingleChildScrollView(
                                child: FutureBuilder(
                                  future:
                                      ProvinceService().retrieveAllProvince(),
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
                                      value: _selectedProvince,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        hintText: provinceController.text,
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
                                          value = provinceController.text;
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
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
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
                              //height: 25,
                              child: TextFormField(
                                  controller: vaccineController,
                                  maxLines: null,
                                  decoration: InputDecoration(
                                    border: const UnderlineInputBorder(),
                                    // labelText: 'Username',
                                    labelStyle: GoogleFonts.newsCycle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onFieldSubmitted: (String? newValue) {
                                    vaccineController.text = newValue!;
                                  }),
                            ),
                          ])),
                      const SizedBox(
                        width: 20,
                      ),
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
                              height: 70,
                              child: TextFormField(
                                  maxLines: null,
                                  controller: descriptionController,
                                  decoration: InputDecoration(
                                    border: const UnderlineInputBorder(),
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
                                  return null; 
                                },
                              ),
                            ),
                            child: const Text(
                              'Save',
                            ),
                            onPressed: () async {
                              _selectedProvince ??= snapshot.data!.provinceName;
                              _selectedBreed ??= snapshot.data!.breedName;

                              String? selectedGender = _selectedGender;
                              if (_selectedGender == '') {
                                _selectedGender = snapshot.data!.gender;
                              }
                              if (selectedGender == 'Male') {
                                selectedGender = 'M';
                              } else if (selectedGender == 'Female') {
                                selectedGender = 'F';
                              }

                              String formattedDate = _selectedDate != null
                                  ? DateFormat('dd-MM-yyyy')
                                      .format(_selectedDate!)
                                  : 'No date selected';
                              final EditDogRequest request = EditDogRequest(
                                  dogId: dogProfile.dogId,
                                  dogName: nameController.text,
                                  breedName: _selectedBreed,
                                  dateOfBirth: formattedDate,
                                  isOpenAdopt: isSwitched.toString(),
                                  gender: selectedGender,
                                  provinceName: _selectedProvince,
                                  vaccination: vaccineController.text,
                                  description: descriptionController.text,
                                  image: uploadedImage);

                              _dogService
                                  .editDog(request)
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
                                    return SimpleDialog(
                                      children: [Text(error.toString())],
                                    );
                                  },
                                );
                              });
                            },
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              );
              // );
            }),
      ),
    );
  }
}
