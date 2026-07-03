import 'package:flutter/material.dart';
import 'package:medicare/data/doctor_data.dart';
import 'package:medicare/widgets/doctor_card.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});
  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final doctors = DoctorData.doctors;
  final favoriteDoctors = DoctorData.doctors
      .where((doctor) => doctor.isFavorite)
      .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Favoris",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(8),
                itemCount: favoriteDoctors.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 3 / 4,
                ),
                itemBuilder: (context, index) {
                  // final doctor = doctors[index];-
                  return DoctorCard(doctor: favoriteDoctors[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
