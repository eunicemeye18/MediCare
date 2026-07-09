import 'package:flutter/material.dart';
import 'package:medicare/data/doctor_data.dart';
import 'package:medicare/widgets/doctor_card.dart';

class ListDoctorsPage extends StatefulWidget {
  const ListDoctorsPage({super.key});

  @override
  State<ListDoctorsPage> createState() => _ListDoctorsPageState();
}

class _ListDoctorsPageState extends State<ListDoctorsPage> {
  final doctors = DoctorData.doctors;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Listes des Médecins",
           style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
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
            ),
          ],
        ),
      ),
    );
  }
}
