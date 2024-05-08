import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/components/adoption_card.dart';
import 'package:woofers/model/adoption_model.dart';
import 'package:woofers/pages/notification_page.dart';
import 'package:woofers/services/adoption_service.dart';
import 'package:woofers/services/dog_services.dart';
import 'package:woofers/services/province_service.dart';

class AdoptionPage extends StatefulWidget {
  const AdoptionPage({super.key});

  @override
  _AdoptionPageState createState() => _AdoptionPageState();
}

class _AdoptionPageState extends State<AdoptionPage> {
  late List<String?> provinceNames;
  String? _selectedProvince;
  late List<String?> breedNames;
  String? _selectedBreed;
  // late List<String?> genderName = ['Female', 'Male'];
  // String? _selectedGender;

  FilterAdoption filterAdoption = FilterAdoption();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 75,
          elevation: 0,
          backgroundColor: HexColor("#a0dcdc"),
          title: Text(
            "WOOFERS",
            style: GoogleFonts.lora(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: const Color.fromRGBO(40, 36, 36, 10000),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notification_add_rounded),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationPage()),
                );
              },
            ),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 5),
                // dropdown province
                Form(
                  // padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: FutureBuilder(
                    future: ProvinceService().retrieveAllProvince(),
                    //initialData: initialProvinceNames,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Text('');
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
                      return SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 2.9,
                        child: DropdownButtonFormField<String>(
                          value: _selectedProvince,
                          style: const TextStyle(
                            fontSize: 9,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(160, 220, 220, 10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400),
                            ),
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            hintText: 'Province',
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            // isDense: true
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
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(width: 5),
                // dropdown breed
                Form(
                  child: FutureBuilder(
                    future: DogService().retrieveAllBreed(),
                    //initialData: initialBreedNames,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Text('');
                      }
                      if (snapshot.hasError) {
                        return Text("Error: ${snapshot.error}");
                      }
                      if (!snapshot.hasData) {
                        return const Text("No data");
                      }

                      final breedResponses = snapshot.data!;
                      final breedNames = breedResponses.breedList
                          .map((e) => e.breedName)
                          .toList();
                      return SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 2.6,
                        child: DropdownButtonFormField<String>(
                          value: _selectedBreed,
                          style: const TextStyle(
                            fontSize: 9,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(160, 220, 220, 10),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400),
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
                        ),
                      );
                    },
                  ),
                ),

                // search icon
                // const SizedBox(width: 5),
                IconButton(
                  onPressed: () {
                    setState(() {
                      filterAdoption = filterAdoption.copyWith(
                        breed: _selectedBreed,
                        province: _selectedProvince,
                        // gender: _selectedGender,
                      );
                    });
                  },
                  icon: const Icon(Icons.search_outlined),
                  // iconSize: 5,
                ),

                // cancel filter
                IconButton(
                  onPressed: () {
                    setState(() {
                      filterAdoption = filterAdoption.copyWith(
                        breed: null,
                        province: null,
                        // gender: _selectedGender,
                      );
                    });
                  },
                  icon: const Icon(Icons.cancel),
                  // iconSize: 5,
                )
              ],
            ),
            adoptionList(),
          ],
        )
        //adoptionList(),
        );
  }

  Widget adoptionList() {
    return Expanded(
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: FutureBuilder(
              future: AdoptionService().retrieveAdoptionList(filterAdoption),
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Padding(
                    padding: EdgeInsets.all(160),
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
                  return const Center(child: Text("No data available"));
                }
                if (!snapshot.hasData) {
                  return const Text("No data available");
                }
                final adoptionList = snapshot.data!;
                return Wrap(
                  children: adoptionList
                      .map((e) => DogCardDetail(adoptionDetail: e))
                      .toList(),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
