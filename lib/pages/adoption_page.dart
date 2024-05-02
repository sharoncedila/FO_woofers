import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/components/adoption_card.dart';
import 'package:woofers/pages/notification_page.dart';
import 'package:woofers/services/adoption/adoption_service.dart';
import 'package:woofers/services/dog/breed_services.dart';
import 'package:woofers/services/province/province_service.dart';

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
  late List<String?> genderName = ['Female', 'Male'];
  String? _selectedGender;

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
        body: SingleChildScrollView(
            child: Column(
          children: [
            Column(
              children: [
                // province here
                const SizedBox(height: 15),
                // SingleChildScrollView(
                // child:
                Form(
                  // padding: const EdgeInsets.symmetric(horizontal: 25),
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

                      // return Container(color: Colors.blue, height: 100, width: 100,);

                      final provinceResponse = snapshot.data!;
                      final provinceNames = provinceResponse.provinceList
                          .map((e) => e.provinceName)
                          .toList();
                      return Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.blue,
                        child: DropdownButtonFormField<String>(
                          value: _selectedProvince,
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400),
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
                        ),
                      );
                    },
                  ),
                ),
                // ),

                /*IconButton(
                onPressed: onPressed, 
                icon: Icons.search_outlined,
              )*/
              ],
            ),

            // adoptionList(),
          ],
        ))
        //adoptionList(),
        );
  }

  Widget adoptionList() {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: FutureBuilder(
            future: AdoptionService().retrieveAdoptionList(),
            builder: ((context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: Text("Retrieving your data..."));
              }
              if (snapshot.hasError) {
                return const Center(child: Text("Error"));
              }
              if (!snapshot.hasData) {
                return const Text("No data");
              }
              final adoptionList = snapshot.data!;
              print("Data adoption: ${snapshot.data}");
              return Wrap(
                children: adoptionList
                    .map((e) => DogCardDetail(adoptionDetail: e))
                    .toList(),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
