import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicare_v2/widgets/custom_image_assets.dart';
import 'package:medicare_v2/widgets/historical_doctor_card.dart';
// import 'package:medicare_v2/widgets/historical_card.dart';
// import 'package:medicare_v2/widgets/historical_doctor_card.dart';

class HistoricalScreen extends StatefulWidget {
  const HistoricalScreen({super.key});

  @override
  State<HistoricalScreen> createState() => _HistoricalScreenState();
}

class _HistoricalScreenState extends State<HistoricalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                "Historique",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              HistoricalDoctorCard(
                colors: Colors.green,
                backColors: const Color.fromARGB(255, 235, 252, 236),
                text: "Terminé",
              ),
              HistoricalDoctorCard(
                colors: Colors.green,
                backColors: const Color.fromARGB(255, 235, 252, 236),
                text: "Terminé",
              ),
              HistoricalDoctorCard(
                colors: Colors.orange,
                backColors: const Color.fromARGB(255, 252, 247, 240),
                text: "En attente",
              ),
              HistoricalDoctorCard(
                colors: Colors.red,
                backColors: const Color.fromARGB(255, 254, 240, 238),
                text: "Rejetée",
              ),
              HistoricalDoctorCard(
                colors: Colors.grey,
                backColors: const Color.fromARGB(255, 228, 228, 228),
                text: "Annulée",
              ),
              HistoricalDoctorCard(
                colors: Colors.green,
                backColors: const Color.fromARGB(255, 235, 252, 236),
                text: "Terminé",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
