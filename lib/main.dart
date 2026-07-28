import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': ((context) => SignupScreen()),
        '/home': ((context) => HomeScreen()),

      }
  ));
}


