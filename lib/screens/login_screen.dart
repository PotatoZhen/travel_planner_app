import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F9FF),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              // Icon
              const Icon(
                Icons.flight,
                size: 80,
                color: Color(0xFF2196F3),
              ),

              const SizedBox(height: 20),


              // Title
              const Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0D47A1),
                ),
              ),

              const SizedBox(height: 8),


              const Text(
                "Login to continue your journey",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),


              const SizedBox(height: 40),


              // Email
              // TODO implement database to store email
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email_outlined),

                  filled: true,
                  fillColor: Colors.white,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),


              const SizedBox(height: 16),


              // Password
              TextField(
                obscureText: true,

                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock_outline),

                  filled: true,
                  fillColor: Colors.white,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),


              const SizedBox(height: 12),


              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Color(0xFF2196F3),
                    ),
                  ),
                ),
              ),


              const SizedBox(height: 20),


              // Login Button
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
                    "Login",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),


              const SizedBox(height: 20),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  const Text(
                    "Don't have an account? ",
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Color(0xFF2196F3),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}