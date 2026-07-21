import 'package:feda_flutter/feda_flutter.dart';
import 'package:flutter/material.dart';
import 'package:medicare_v2/config/fedapay_config.dart';
import 'package:medicare_v2/models/doctor.dart';
import 'package:medicare_v2/onboarding/screens/onboarding_screens.dart';
import 'package:go_router/go_router.dart';
import 'package:medicare_v2/onboarding/screens/confirmation_screen.dart';
import 'package:medicare_v2/onboarding/screens/forgot_password.dart';
// import 'package:medicare/onboarding/screens/login_screen.dart';
import 'package:medicare_v2/onboarding/screens/sign_up_screen.dart';
import 'package:medicare_v2/onboarding/screens/verification_otp_screen.dart';
import 'package:medicare_v2/pages/activities_page.dart';
import 'package:medicare_v2/pages/details_doctor_page.dart';
import 'package:medicare_v2/pages/favorites_page.dart';
import 'package:medicare_v2/pages/historical_page.dart';
import 'package:medicare_v2/pages/home_page.dart';
import 'package:medicare_v2/pages/list_doctors_page.dart';
import 'package:medicare_v2/pages/profile_modificaton_page.dart';
import 'package:medicare_v2/pages/profile_page.dart';
import 'package:medicare_v2/pages/shell_page.dart';
import 'package:medicare_v2/pages/success_page_screen.dart';
import 'package:medicare_v2/pages/summary_screen_page.dart';

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
      builder: (context, state) {
        final doctor = state.extra as Doctor;

        return DetailsDoctorPage(doctor: doctor);
      },
    ),
    GoRoute(
      path: '/list_doctor',
      builder: (context, state) => ListDoctorsPage(),
    ),
    GoRoute(
      path: '/historical_page',
      builder: (context, state) => HistoricalPage(),
    ),
    GoRoute(
      path: '/summary_page',
      builder: (context, state) => SummaryScreenPage(),
    ),
    GoRoute(
      path: '/profile_modification',
      builder: (context, state) => ProfileModificatonPage(),
    ),
    GoRoute(
      path: '/success_page',
      builder: (context, state) => SuccessPageScreen(),
    ),
    ShellRoute(
      builder: (context, state, child) {
        return ShellPage(child: child);
      },
      routes: [
        GoRoute(path: '/home', builder: (context, state) => const HomePage()),
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
    WidgetsFlutterBinding.ensureInitialized();

  FedaFlutter.applyConfig(
    apiKey: FedaPayConfig.apiKey,
    environment: ApiEnvironment.sandbox,
  );


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
