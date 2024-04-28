import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/pages/dog_list_page.dart';
import 'package:woofers/pages/feeds_page.dart';
import 'package:woofers/pages/user_profile_page.dart';
import 'package:email_validator/email_validator.dart';
import 'package:woofers/services/account/register_service.dart';
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
  final _phoneNumberController = TextEditingController();
  bool passwordVisible = true;
  final _dogService = DogService();
  String? _selectedProvince;
  String? _selectedBreed;
  DateTime _selectedDate = DateTime.now();

  late List<String?> provinceNames;
  late List<String?> breedNames;

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
                    const Icon(Icons.arrow_back), // Set your desired icon here
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DogListPage()));
                })),
      ),
      body: addFeeds(),
    );
  }

  Widget addFeeds() {
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
                  final breedNames = breedResponse.breedList
                      .map((e) => e.breedName)
                      .toList();
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
                  );
                },
              ),
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
                  );
                },
              ),
            ),
          ),

          // phone number form field
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              controller: _phoneNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: 'Phone Number',
                  hintStyle: TextStyle(color: Colors.grey[500])),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please fill phone number field';
                }
                const pattern = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
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

          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.1,
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
              child: const Text('Post'),
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FeedsPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
