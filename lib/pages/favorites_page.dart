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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(
          "Favoris",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GridView.builder(
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
            doctor: doctors[index],
            onFavoritePressed: () {
              setState(() {
                doctor.isFavorite = !doctor.isFavorite;
              });
            },
          );
        },
      ),
    );
  }
}
