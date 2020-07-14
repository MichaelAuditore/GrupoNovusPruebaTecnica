import 'package:flutter/material.dart';
import 'package:novus_app/screens/welcome_screen.dart';
import 'package:novus_app/screens/login_screen.dart';
import 'package:novus_app/screens/registration_screen.dart';
import 'package:novus_app/screens/home_screen.dart';

// Main method to run my app
void main() => runApp(MyApp());

// Widget for Routes pages in my app
// Routes represents a way to get a page when we did a click in a button etc...
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        HomeScreen.id: (context) => HomeScreen()
      },
    );
  }
}