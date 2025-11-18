import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF4ED7F5);
  static const Color accent = Color(0xFF00B4FF);
  static const Color background = Colors.white;

  static ThemeData light() {
    return ThemeData(
      primaryColor: primary,
      colorScheme: ColorScheme.fromSwatch().copyWith(primary: primary),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.grey.shade100,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: primary),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
