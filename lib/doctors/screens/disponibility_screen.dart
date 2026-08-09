import 'package:flutter/material.dart';
import 'package:medicare_v2/widgets/FilterDropdown.dart';
import 'package:medicare_v2/widgets/disponibility_doctor_card.dart';

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
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Filterdropdown(
                      values: [
                        "Cette Semaine",
                        "Ce Mois",
                        "Mois Prochain",
                        "Choisir une date",
                      ],
                      hint: "Cette Semaine",
                    ),
                    SizedBox(height: 12),
                    DisponibilityDoctorCard(
                      textDay: "Lundi",
                      textDate: "19 Août",
                      textHourOne: "08:00 - 12:00",
                      textHourTwo: "14:00 - 17:30",
                    ),
                    DisponibilityDoctorCard(
                      textDay: "Mardi",
                      textDate: "20 Août",
                      textHourOne: "08:00 - 12:00",
                      textHourTwo: "14:00 - 17:30",
                    ),
                    DisponibilityDoctorCard(
                      textDay: "Mercredi",
                      textDate: "21 Août",
                      textHourOne: "08:00 - 12:00",
                      textHourTwo: "",
                    ),
                    DisponibilityDoctorCard(
                      textDay: "Jeudi",
                      textDate: "22 Août",
                      textHourOne: "08:00 - 12:00",
                      textHourTwo: "14:00 - 17:30",
                    ),
                    DisponibilityDoctorCard(
                      textDay: "Vendredi",
                      textDate: "23 Août",
                      textHourOne: "08:00 - 12:00",
                      textHourTwo: "14:00 - 17:30",
                    ),
                    DisponibilityDoctorCard(
                      textDay: "Samedi",
                      textDate: "24 Août",
                      textHourOne: "08:00 - 12:00",
                      textHourTwo: "14:00 - 17:30",
                    ),
                    DisponibilityDoctorCard(
                      textDay: "Dimanche",
                      textDate: "25 Août",
                      textHourOne: "08:00 - 12:00",
                      textHourTwo: "14:00 - 17:30",
                    ),
                    // DisponibilityDoctorCard(text: '08:00 - 10:00'),
                    // DisponibilityDoctorCard(text: '10:30 - 12:30'),
                    // DisponibilityDoctorCard(text: '14:00 - 16:00'),
                    // DisponibilityDoctorCard(text: '16:30 - 18:30'),
                    SizedBox(height: 25),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 60),
                            Icon(Icons.add, color: Colors.white),
                            SizedBox(width: 4),
                            Text(
                              "Ajoutez un créneau",
                              style: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
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
