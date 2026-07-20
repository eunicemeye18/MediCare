import 'package:flutter/material.dart';
import 'package:medicare_v2/onboarding/screens/sign_up_screen.dart';
import 'package:medicare_v2/onboarding/screens/welcome2_screen.dart';
import 'package:medicare_v2/onboarding/screens/welcome3_screen.dart';
import 'package:medicare_v2/onboarding/screens/welcome_screen.dart';
import 'package:medicare_v2/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  void _nextPage() {
    _pageController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _finish() {
    // Ici tu navigues vers HomeScreen
    // Navigator.pushReplacementNamed(context, '/sign_up');
    Navigator.push(context, MaterialPageRoute(builder: (_) => SignUp()));
  }

  void _next() {
    if (currentPage == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => SignUp()));
    } else {
      _nextPage();
    }
  }
  
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                // physics: NeverScrollableScrollPhysics(), // désactive le swipe manuel
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                children: [
                  WelcomeScreen(onNext: _nextPage, onFinish: _finish),
                  Welcome2Screen(onNext: _nextPage, onFinish: _finish),
                  Welcome3Screen(onFinish: _finish),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Theme.of(context).colorScheme.secondary,
                dotColor: Colors.grey.shade300,
              ),
            ),
            const SizedBox(height: 20),
            CustomElevatedButton(text: "Suivant", onPressed: _next),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
