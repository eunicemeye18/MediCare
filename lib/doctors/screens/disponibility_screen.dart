import 'package:flutter/material.dart';
import 'package:medicare_v2/widgets/disponibility_doctor_card.dart';
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
      backgroundColor: Colors.white70,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mardi",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    DisponibilityDoctorCard(text: '08:00 - 10:00'),
                    DisponibilityDoctorCard(text: '10:30 - 12:30'),
                    DisponibilityDoctorCard(text: '14:00 - 16:00'),
                    DisponibilityDoctorCard(text: '16:30 - 18:30'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
