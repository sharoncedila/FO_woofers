import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woofers/model/account_model.dart';
import 'package:woofers/pages/login_page.dart';
import 'package:woofers/services/account_service.dart';
import 'package:woofers/services/province_service.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    //return MaterialApp(
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              // logo
              Image.asset(
                'assets/woofers_icon/woofers_logo.png',
                width: 150,
                height: 150,
              ),

              const SizedBox(height: 10),
              // WOOFERS
              Text(
                'WOOFERS',
                style: GoogleFonts.lora(
                  fontSize: 18,
                  //color: Colors.white,
                  color: const Color.fromRGBO(40, 36, 36, 10000),
                  fontWeight: FontWeight.bold,
                ),
              ),

              const RegisterForm(),
            ],
          ),
        )),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class ProvinceDropdown extends StatefulWidget {
  final Function(String?) onProvinceSelected;

  const ProvinceDropdown({super.key, required this.onProvinceSelected});

  @override
  _ProvinceDropdownState createState() => _ProvinceDropdownState();
}

class _ProvinceDropdownState extends State<ProvinceDropdown> {
  String? _selectedProvince;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: FutureBuilder(
          future: ProvinceService().retrieveAllProvince(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("");
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
            return DropdownButtonFormField<String>(
              value: _selectedProvince,
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
                hintStyle: TextStyle(color: Colors.grey[500]),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedProvince = newValue;
                });
                widget.onProvinceSelected(newValue); // Notify parent widget
              },
              items: provinceNames.map((province) {
                return DropdownMenuItem<String>(
                  value: province,
                  child: Text(province),
                );
              }).toList(),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please choose your province';
                }
                return null;
              },
            );
          },
        ),
      ),
    );
  }
}

class _RegisterFormState extends State<RegisterForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<RegisterFormState>.
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _fullnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _addressController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  bool passwordVisible = true;
  bool passwordVisible2 = true;
  final _registerService = AccountService();
  String? _selectedProvince;

  late List<String?> provinceNames;

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
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: 'Username',
                    hintStyle: TextStyle(color: Colors.grey[500])),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please fill username field';
                  }
                  const usernamepattern = r'^[a-z]+$';
                  final regExp = RegExp(usernamepattern);
                  if (!regExp.hasMatch(value)) {
                    return 'Please enter only lowercase letter in this field';
                  }
                  return null;
                },
              ),
            ),

            // fullname form field
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: _fullnameController,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: 'Fullname',
                    hintStyle: TextStyle(color: Colors.grey[500])),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please fill fullname field';
                  }
                  const fullnamevalidator = ".*[0-9].*";
                  final regExp = RegExp(fullnamevalidator);
                  if (regExp.hasMatch(value)) {
                    return 'Please enter only character in this field';
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
                controller: _emailController,
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
                    hintStyle: TextStyle(color: Colors.grey[500])),
                validator: (value) {
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

            //province here
            const SizedBox(height: 15),
            // Extracted Province Dropdown
            ProvinceDropdown(
              onProvinceSelected: (newValue) {
                setState(() {
                  _selectedProvince = newValue;
                });
              },
            ),

            // address form field
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: _addressController,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: 'Address',
                    hintStyle: TextStyle(color: Colors.grey[500])),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please fill address field';
                  }
                  const addressvalidator = ".*[0-9].*";
                  final regExp = RegExp(addressvalidator);
                  if (regExp.hasMatch(value)) {
                    return 'Please enter only character in this field';
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
                controller: _phoneNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(color: Colors.grey[500])),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please fill phone number field';
                  }
                  const pattern =
                      r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
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
                  controller: _passwordController,
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
                  // final String password = passwordController.text,
                  validator: (password) {
                    if (password == null || password.isEmpty) {
                      return 'Please fill password field';
                    }
                    if (password.length < 8) {
                      return 'Password must contain more than equal to 8 characters';
                    }
                    if (!password.contains(RegExp(r'[A-Z]'))) {
                      return 'Password must contain at least 1 uppercase letter';
                    }
                    // Contains at least one lowercase letter
                    if (!password.contains(RegExp(r'[a-z]'))) {
                      return 'Password must contain at least 1 lowercase letter';
                    }
                    // Contains at least one digit
                    if (!password.contains(RegExp(r'[0-9]'))) {
                      return 'Password must contain at least 1 digit';
                    }
                    // Contains at least one special character
                    if (!password.contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) {
                      return 'Password must contain at least 1 special character';
                    }
                    return null;
                  },
                )),

            // confirm password text field
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: _confirmPasswordController,
                obscureText: passwordVisible2,
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
                    icon: Icon(passwordVisible2
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(
                        () {
                          passwordVisible2 = !passwordVisible2;
                        },
                      );
                    },
                  ),
                  alignLabelWithHint: false,
                ),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please fill confirmation password field';
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
                  if (value != _passwordController.text) {
                    return 'Password doesn\'t match';
                  }
                  return null;
                },
              ),
            ),

            const SizedBox(height: 30),
            SizedBox(
              width: 200,
              height: 45,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
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
                child: const Text('Register'),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final RequestRegisterModel registerReq =
                        RequestRegisterModel(
                            email: _emailController.text,
                            fullName: _fullnameController.text,
                            password: _passwordController.text,
                            username: _usernameController.text,
                            provinceName: _selectedProvince!,
                            phoneNumber: _phoneNumberController.text);

                    _registerService
                        .register(registerReq)
                        .then((value) => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (_) => const LoginPage())))
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

            // login now
            const SizedBox(height: 2),
            // login now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Have an account? ',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.7),
                  child: TextButton(
                    child: const Text(
                      'Login now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
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
