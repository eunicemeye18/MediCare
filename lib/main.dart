import 'package:flutter/material.dart';
import 'package:medicare/onboarding/screens/onboardin_screens.dart';
// import 'package:medicare/onboarding/screens/welcome_screen.dart';
// import 'package:medicare/onboarding/screens/login_screen.dart';
/// import 'package:medicare/onboarding/screens/sign_up_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(5, 138, 179, 1),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          headlineMedium: TextStyle(fontSize: 28),
          titleLarge: TextStyle(fontSize: 22),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 16),
          labelLarge: TextStyle(fontSize: 14),
        ),
      ),
      home: OnboardingScreen(),
    ),
  );
}