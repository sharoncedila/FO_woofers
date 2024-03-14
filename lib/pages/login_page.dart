import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:woofers/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
              // logo
              Image.asset(
                'assets/woofers_icon/woofers.jpg',
                width: 100, height: 100,
              ),

              const SizedBox(height: 10),
              // WOOFERS
              const Text(
                'WOOFERS',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'San Francisco'
                  ),
              ),

              const LoginForm(),
              ],
            ),
          )
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<LoginFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      //child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // email form field
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
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.grey[500])
              ),
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Please enter valid email';
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
              ),
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Please enter valid password';
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
            child: const Text('Login'),
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

        // register now
        const SizedBox(height: 10),
          // register now

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have any account? ',
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.7),
                child: TextButton(
                  child: const Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterPage()),
                    );
                  },
                ),
              ),
            ],
          )
    ],
      ),
      //),
    );
  }
}