import 'package:flutter/material.dart';
import 'package:medicare/widgets/custom_elevated_button.dart';

class Welcome3Screen extends StatefulWidget {
  final VoidCallback onFinish;
  const Welcome3Screen({super.key, required this.onFinish});

  @override
  State<Welcome3Screen> createState() => _Welcome3ScreenState();
}

class _Welcome3ScreenState extends State<Welcome3Screen> {
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
                  Image.asset('assets/images/welcome3.jpg', width: 800, height: 300),
                  SizedBox(height: 20),
                  Text(
                    "Payez vos",
                    textAlign: TextAlign.center,
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "consultations",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ), 
                  Text(
                    "en toute sécurité",
                    textAlign: TextAlign.center,
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Réglez votre réservation ou votre consultation avec votre moyen de paiement préféré.",
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  CustomElevatedButton(text: "Suivant", onPressed: widget.onFinish),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}