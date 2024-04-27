import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:woofers/components/bottom_menu.dart';
import 'package:woofers/model/login_model.dart';
import 'package:woofers/pages/chatlist_page.dart';
import 'package:woofers/pages/feeds_page.dart';
import 'package:woofers/pages/user_profile_page.dart';
import 'package:woofers/services/account/login_service.dart';
import 'package:woofers/pages/register_page.dart';
import 'package:email_validator/email_validator.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[300],
        body: // SafeArea(
          // child: 
          Center(
            child: SingleChildScrollView(
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
              Text(
                'WOOFERS',
                style: GoogleFonts.lora(
                  fontSize: 18,
                  color: Color.fromRGBO(40,36,36,10000),
                  fontWeight: FontWeight.bold,
                  ),
              ),

              const LoginForm(),
              ],
            ),
          ),
         ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<LoginFormState>.
  final _formKey = GlobalKey<FormState>();
  bool passwordVisible=true;
  final _loginService = LoginService();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      //child: Center(
        child: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // email form field
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              //controller email
              controller : _emailController,
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

          // password form field
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
	      //controller password
              controller : _passwordController,
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
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                  final RequestLoginModel req = RequestLoginModel(
                      email: _emailController.text,
                      password: _passwordController.text);

                  _loginService
                      .login(req)
                      .then((value) => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (_) => const BottomMenu())))
                      .onError<Exception>((error, stackTrace) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        //return Text(error.toString());
                        return SimpleDialog(
                          children: [Text(error.toString())],
                        );
                      },
                    );
                  });
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
      ),
    );
  }
}
