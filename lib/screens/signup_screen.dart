import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F9FF),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),

          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const SizedBox(height: 60),

                // Icon
                const Icon(
                  Icons.flight,
                  size: 80,
                  color: Color(0xFF2196F3),
                ),

                const SizedBox(height: 20),


                // Title
                const Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0D47A1),
                  ),
                ),


                const SizedBox(height: 10),


                const Text(
                  'Start planning your next adventure',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),


                const SizedBox(height: 40),


                // Name field
                // TODO implement database to store username
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    prefixIcon: const Icon(Icons.person_outline),

                    filled: true,
                    fillColor: Colors.white,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),


                const SizedBox(height: 16),


                // Email field
                // TODO implement database to store email
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: const Icon(Icons.email_outlined),

                    filled: true,
                    fillColor: Colors.white,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),


                const SizedBox(height: 16),


                // Password field
                // TODO implement database to store password
                TextField(
                  obscureText: true,

                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.lock_outline),

                    filled: true,
                    fillColor: Colors.white,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),


                const SizedBox(height: 30),


                // Sign Up button
                SizedBox(
                  width: double.infinity,
                  height: 50,

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2196F3),
                      foregroundColor: Colors.white,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                    onPressed: () {},

                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),


                const SizedBox(height: 20),


                // Login link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    const Text(
                      'Already have an account?',
                    ),

                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },

                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Color(0xFF2196F3),
                          fontWeight: FontWeight.bold,
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