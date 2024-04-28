import 'package:flutter/material.dart';

class EditMyDog extends StatelessWidget {
  const EditMyDog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
              // logo
              Image.asset(
                'assets/dog_picture/dog1.jpg',
                width: 100, height: 100,
              ),

              const SizedBox(height: 10),
              // WOOFERS
              const Text(
                'Dog1',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'San Francisco'
                  ),
              ),

              const EditMyDogForm(),
              ],
            ),
          )
        ),
    );
  }
}

class EditMyDogForm extends StatefulWidget {
  const EditMyDogForm({super.key});

  @override
  EditMyDogFormState createState() {
    return EditMyDogFormState();
  }
}

class EditMyDogFormState extends State<EditMyDogForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<EditMyDogFormState>.
  final _formKey = GlobalKey<FormState>();
  bool passwordVisible=true;
  final String _password='';

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // name form field
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
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
                hintStyle: TextStyle(color: Colors.grey[500])
              ),
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Please fill name field';
                }
                return null;
              },
            ),
          ),

          // breed form field
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
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
                hintStyle: TextStyle(color: Colors.grey[500])
              ),
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Please fill breed field';
                }
                return null;
              },
            ),
          ),

          // date of birth form field
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
                hintText: 'Date of Birth',
                hintStyle: TextStyle(color: Colors.grey[500])
              ),
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Please fill date of birth field';
                }
                return null;
              },
            ),
          ),

          // gender form field
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
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
                hintStyle: TextStyle(color: Colors.grey[500])
              ),
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Please fill gender field';
                }
                return null;
              },
            ),
          ),

          // province form field
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
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
                hintStyle: TextStyle(color: Colors.grey[500])
              ),
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Please fill province field';
                }
                return null;
              },
            ),
          ),

          // Vaccinne form field
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
                hintText: 'Vaccinne',
                hintStyle: TextStyle(color: Colors.grey[500])
              ),
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Please fill vaccinne field';
                }
                return null;
              },
            ),
          ),

          // description form field
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
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
                hintStyle: TextStyle(color: Colors.grey[500])
              ),
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Please fill description field';
                }
                return null;
              },
            ),
          ),


          const SizedBox(height: 50),
          SizedBox(
            width: 200,
            height: 45,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Theme.of(context).colorScheme.primary.withOpacity(0.5);
                    }
                    return null; // Use the component's default.
                  },
                ),
              ),
            child: const Text('Save'),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
              // If the form is valid, display a snackbar. In the real world,
              // you'd often call a server or save the information in a database.
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
              );
              }
            },
          ),
        ),

        ],
      ),
      ),
    );
  }
}