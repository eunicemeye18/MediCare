import 'package:flutter/material.dart';
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "Historique",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        HistoricalDoctorCard(
                          colors: Colors.green,
                          backColors: const Color.fromARGB(255, 235, 252, 236),
                          text: "Terminé",
                        ),
                        SizedBox(height: 8),
                        HistoricalDoctorCard(
                          colors: Colors.green,
                          backColors: const Color.fromARGB(255, 235, 252, 236),
                          text: "Terminé",
                        ),
                        SizedBox(height: 8),
                        HistoricalDoctorCard(
                          colors: Colors.orange,
                          backColors: const Color.fromARGB(255, 252, 247, 240),
                          text: "En attente",
                        ),
                        SizedBox(height: 8),
                        HistoricalDoctorCard(
                          colors: Colors.red,
                          backColors: const Color.fromARGB(255, 254, 240, 238),
                          text: "Rejetée",
                        ),
                        SizedBox(height: 8),
                        HistoricalDoctorCard(
                          colors: Colors.grey,
                          backColors: const Color.fromARGB(255, 228, 228, 228),
                          text: "Annulée",
                        ),
                        SizedBox(height: 8),
                        HistoricalDoctorCard(
                          colors: Colors.green,
                          backColors: const Color.fromARGB(255, 235, 252, 236),
                          text: "Terminé",
                        ),
                        SizedBox(height: 8),
                        HistoricalDoctorCard(
                          colors: Colors.green,
                          backColors: const Color.fromARGB(255, 235, 252, 236),
                          text: "Terminé",
                        ),
                        SizedBox(height: 8),
                        HistoricalDoctorCard(
                          colors: Colors.green,
                          backColors: const Color.fromARGB(255, 235, 252, 236),
                          text: "Terminé",
                        ),
                        SizedBox(height: 8),
                        HistoricalDoctorCard(
                          colors: Colors.orange,
                          backColors: const Color.fromARGB(255, 252, 247, 240),
                          text: "En attente",
                        ),
                        SizedBox(height: 8),
                        HistoricalDoctorCard(
                          colors: Colors.red,
                          backColors: const Color.fromARGB(255, 254, 240, 238),
                          text: "Rejetée",
                        ),
                        SizedBox(height: 8),
                        HistoricalDoctorCard(
                          colors: Colors.grey,
                          backColors: const Color.fromARGB(255, 228, 228, 228),
                          text: "Annulée",
                        ),
                        SizedBox(height: 8),
                        HistoricalDoctorCard( 
                          colors: Colors.green,
                          backColors: const Color.fromARGB(255, 235, 252, 236),
                          text: "Terminé",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
