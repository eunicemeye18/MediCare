import 'package:flutter/material.dart';

class DetailsAppointmentScreen extends StatefulWidget {
  const DetailsAppointmentScreen({super.key});

  @override
  State<DetailsAppointmentScreen> createState() =>
      _DetailsAppointmentScreenState();
}

class _DetailsAppointmentScreenState extends State<DetailsAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Détails rendez-vous")),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Expanded(child: Image.asset('assets/images/profile.jpg')),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Jean Dupont"),
                        Text("20 ans • Masculin"),
                        Row(
                          children: [Icon(Icons.call), Text("+33 97353763573")],
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.verified_outlined, color: Colors.green),
                ],
              ),
            ),
            Text("Détails RDV"),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.red),
                      Text("Spécialité"),
                      Spacer(),
                      Text("Cardiologue"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.toc),
                      Text("Type"),
                      Spacer(),
                      Text("Consultation"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.calendar_month_outlined),
                      Text("Date"),
                      Spacer(),
                      Text("21 Novembre 2026"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.punch_clock),
                      Text("Motif"),
                      Spacer(),
                      Text("Douleurs thoraciques"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.mode),
                      Text("Notes"),
                      Spacer(),
                      Expanded(
                        child: Text(
                          "Le patient suit un traitement pour hypertension",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      TextEditingController _controller =
                          TextEditingController();
                      return AlertDialog(
                        title: Text("Ajoutez le motif de votre refus"),
                        content: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            hintText: "Saisissez le motif...",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1),
                            ),
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[200],
                            ),
                            child: Text(
                              "Annuler",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (_controller.text.trim().isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Le champ est obligatoire."),
                                  ),
                                );
                                return;
                              }
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            child: Text(
                              "Refuser",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.error,
                ),
                child: Row(
                  children: [
                    Icon(Icons.cancel_outlined),
                    Text("Refuser le rendez-vous"),
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
