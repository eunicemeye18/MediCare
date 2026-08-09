import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicare_v2/widgets/FilterDropdown.dart';
import 'package:medicare_v2/widgets/custom_image_assets.dart';
import 'package:medicare_v2/widgets/custom_text_form_field.dart';
import 'package:medicare_v2/widgets/historical_doctor_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bienvenue",
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                      ),
                      SizedBox(height: 1),
                      Text(
                        "Dr RUMI",
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    child: const Icon(Icons.notifications_none),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Filterdropdown(
                        values: [
                          "Aujourd'hui",
                          "Demain",
                          "Cette Semaine",
                          "Ce Mois",
                          "Choisir une date",
                        ],
                        hint: "Aujourd'hui",
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          // SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 220, 237, 251),
                                borderRadius: BorderRadius.circular(12),
                              ),

                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 4),
                                    Icon(
                                      Icons.calendar_month_outlined,
                                      size: 30,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "5",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "Rendez-vous aujourd'hui",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    SizedBox(height: 8),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 253, 241, 225),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 4),
                                    Icon(
                                      Icons.access_time_outlined,
                                      size: 30,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "2",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "Demandes en attente",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    SizedBox(height: 8),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 224, 254, 225),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 4),
                                    Icon(
                                      Icons.check_circle_outline,
                                      size: 30,
                                      color: Colors.green,
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "12",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "Consultations terminés",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    SizedBox(height: 8),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(width: 8),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            "Prochain rendez-vous",
                            style: Theme.of(context).textTheme.bodyLarge
                                ?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      InkWell(
                        onTap: () {
                          context.push('/details_appointment');
                        },
                        child: Container(
                          padding: EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // color: Theme.of(context).colorScheme.secondary,
                            gradient: const LinearGradient(
                              colors: [Color(0xFF0D47A1), Color(0xFF00BCD4)],
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 8),
                                  CustomImageAssets(height: 72, width: 72),
                                  SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 8),
                                      Row(
                                        children: [
                                          Text(
                                            "21 Nov.2026  ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "10:30",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Text("Jean Dupont"),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      CustomTextFormField(
                        controller: _search,
                        hintText: "Rechercher un patient",
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Rendez-vous prévus",
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      // Container(child: Text("data")),
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
