import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicare_v2/widgets/FilterDropdown.dart';
import 'package:medicare_v2/widgets/custom_elevated_button.dart';

class DisponibilityDoctorPage extends StatefulWidget {
  const DisponibilityDoctorPage({super.key});

  @override
  State<DisponibilityDoctorPage> createState() =>
      _DisponibilityDoctorPageState();
}

class _DisponibilityDoctorPageState extends State<DisponibilityDoctorPage> {
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Prendre un rendez-vous",
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey.withValues(alpha: 0.1),
                  ),
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(12),
                    topEnd: Radius.circular(12),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          "assets/images/doctorProfile1.jpg",
                          width: 50,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Dr RUMI"), Text("Cardiologue")],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Filterdropdown(
                values: [
                  "Généraliste",
                  "Cardiologue",
                  "Pédiatre",
                  "Obstétricien",
                  "Dentiste",
                  "Ophtamologue",
                ],
                hint: "Spécialités",
              ),
              SizedBox(height: 20),
              Text(
                "Date",
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
              ),
              CalendarDatePicker(
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(const Duration(days: 1095)),
                onDateChanged: (value) {
                  setState(() {
                    selectedDate = value;
                  });
                },
              ),
              if (selectedDate == null)
                const Text(
                  "Veuillez sélectionner une date pour voir les horaires disponibles.",
                )
              else ...[
                Text(
                  "Heure disponible",
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
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
                        child: Center(child: Text("08:00")),
                      ),
                    ),
                    SizedBox(width: 6),
                    Expanded(
                      child: Container(
                        width: double.infinity,
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
                        child: Center(child: Text("09:00")),
                      ),
                    ),
                    SizedBox(width: 6),
                    Expanded(
                      child: Container(
                        width: double.infinity,
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
                        child: Center(child: Text("10:30")),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
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
                        child: Center(child: Text("12:00")),
                      ),
                    ),
                    SizedBox(width: 6),
                    Expanded(
                      child: Container(
                        width: double.infinity,
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
                        child: Center(child: Text("14:00")),
                      ),
                    ),
                    SizedBox(width: 6),
                    Expanded(
                      child: Container(
                        width: double.infinity,
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
                        child: Center(child: Text("16:00")),
                      ),
                    ),
                  ],
                ),
              ],
              SizedBox(height: 20),
              CustomElevatedButton(
                text: "Continuez",
                onPressed: () {
                  context.push('/summary_page');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
