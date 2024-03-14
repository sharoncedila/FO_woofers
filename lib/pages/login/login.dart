import 'package:flutter/material.dart';
import 'package:woofers/pages/login/AllButton.dart';
import 'package:woofers/pages/login/InputTextField.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  
  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //login method
  void loginUser(){
    
  }

  //UI
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child : Center(
          child: Column(
            children: [
              const SizedBox(height:50),
              //logo
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0) ,
                child: Image.network(
                  'https://m.media-amazon.com/images/I/51TUItFpsXL.jpg',
                  width : 200,
                  height: 200,
                ),
              ),
                

              const SizedBox(height:0),
              //title
              Text(
                'WOOFERS',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  ),
              ),

              const SizedBox(height:10),
              //username field
              InputTextField(
                controller : usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height:10),
              //password field
              InputTextField(
                controller : passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height:10),
              //login button
              AllButton(
                onTap: loginUser,
              ),

              //Register
              const SizedBox(height:10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have any account yet?'),
                  SizedBox(width: 4),
                  Text(
                    'Register Now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),

              //est
              const SizedBox(height:10),
              Text(
                'EST. 2024',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 13,
                ),
              ),

              //version
              const SizedBox(height:10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'v.1.0.0',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}