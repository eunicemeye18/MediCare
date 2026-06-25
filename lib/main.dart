import 'package:flutter/material.dart';
import 'package:medicare/onboarding/screens/confirmation_screen.dart';
import 'package:medicare/onboarding/screens/forgot_password.dart';
import 'package:medicare/onboarding/screens/home_page.dart';
import 'package:medicare/onboarding/screens/login_doctor_screen.dart';
import 'package:medicare/onboarding/screens/login_screen.dart';
import 'package:medicare/onboarding/screens/onboarding_screens.dart';
import 'package:medicare/onboarding/screens/sign_up_screen.dart';
import 'package:medicare/onboarding/screens/verification_otp_screen.dart';


void main() {
  runApp(
    MaterialApp(

      initialRoute: '/',
      routes: {
        '/':(context) => OnboardingScreen(),
        '/sign_up': (context) => SignUpScreen(),
        '/login': (context) => LoginScreen(),
        '/login_doctor':(context) => LoginDoctorScreen(),
        '/forgot_password':(context) => ForgotPassword(),
        '/verification_otp':(context) => VerificationOtpScreen(),
        '/confirmation':(context) => ConfirmationScreen(),
        '/home_page':(context) => HomePage()
      },


      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(5, 138, 179, 1),
          secondary: const Color.fromRGBO(13, 71, 161, 1),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 40,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          headlineMedium: TextStyle(fontSize: 28, fontFamily: 'Poppins'),
          titleLarge: TextStyle(fontSize: 22),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.white),
          bodyMedium: TextStyle(fontSize: 16, fontFamily: 'inter'),
          labelLarge: TextStyle(fontSize: 14),
        ),
      ),
      // home: OnboardingScreen(),
    ),
  );
}
