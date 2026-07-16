import 'package:flutter/material.dart';
import 'package:medicare/widgets/historical_card.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({super.key});

  @override
  State<ActivitiesPage> createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Historique",
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: HistoricalCard(
              colors: Colors.green,
              backColors: const Color.fromARGB(255, 235, 252, 236),
              text: "Terminé",
            ),
          ),
          Expanded(
            child: HistoricalCard(
              colors: Colors.orange,
              backColors: const Color.fromARGB(255, 252, 247, 240),
              text: "En attente",
            ),
          ),
          Expanded(
            child: HistoricalCard(
              colors: Colors.red,
              backColors: const Color.fromARGB(255, 254, 240, 238),
              text: "Rejetée",
            ),
          ),
          Expanded(
            child: HistoricalCard(
              colors: Colors.grey,
              backColors: const Color.fromARGB(255, 228, 228, 228),
              text: "Annulée",
            ),
          ),
          Expanded(
            child: HistoricalCard(
              colors: Colors.green,
              backColors: const Color.fromARGB(255, 235, 252, 236),
              text: "Terminé",
            ),
          ),
        ],
      ),
    );
  }
}
