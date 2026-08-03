import 'package:flutter/material.dart';
import 'package:medicare_v2/widgets/filter_by_date.dart';

class DisponibilityScreen extends StatefulWidget {
  const DisponibilityScreen({super.key});

  @override
  State<DisponibilityScreen> createState() => _DisponibilityScreenState();
}

class _DisponibilityScreenState extends State<DisponibilityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                "Disponibilité",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              FilterByDate(),
            ],
          ),
        ),
      ),
    );
  }
}
