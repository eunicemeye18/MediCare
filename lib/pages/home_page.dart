import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicare/data/doctor_data.dart';
import 'package:medicare/widgets/custom_text_form_field.dart';
import 'package:medicare/widgets/doctor_card.dart';

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
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bienvenue",
                              style: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(color: Colors.grey),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Jean Dupont",
                              style: Theme.of(context).textTheme.titleLarge
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
                  Container(
                    padding: EdgeInsets.all(18),
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
                        Text(
                          "Votre prochain rendez-vous",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/images/doctorProfile1.jpg",
                                width: 60,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dr RUMI',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    'Cardiologue',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '01/07/2026 | 10:30',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(width: 5),
                                      TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.all(4),
                                          backgroundColor: Colors.green,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadiusGeometry.circular(
                                                  20,
                                                ),
                                          ),
                                        ),
                                        child: Text(
                                          "Payé",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
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
                  SizedBox(height: 20),
                  CustomTextFormField(
                    controller: _researchController,
                    hintText: "Rechercher un médecin",
                    prefixIcon: Icon(Icons.search),
                  ),
                  SizedBox(height: 20),
                  // InkWell(
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
                          'Médecins',
                          style: Theme.of(context).textTheme.bodyLarge
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
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: doctors.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 3 / 4,
                  ),
                  itemBuilder: (context, index) {
                    final doctor = doctors[index];
                    return DoctorCard(doctor: doctor);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
