import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:woofers/pages/login_page.dart';
import 'package:email_validator/email_validator.dart';

class EditMyProfile extends StatelessWidget {
  const EditMyProfile({super.key});

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
                'assets/profile_picture/person1.jpg',
                width: 100, height: 100,
              ),

              const SizedBox(height: 10),
              // WOOFERS
              Text(
                'Person1',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'San Francisco'
                  ),
              ),

              const EditMyProfileForm(),
              ],
            ),
          )
        ),
    );
  }
}

class EditMyProfileForm extends StatefulWidget {
  const EditMyProfileForm({super.key});

  @override
  EditMyProfileFormState createState() {
    return EditMyProfileFormState();
  }
}

class EditMyProfileFormState extends State<EditMyProfileForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<EditMyProfileFormState>.
  final _formKey = GlobalKey<FormState>();
  bool passwordVisible=true;
  String _password='';

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // username form field
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
                hintText: 'Username',
                hintStyle: TextStyle(color: Colors.grey[500])
              ),
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Please fill username field';
                }
                return null;
              },
            ),
          ),

          // email form field
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.grey[500])
              ),
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Please fill email field';
                }
                bool isvalid = EmailValidator.validate(value);
                if (isvalid == false) {
                  return 'Please check inserted email';
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
                enabledBorder: OutlineInputBorder(
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

          // phone number form field
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
                hintText: 'Phone Number',
                hintStyle: TextStyle(color: Colors.grey[500])
              ),
              validator: (value){
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

          // password form field
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              obscureText: passwordVisible,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.grey[500]),
                suffixIcon: IconButton(
                  icon: Icon(passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(
                      () {
                        passwordVisible = !passwordVisible;
                      },
                    );
                  },
                ),
                alignLabelWithHint: false,
              ),
              keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
              validator: (_password){
                if (_password == null || _password.isEmpty) {
                  return 'Please fill password field';
                }
                if (_password.length < 8) {
                  return 'Password must contain more than equal to 8 characters';
                }
                if (!_password.contains(RegExp(r'[A-Z]'))) {
                  return 'Password must contain at least 1 uppercase letter';
                }
                // Contains at least one lowercase letter
                if (!_password.contains(RegExp(r'[a-z]'))) {
                  return 'Password must contain at least 1 lowercase letter';
                }
                // Contains at least one digit
                if (!_password.contains(RegExp(r'[0-9]'))) {
                  return 'Password must contain at least 1 digit';
                }
                // Contains at least one special character
                if (!_password.contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) {
                  return 'Password must contain at least 1 special character';
                }
                return null;
              },
            ),
          ),

          // confirm password text field
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              obscureText: passwordVisible,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
                hintText: 'Confirm Password',
                hintStyle: TextStyle(color: Colors.grey[500]),
                suffixIcon: IconButton(
                  icon: Icon(passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(
                      () {
                        passwordVisible = !passwordVisible;
                      },
                    );
                  },
                ),
                alignLabelWithHint: false,
              ),
              keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Please fill password field';
                }
                if (value.length < 8) {
                  return 'Password must contain more than equal to 8 characters';
                }
                if (!value.contains(RegExp(r'[A-Z]'))) {
                  return 'Password must contain at least 1 uppercase letter';
                }
                // Contains at least one lowercase letter
                if (!value.contains(RegExp(r'[a-z]'))) {
                  return 'Password must contain at least 1 lowercase letter';
                }
                // Contains at least one digit
                if (!value.contains(RegExp(r'[0-9]'))) {
                  return 'Password must contain at least 1 digit';
                }
                // Contains at least one special character
                if (!value.contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) {
                  return 'Password must contain at least 1 special character';
                }
                if (value != _password) {
                  return 'Password doesn\'t match';
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