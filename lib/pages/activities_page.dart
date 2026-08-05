import 'package:flutter/material.dart';
import 'package:medicare_v2/widgets/historical_card.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({super.key});

  @override
  State<ActivitiesPage> createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title:
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Historique",
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HistoricalCard(
                      colors: Colors.green,
                      backColors: const Color.fromARGB(255, 235, 252, 236),
                      text: "Terminé",
                    ),
                    HistoricalCard(
                      colors: Colors.orange,
                      backColors: const Color.fromARGB(255, 252, 247, 240),
                      text: "En attente",
                    ),
                    HistoricalCard(
                      colors: Colors.red,
                      backColors: const Color.fromARGB(255, 254, 240, 238),
                      text: "Rejetée",
                    ),
                    HistoricalCard(
                      colors: Colors.grey,
                      backColors: const Color.fromARGB(255, 228, 228, 228),
                      text: "Annulée",
                    ),
                    HistoricalCard(
                      colors: Colors.green,
                      backColors: const Color.fromARGB(255, 235, 252, 236),
                      text: "Terminé",
                    ),
                    HistoricalCard(
                      colors: Colors.green,
                      backColors: const Color.fromARGB(255, 235, 252, 236),
                      text: "Terminé",
                    ),
                    HistoricalCard(
                      colors: Colors.orange,
                      backColors: const Color.fromARGB(255, 252, 247, 240),
                      text: "En attente",
                    ),
                    HistoricalCard(
                      colors: Colors.red,
                      backColors: const Color.fromARGB(255, 254, 240, 238),
                      text: "Rejetée",
                    ),
                    HistoricalCard(
                      colors: Colors.grey,
                      backColors: const Color.fromARGB(255, 228, 228, 228),
                      text: "Annulée",
                    ),
                    HistoricalCard(
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
    );
  }
}
