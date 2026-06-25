import 'package:flutter/material.dart';
import 'package:medicare/widgets/custom_elevated_button.dart';

class WelcomeScreen extends StatefulWidget {
  final VoidCallback onNext;
  final VoidCallback onFinish;
  const WelcomeScreen({super.key, required this.onNext, required this.onFinish});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(actions: [
          TextButton(onPressed: widget.onFinish, child: Text("Sauter"))
        ],),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/logo.png', width: 150, height: 100),
                  SizedBox(height: 20),
                  Image.asset('assets/images/welcome.png', width: 800, height: 300),
                  SizedBox(height: 20),
                  Text(
                    "Bienvenue sur",
                    textAlign: TextAlign.center,
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Medi",
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Care",
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Prenez soin de votre santé grâce à une plateform simple, rapide et sécurisé.",
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  CustomElevatedButton(text: "Commencer", onPressed: widget.onNext),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
