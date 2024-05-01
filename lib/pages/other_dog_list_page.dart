import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:woofers/components/my_dog_card.dart';
import 'package:woofers/components/other_dog_card.dart';
import 'package:woofers/pages/add_dog_page.dart';
import 'package:woofers/services/dog/dog_services.dart';

// void main() => runApp(const OtherDogListPage());

// class OtherDogListPage extends StatefulWidget {
//   const OtherDogListPage({super.key});

//   @override
//   _OtherDogListPageState createState() => _OtherDogListPageState();

// }

class OtherDogListPage extends StatelessWidget {
  final String accountId;
  const OtherDogListPage({
    super.key,
    required this.accountId,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child : Expanded(
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
                      return Wrap(
                        children: dogList
                            .map((e) => OtherDogCard(dogProfile: e))
                            .toList(),
                      );
                    })
                    ));
  }
}
