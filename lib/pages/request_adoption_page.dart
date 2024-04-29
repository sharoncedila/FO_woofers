import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woofers/model/adoption_model.dart';
import 'package:woofers/pages/edit_my_dog.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/services/adoption/adoption_service.dart';

class RequestAdoptionPage extends StatefulWidget {
  //final String dogId;
  const RequestAdoptionPage({Key? key}) // required this.dogId
      : super(key: key); // Correct constructor definition

  @override
  _RequestAdoptionPageState createState() => _RequestAdoptionPageState();
}

class _RequestAdoptionPageState extends State<RequestAdoptionPage> {
/*final Future<AdoptConfirmationRequest?> _dog =
      AdoptionService().retrieveAdoptConfirmation(dog_id);*/


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
        centerTitle: true,
      ),
      body: const RequestAdoptionDetail(),
    );
  }
}

class RequestAdoptionDetail extends StatelessWidget {
  const RequestAdoptionDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //const SizedBox(height: 10),
          const SizedBox(
            height: 15,
          ), 
          const Image(image: AssetImage('assets/dog_picture/dog1.jpg')),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              //// dog name
              const SizedBox(
                width: 15,
              ),
              const Image(
                image: AssetImage('assets/woofers_icon/profile.jpg'),
                width: 35,
                height: 35,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text(
                      "name",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                      child: TextFormField(
                        readOnly: true,
                        enabled: false,
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          labelText: 'Nama Ashu',
                          // hintText: snapshot.data!.username,
                          labelStyle: GoogleFonts.newsCycle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ]))
            ],
          ),
      
          // dog breed
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const Image(
                image: AssetImage('assets/woofers_icon/profile.jpg'),
                width: 35,
                height: 35,
              ),
              const SizedBox(
                width: 10,
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
                      height: 25,
                      child: TextFormField(
                        readOnly: true,
                        enabled: false,
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          labelText: 'Dog Breed',
                          // hintText: snapshot.data!.username,
                          labelStyle: GoogleFonts.newsCycle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ]))
            ],
          ),
      
          // dog birth of date
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const Image(
                image: AssetImage('assets/woofers_icon/profile.jpg'),
                width: 35,
                height: 35,
              ),
              const SizedBox(
                width: 10,
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
                      height: 25,
                      child: TextFormField(
                        readOnly: true,
                        enabled: false,
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          labelText: 'Date of Birth',
                          // hintText: snapshot.data!.username,
                          labelStyle: GoogleFonts.newsCycle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ]))
            ],
          ),
      
          // dog gender
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const Image(
                image: AssetImage('assets/woofers_icon/profile.jpg'),
                width: 35,
                height: 35,
              ),
              const SizedBox(
                width: 10,
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
                      height: 25,
                      child: TextFormField(
                        readOnly: true,
                        enabled: false,
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          labelText: 'Gender',
                          // hintText: snapshot.data!.username,
                          labelStyle: GoogleFonts.newsCycle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ]))
            ],
          ),
      
          // dog province
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const Image(
                image: AssetImage('assets/woofers_icon/profile.jpg'),
                width: 35,
                height: 35,
              ),
              const SizedBox(
                width: 10,
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
                      height: 25,
                      child: TextFormField(
                        readOnly: true,
                        enabled: false,
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          labelText: 'Province',
                          // hintText: snapshot.data!.username,
                          labelStyle: GoogleFonts.newsCycle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ]))
            ],
          ),
      
          // dog vaccination list
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const Image(
                image: AssetImage('assets/woofers_icon/profile.jpg'),
                width: 35,
                height: 35,
              ),
              const SizedBox(
                width: 10,
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
                      height: 25,
                      child: TextFormField(
                        readOnly: true,
                        enabled: false,
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          labelText:
                              'Rabies Vaccine, Canine Distemper Vaccine, Canine Parvovirus Vaccine, Canine Adenovirus Type 1 and Type 2 (CAV-1 and CAV-2) Vaccine',
                          // hintText: snapshot.data!.username,
                          labelStyle: GoogleFonts.newsCycle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ]))
            ],
          ),
      
          // dog description
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const Image(
                image: AssetImage('assets/woofers_icon/profile.jpg'),
                width: 35,
                height: 35,
              ),
              const SizedBox(
                width: 10,
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
                      height: 25,
                      child: TextFormField(
                        readOnly: true,
                        enabled: false,
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          labelText: 'dog description',
                          // hintText: snapshot.data!.username,
                          labelStyle: GoogleFonts.newsCycle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ]))
            ],
          ),
      
          const SizedBox(height: 50),
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
              child: const Text('Edit'),
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EditMyDog()),
                );
              },
            ),
          ),
          
        ],
      ),
    );
  }
}