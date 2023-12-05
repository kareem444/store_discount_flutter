import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 30,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.white70,
          size: 25,
        ),
        unselectedItemColor: Colors.white,
        backgroundColor: Color(0xff0c356a),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        displayMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        displaySmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headlineLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headlineMedium: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headlineSmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        titleLarge: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyLarge: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        bodyMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff0c356a),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          fixedSize: Size(MediaQuery.of(context).size.width * 0.8, 50),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
          foregroundColor: Colors.white,
        ),
      ),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: const MaterialColor(
          0xff0c356a,
          {
            50: Color(0xffe6e9f1), // Lightest shade
            100: Color(0xffbcc3d9),
            200: Color(0xff919ebf),
            300: Color(0xff6778a6),
            400: Color(0xff3d528c),
            500: Color(0xff0c356a), // Middle shade (normal color)
            600: Color(0xff092b57),
            700: Color(0xff062243),
            800: Color(0xff031830),
            900: Color(0xff000e1c), // Darkest shade
          },
        ),
        accentColor: const Color(0xffff5b22),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      useMaterial3: true,
    );
  }
}
