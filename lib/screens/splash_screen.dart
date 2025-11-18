import 'dart:async';
import 'package:flutter/material.dart';
import '../utils/storage.dart';
import 'menu_screen.dart';
import 'welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _goNext();
  }

  Future<void> _goNext() async {
    await Future.delayed(const Duration(milliseconds: 1200));
    final saved = await Storage.isLoggedIn();
    if (saved) {
      Navigator.pushReplacementNamed(context, MenuScreen.routeName);
    } else {
      Navigator.pushReplacementNamed(context, WelcomeScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.water_drop, size: 120, color: Colors.white),
            SizedBox(height: 16),
            Text('BAC Tracker', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
