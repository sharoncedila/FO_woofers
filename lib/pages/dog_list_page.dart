import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:woofers/components/my_dog_card.dart';
import 'package:woofers/pages/add_dog_page.dart';
import 'package:woofers/services/dog_services.dart';

void main() => runApp(const DogListPage());

class DogListPage extends StatefulWidget {
  const DogListPage({super.key});

  //belum bisa muncul
  Widget build(BuildContext context){
    return IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddDogPage()),
            );
          },
        );
  }

  @override
  _DogListPageState createState() => _DogListPageState();

}

class _DogListPageState extends State<DogListPage> {
  Future<String> geToken() async {
    final prefs = await SharedPreferences.getInstance();
    return Future.value(prefs.getString('accountId'));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder(
          future: geToken(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: Text("Retrieving your dog list data 1"));
            }
            if (snapshot.hasError) {
              return const Center(child: Text("Error accountID"));
            }
            if (!snapshot.hasData) {
              return const Text("No data");
            }

            String accountId =
                snapshot.data == null ? "" : snapshot.requireData;
            return Expanded(
                child: FutureBuilder(
                    future: DogService().retrieveDogList(accountId),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                            child: Text("Retrieving your dog list data 2"));
                      }
                      if (snapshot.hasError) {
                        return const Center(child: Text("Error dogList"));
                      }
                      if (!snapshot.hasData) {
                        return const Text("You do not have any dog.");
                      }

                      final dogList = snapshot.data!;
                      return SingleChildScrollView(
                        
                        child: Column(
                          // padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          children: [
                            IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const AddDogPage()),
                                );
                              },
                            ),
                            Wrap(
                              children: dogList
                                  .map((e) => MyDogCard(dogProfile: e))
                                  .toList(),
                            ),
                          ] 
                        ),
                      );
                      
                    }));
          }),
    );
  }
}
