import 'package:flutter/material.dart';
import '../../widgets/flying_plane_logo.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Add this
                      children: [
                        Icon(
                          Icons.flight,
                          size: 100,
                          color: Color(0xFF2196F3),

                        ),

                        Text(
                          'TRAVEL',
                          style: TextStyle(
                              fontSize: 48.0,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.bold,
                            color: Color(0xFF0D47A1),
                          ),
                        ),
                      ],
                    ),
                  ),

                SizedBox(height: 50),

                Column(
                  children: [
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF2196F3),
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text(
                            'Login',
                          style: TextStyle(
                            fontSize: 20,

                          ),
                        ),
                      ),
                    ),

                  SizedBox(height: 16),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,38.0),
                    child: SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFBBDEFB),
                          foregroundColor: Color(0xFF0D47A1),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');

                        },
                        child: const Text(
                          'SignUp',
                          style: TextStyle(
                              fontSize: 20
                          ),
                        ),
                      ),
                    ),
                  ),
                  ],
                ),




              ],
            ),
          ),
        ),
      ),
    );
  }
}