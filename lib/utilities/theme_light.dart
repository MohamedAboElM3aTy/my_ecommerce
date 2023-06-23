import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myTheme() {
  return ThemeData(
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      titleSmall: GoogleFonts.lato(
        fontWeight: FontWeight.bold,
      ),
      titleMedium: GoogleFonts.lato(
        fontWeight: FontWeight.bold,
      ),
      titleLarge: GoogleFonts.lato(
        fontWeight: FontWeight.bold,
      ),
    ),
    scaffoldBackgroundColor: const Color(0xFFE5E5E5),
    primaryColor: Colors.red,
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(
        color: Colors.grey,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2),
        borderSide: const BorderSide(
          color: Colors.grey,
        ),
      ),
    ),
  );
}
