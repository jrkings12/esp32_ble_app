import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/splash_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/menu_screen.dart';
import 'screens/live_bac_screen.dart';
import 'screens/history_screen.dart';

void main() {
  runApp(const BacTrackerApp());
}

class BacTrackerApp extends StatelessWidget {
  const BacTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BAC Tracker',
      theme: AppTheme.light(),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        WelcomeScreen.routeName: (_) => const WelcomeScreen(),
        LoginScreen.routeName: (_) => const LoginScreen(),
        SignupScreen.routeName: (_) => const SignupScreen(),
        MenuScreen.routeName: (_) => const MenuScreen(),
        LiveBacScreen.routeName: (_) => const LiveBacScreen(),
        HistoryScreen.routeName: (_) => const HistoryScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
