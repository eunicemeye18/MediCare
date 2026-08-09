import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicare_v2/data/doctor_data.dart';
import 'package:medicare_v2/widgets/FilterDropdown.dart';
import 'package:medicare_v2/widgets/custom_image_assets.dart';
import 'package:medicare_v2/widgets/custom_text_form_field.dart';
import 'package:medicare_v2/widgets/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _researchController = TextEditingController();
  final doctors = DoctorData.doctors;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
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
                          "Jean Dupont",
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    child: const Icon(Icons.notifications_none),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        children: [
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
                              context.push('/disponibility_doctor_page');
                            },
                            child: Container(
                              padding: EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                // color: Theme.of(context).colorScheme.secondary,
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF0D47A1),
                                    Color(0xFF00BCD4),
                                  ],
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 8),
                                      CustomImageAssets(height: 72, width: 72),
                                      SizedBox(width: 12),
                                      Expanded(
                                        child: Column(
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
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 8),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    "Dr RUMI • Cardiologue",
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          CustomTextFormField(
                            controller: _researchController,
                            hintText: "Rechercher un médecin",
                            prefixIcon: Icon(Icons.search),
                          ),
                          SizedBox(height: 20),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 120,
                                    child: Filterdropdown(
                                      values: [
                                        "Généraliste",
                                        "Cardiologue",
                                        "Pédiatre",
                                        "Obstétricien",
                                        "Dentiste",
                                        "Ophtamologue",
                                      ],
                                      hint: 'Spécialités',
                                    ),
                                  ),
                                  SizedBox(width: 2),
                                  SizedBox(
                                    width: 130,
                                    child: Filterdropdown(
                                      values: [
                                        "Aujourd'hui",
                                        "Demain",
                                        "Cette Semaine",
                                        "Ce Mois",
                                        "Choisir une date",
                                      ],
                                      hint: "Disponible",
                                    ),
                                  ),
                                  SizedBox(width: 2),
                                  Container(
                                    width: 150,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      // color: Theme.of(context).colorScheme.inversePrimary,
                                      color: Colors.white,
                                      border: BoxBorder.all(
                                        color: Colors.grey.shade300,
                                        width: 1,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.filter_list),
                                        Text("Plus de filtres"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20), // InkWell(
                          //   onTap: () {},
                          //   child: Container(
                          //     padding: const EdgeInsets.all(16),
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(15),
                          //       border: Border.all(color: Colors.grey.shade300),
                          //     ),
                          //     child: const Row(
                          //       children: [
                          //         Icon(Icons.medical_services_outlined),
                          //         SizedBox(width: 10),
                          //         Expanded(child: Text("Toutes les spécialités")),
                          //         Icon(Icons.filter_list),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Médecins recommandés',
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  context.push('/list_doctor');
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("Voir tout"),
                                    SizedBox(width: 8),
                                    Icon(Icons.chevron_right),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.all(8),
                        shrinkWrap: true,
                        itemCount: doctors.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 3 / 4,
                        ),
                        itemBuilder: (context, index) {
                          final doctor = doctors[index];
                          return DoctorCard(
                            doctor: doctor,
                            onFavoritePressed: () {
                              setState(() {
                                doctor.isFavorite = !doctor.isFavorite;
                              });
                            },
                          );
                        },
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
