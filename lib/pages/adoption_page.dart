import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  List<String> provinceNames = [];
  List<String> breedNames = [];
  List<AdoptionDetail> adoptionList = [];
  String? _selectedProvince, _selectedBreed;
  bool isLoading = true;
  FilterAdoption filterAdoption = FilterAdoption();

  @override
  void initState() {
    super.initState();
    fetchInitialData();
  }

  Future<void> fetchInitialData() async {
    try {
      final provinceResponse = await ProvinceService().retrieveAllProvince();
      final breedResponse = await DogService().retrieveAllBreed();

      final adoptionResponse =
          await AdoptionService().retrieveAdoptionList(filterAdoption);

      setState(() {
        provinceNames =
            provinceResponse.provinceList.map((e) => e.provinceName).toList();
        breedNames = breedResponse.breedList.map((e) => e.breedName).toList();
        adoptionList = adoptionResponse;
        isLoading = false;
      });
    } catch (e) {
      print(e);
      setState(() {
        adoptionList = [];
      });
      isLoading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
            icon: const Icon(Icons.notifications_on),
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
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Column(
              children: [
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 11,
                        child: SizedBox(
                          height: 50,
                          child: DropdownButtonFormField<String>(
                            value: _selectedProvince,
                            style: const TextStyle(
                              fontSize: 8,
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
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                _selectedProvince = newValue;
                              });
                            },
                            items: provinceNames.map((province) {
                              return DropdownMenuItem<String>(
                                value: province,
                                child: Text(province),
                              );
                            }).toList(),
                            icon: const SizedBox.shrink(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        flex: 11,
                        child: SizedBox(
                          height: 50,
                          child: Container(
                            width: double.infinity,
                            child: DropdownButtonFormField<String>(
                            value: _selectedBreed,
                            style: const TextStyle(
                              fontSize: 8,
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
                              setState(() {
                                _selectedBreed = newValue;
                              });
                            },
                            items: breedNames.map((breed) {
                              return DropdownMenuItem<String>(
                                value: breed,
                                child: Text(breed),
                              );
                            }).toList(),
                            icon: const SizedBox.shrink(),
                          ),
                        ),
                        ),
                      ),
                      const SizedBox(width: 1),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              filterAdoption = filterAdoption.copyWith(
                                breed: _selectedBreed,
                                province: _selectedProvince,
                              );
                              fetchInitialData();
                            });
                          },
                          icon: const Icon(Icons.search_outlined),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              filterAdoption = filterAdoption.copyWith(
                                breed: null,
                                province: null,
                              );
                              fetchInitialData();
                              _selectedProvince = null;
                              _selectedBreed = null;
                            });
                          },
                          icon: const Icon(Icons.cancel),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: adoptionListWidget()),
              ],
            ),
    );
  }

  Widget adoptionListWidget() {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: adoptionList.isEmpty
              ? const Text("No data available")
              : Wrap(
                  children: adoptionList
                      .map((e) => AdoptionCardDetail(adoptionDetail: e))
                      .toList(),
                ),
        ),
      ),
    );
  }
}
