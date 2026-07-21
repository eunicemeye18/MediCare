import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicare_v2/widgets/custom_image_assets.dart';
import 'package:medicare_v2/widgets/custom_text_button.dart';
import 'package:medicare_v2/widgets/custom_text_form_field.dart';
import 'package:medicare_v2/widgets/historical_card.dart';

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
                          "Dr RUMI",
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
              SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    "Prochain rendez-vous",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
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
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                SizedBox(height: 8),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(child: Text("Jean Dupont")),
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
              CustomTextFormField(
                controller: _search,
                hintText: "Rechercher un patient",
              ),
              Row(
                children: [
                  CustomTextButton(
                    text: "Tous",
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                  SizedBox(width: 8),
                  CustomTextButton(text: "Cardiologue", color: Colors.white),
                  SizedBox(width: 8),
                  CustomTextButton(text: "Pédiatre", color: Colors.white),
                  SizedBox(width: 8),
                  CustomTextButton(text: "Gynécologue", color: Colors.white),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Rendez-vous prévus",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
