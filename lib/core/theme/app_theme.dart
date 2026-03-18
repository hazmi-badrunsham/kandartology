import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// 🔹 Add google_fonts package first:
// flutter pub add google_fonts

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      // 🍛 Nasi Kandar color palette
      primaryColor: const Color(0xFFD4A017), // Turmeric gold
      scaffoldBackgroundColor: const Color(0xFFFFFDF5), // Off-white (rice)
      colorScheme: ColorScheme.light(
        primary: const Color(0xFFD4A017),
        secondary: const Color(0xFFC41E3A), // Chili red
        surface: const Color(0xFFFFFDF5),
      ),
      // Clean, readable font
      textTheme: GoogleFonts.latoTextTheme(),
    
      // AppBar styling
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFFFFDF5),
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Color(0xFF2D2D2D),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}