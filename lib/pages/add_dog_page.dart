import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:woofers/components/bottom_menu.dart';
import 'package:woofers/model/dog_profile_model.dart';
import 'package:woofers/pages/dog_list_page.dart';
import 'package:woofers/services/dog/breed_services.dart';
import 'package:woofers/services/dog/dog_services.dart';
import 'package:woofers/services/province/province_service.dart';

class AddDogPage extends StatefulWidget {
  const AddDogPage({super.key});

  @override
  _AddDogPageState createState() => _AddDogPageState();
}

class _AddDogPageState extends State<AddDogPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _vaccineController = TextEditingController();
  final _descriptionController = TextEditingController();
  bool passwordVisible = true;
  final _dogService = DogService();
  String? _selectedProvince;
  String? _selectedBreed;
  DateTime? _selectedDate;
  String? _selectedGender;
  bool _isSwitched = false;

  late List<String?> provinceNames;
  late List<String?> breedNames;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
            padding:
                const EdgeInsets.only(left: 30), // Adjust the value as needed
            child: IconButton(
                icon:
                    //cupertino
                    const Icon(Icons.arrow_back), // Set your desired icon here
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DogListPage()));
                })),
        actions: [
          Padding(
            padding:
                const EdgeInsets.only(right: 30), // Adjust the value as needed
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
                const SizedBox(width: 10), // Add space between text and switch
                Switch(
                  value: _isSwitched,
                  onChanged: (value) {
                    setState(() {
                      _isSwitched = value;
                    });
                  },
                  activeTrackColor: HexColor("#a0dcdc"),
                  activeColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
      body: addDog(),
    );
  }

  Widget addDog() {
    return SingleChildScrollView(
      child: Column(
        children: [
          //image
          const SizedBox(
            height: 15,
          ),
          const Image(image: AssetImage('assets/dog_picture/dog1.jpg')),
          const SizedBox(
            height: 15,
          ),

          //name
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: 'Name',
                  hintStyle: TextStyle(color: Colors.grey[500])),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please fill name field';
                }
                return null;
              },
            ),
          ),

          // breed
          const SizedBox(height: 15),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: FutureBuilder(
                future: RetrieveBreedService().retrieveAllBreed(),
                //initialData: initialBreedNames,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Text("Breed");
                  }
                  if (snapshot.hasError) {
                    return Text("Error: ${snapshot.error}");
                  }
                  if (!snapshot.hasData) {
                    return const Text("No data");
                  }
                  final breedResponse = snapshot.data!;
                  final breedNames =
                      breedResponse.breedList.map((e) => e.breedName).toList();
                  return DropdownButtonFormField<String>(
                    value: _selectedBreed,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'Breed',
                      hintStyle: TextStyle(color: Colors.grey[500]),
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
                        child: Text(breed),
                      );
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

          //Date of Birth
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _selectedDate != null
                      ? Text(
                          '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      : const Text(
                          'Date of Birth',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                  ElevatedButton(
                    onPressed: () => _selectDate(context),
                    child: const Text('Select Date'),
                  ),
                ],
              ),
            ),
          ),

          //Gender
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: DropdownButtonFormField<String>(
              value: _selectedGender,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
                hintText: 'Gender',
                hintStyle: TextStyle(color: Colors.grey[500]),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedGender = newValue;
                });
              },
              items: <String>['Male', 'Female'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please choose your dog gender';
                }
                return null;
              },
            ),
          ),

          //province here
          const SizedBox(height: 15),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: FutureBuilder(
                future: RetrieveProvinceService().retrieveAllProvince(),
                //initialData: initialProvinceNames,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Text("Province");
                  }
                  if (snapshot.hasError) {
                    return Text("Error: ${snapshot.error}");
                  }
                  if (!snapshot.hasData) {
                    return const Text("No data");
                  }
                  final provinceResponse = snapshot.data!;
                  final provinceNames = provinceResponse.provinceList
                      .map((e) => e.provinceName)
                      .toList();
                  return DropdownButtonFormField<String>(
                    value: _selectedProvince,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'Province',
                      hintStyle: TextStyle(color: Colors.grey[500]),
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
                        child: Text(province),
                      );
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

          //vaccine
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              controller: _vaccineController,
              maxLines: null,
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: 'Vaccination',
                  hintStyle: TextStyle(color: Colors.grey[500])),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please fill vaccine field';
                }
                return null;
              },
            ),
          ),

          //description
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              controller: _descriptionController,
              maxLines: null,
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: 'Description',
                  hintStyle: TextStyle(color: Colors.grey[500])),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please fill vaccine field';
                }
                return null;
              },
            ),
          ),

          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 1.8,
              height: 45,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
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
                  child: Text('ADD',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  onPressed: () async {
                    //belum solve
                    //if (_formKey.currentState!.validate()) {
                    String? selectedGender = _selectedGender;
                    if (selectedGender == 'Male') {
                      selectedGender = 'M';
                    } else if (selectedGender == 'Female') {
                      selectedGender = 'F';
                    }
                    String formattedDate = _selectedDate != null
                        ? DateFormat('dd-MM-yyyy').format(_selectedDate!)
                        : 'No date selected';
                    final AddDogRequest add = AddDogRequest(
                        dogName: _nameController.text,
                        breedName: _selectedBreed,
                        dateOfBirth: formattedDate,
                        isOpenAdopt: _isSwitched.toString(),
                        gender: selectedGender!,
                        provinceName: _selectedProvince,
                        vaccination: _vaccineController.text,
                        description: _descriptionController.text);

                    _dogService
                        .addNewDog(add)
                        .then((value) => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (_) => const BottomMenuBar())))
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
                  /*Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FeedsPage()),
                );*/
                  // },
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
