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
      appBar: AppBar(
        title: Text(
          "Détails rendez-vous",
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey.withValues(alpha: 0.2),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.withValues(alpha: 0.2),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              "assets/images/profile.jpg",
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Jean Dupont"),
                                Text("20 ans • Masculin"),
                                Row(
                                  children: [
                                    Icon(Icons.call),
                                    Text("+33 97353763573"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.verified_outlined, color: Colors.green),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.favorite, color: Colors.red),
                          SizedBox(width: 4),
                          Text("Spécialité"),
                          Spacer(),
                          Text("Cardiologue"),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.toc),
                          SizedBox(width: 4),
                          Text("Type"),
                          Spacer(),
                          Text("Consultation"),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(width: 4),
                          Text("Date"),
                          Spacer(),
                          Text("21 Novembre 2026"),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(width: 4),
                          Text("Heure"),
                          Spacer(),
                          Text("10:30"),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.punch_clock),
                          SizedBox(width: 4),
                          Text("Motif"),
                          Spacer(),
                          Text("Douleurs thoraciques"),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.mode),
                          SizedBox(width: 4),
                          Text("Notes"),
                          Spacer(),
                          Expanded(
                            child: Text(
                              "Le patient suit un traitement pour hypertension",
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
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
                          title: Text(
                            "Ajoutez le motif de votre refus",
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          content: TextField(
                            style: TextStyle(color: Colors.black),
                            controller: _controller,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                              ),
                              hintText: "Saisissez le motif...",
                              hintStyle: Theme.of(context).textTheme.bodySmall,
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
                                      content: Text(
                                        "Le champ est obligatoire.",
                                      ),
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Icon(Icons.cancel_outlined, color: Colors.white),
                        SizedBox(width: 4),
                        Text(
                          "Refuser le rendez-vous",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
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
