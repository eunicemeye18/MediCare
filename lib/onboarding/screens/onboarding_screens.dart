import 'package:flutter/material.dart';
import 'package:medicare/onboarding/screens/login_screen.dart';
import 'package:medicare/onboarding/screens/sign_up_screen.dart';
import 'package:medicare/onboarding/screens/welcome2_screen.dart';
import 'package:medicare/onboarding/screens/welcome3_screen.dart';
import 'package:medicare/onboarding/screens/welcome_screen.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  void _nextPage() {
    _pageController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _finish() {
    // Ici tu navigues vers HomeScreen
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(), // désactive le swipe manuel
        children: [
          WelcomeScreen(onNext: _nextPage, onFinish: _finish),
          Welcome2Screen(onNext: _nextPage, onFinish: _finish),
          Welcome3Screen(onNext: _nextPage, onFinish: _finish),
          SignUpScreen(onNext: _nextPage),
          LoginScreen(onFinish: _finish)
        ],
      ),
    );
  }
}
