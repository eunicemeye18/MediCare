import 'package:flutter/material.dart';
import 'package:medicare/widgets/custom_elevated_button.dart';

class Welcome2Screen extends StatefulWidget {
  final VoidCallback onNext;
  final VoidCallback onFinish;
  const Welcome2Screen({super.key, required this.onNext, required this.onFinish});

  @override
  State<Welcome2Screen> createState() => _Welcome2ScreenState();
}

class _Welcome2ScreenState extends State<Welcome2Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(actions: [
          TextButton(onPressed: widget.onFinish, child: Text("Sauter"))
        ],),
        body: Padding(
          padding: const EdgeInsets.all(4),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/welcome2.jpg', width: 800, height: 300),
                SizedBox(height: 20),
                Text(
                  "Réservez votre",
                  textAlign: TextAlign.center,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  "consultation",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "en quelques clics",
                  textAlign: TextAlign.center,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text(
                  "Consultez les disponibilités des médecins et choisissez l'heure qui vous convient.",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                CustomElevatedButton(text: "Suivant", onPressed: widget.onNext),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
