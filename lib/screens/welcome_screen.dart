import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcome';
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.water_drop, size: 96, color: Colors.black),
                const SizedBox(height: 20),
                const Text('Welcome to BAC Tracker', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, LoginScreen.routeName),
                  child: const Text('Login'),
                ),
                const SizedBox(height: 12),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFF4ED7F5)),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  ),
                  onPressed: () => Navigator.pushNamed(context, SignupScreen.routeName),
                  child: const Text('Sign Up', style: TextStyle(color: Color(0xFF4ED7F5))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
