import 'package:flutter/material.dart';
import 'package:medicare/widgets/custom_elevated_button.dart';

class WelcomeScreen extends StatefulWidget {
  final VoidCallback onNext;
  const WelcomeScreen({super.key, required this.onNext});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Bienvenue sur MediCare",
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.displayLarge,
            ),
            const SizedBox(height: 20),
            Image.asset('assets/images/logo.png', width: 200, height: 200),
            const SizedBox(height: 150),
            CustomElevatedButton(text: "Commencer", onPressed: widget.onNext),
          ],
        ),
      );
    
  }
}
