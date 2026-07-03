import 'package:flutter/material.dart';

class Welcome2Screen extends StatefulWidget {
  final VoidCallback onNext;
  final VoidCallback onFinish;
  const Welcome2Screen({
    super.key,
    required this.onNext,
    required this.onFinish,
  });

  @override
  State<Welcome2Screen> createState() => _Welcome2ScreenState();
}

class _Welcome2ScreenState extends State<Welcome2Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(onPressed: widget.onFinish, child: Text("Sauter")),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                    width: 800,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/welcome2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                      SizedBox(height: 20),
                      Text(
                        "Réservez votre",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "consultation",
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        "en quelques clics",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Consultez les disponibilités des médecins et choisissez l'heure qui vous convient.",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
               
            ],
          ),
        ),
      ),
    );
  }
}
