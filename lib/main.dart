import 'package:flutter/material.dart';
import 'package:medicare/onboarding/screens/onboarding_screens.dart';
import 'package:go_router/go_router.dart';
import 'package:medicare/onboarding/screens/confirmation_screen.dart';
import 'package:medicare/onboarding/screens/forgot_password.dart';
// import 'package:medicare/onboarding/screens/login_screen.dart';
import 'package:medicare/onboarding/screens/sign_up_screen.dart';
import 'package:medicare/onboarding/screens/verification_otp_screen.dart';
import 'package:medicare/pages/activities_page.dart';
import 'package:medicare/pages/details_doctor_page.dart';
import 'package:medicare/pages/favorites_page.dart';
import 'package:medicare/pages/home_page.dart';
import 'package:medicare/pages/list_doctors_page.dart';
import 'package:medicare/pages/profile_page.dart';
import 'package:medicare/pages/shell_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => OnboardingScreen()),
    GoRoute(path: '/sign_up', builder: (context, state) => SignUp()),
    // GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
    GoRoute(
      path: '/forgot_password',
      builder: (context, state) => ForgotPassword(),
    ),
    GoRoute(
      path: '/verification_otp',
      builder: (context, state) => VerificationOtpScreen(),
    ),
    GoRoute(
      path: '/confirmation',
      builder: (context, state) => ConfirmationScreen(),
    ),
    GoRoute(
      path: '/details_doctor',
      builder: (context, state) => DetailsDoctorPage(),
    ),
    GoRoute(
      path: '/list_doctor',
      builder: (context, state) => ListDoctorsPage(),
    ),
    ShellRoute(
  builder: (context, state, child) {
    return ShellPage(child: child);
  },
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/favorites',
      builder: (context, state) => const FavoritesPage(),
    ),
    GoRoute(
      path: '/activities',
      builder: (context, state) => const ActivitiesPage(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfilePage(),
    ),
  ],
),
  ],
);
void main() {
  runApp(
    // MaterialApp(
    MaterialApp.router(
      // initialRoute: '/',
      // routes: {
      //   '/':(context) => OnboardingScreen(),
      //   '/sign_up': (context) => SignUpScreen(),
      //   '/login': (context) => LoginScreen(),
      //   '/login_doctor':(context) => LoginDoctorScreen(),
      //   '/forgot_password':(context) => ForgotPassword(),
      //   '/verification_otp':(context) => VerificationOtpScreen(),
      //   '/confirmation':(context) => ConfirmationScreen(),
      //   '/home':(context) => HomePage()
      // },
      routerConfig: router,

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
          titleLarge: TextStyle(fontSize: 24),
          titleMedium: TextStyle(fontSize: 22),
          titleSmall: TextStyle(fontSize: 20),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.white),
          bodyMedium: TextStyle(fontSize: 16, fontFamily: 'inter'),
          bodySmall: TextStyle(fontSize: 14),
        ),
      ),
      // home: OnboardingScreen(),
    ),
  );
}
