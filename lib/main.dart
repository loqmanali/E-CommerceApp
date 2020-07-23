import 'package:e_commerce/screen/login_screen.dart';
import 'package:e_commerce/screen/signup_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id : (context) => LoginScreen(),
        SignupScreen.id : (context) => SignupScreen(),
      },
    );
  }
}
