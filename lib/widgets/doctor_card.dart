import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicare/models/doctor.dart';

class DoctorCard extends StatelessWidget {
  final Doctor doctor;
  final VoidCallback? onFavoritePressed;

  const DoctorCard({super.key, required this.doctor, this.onFavoritePressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () {
          context.push('/details_doctor', extra: doctor);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(12),
                    child: Image.asset(
                      doctor.image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: IconButton(
                      onPressed: onFavoritePressed,
                      style: IconButton.styleFrom(elevation: 12),
                      icon: Icon(
                        doctor.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2),
              child: Text(
                doctor.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(padding: EdgeInsets.all(2), child: Text(doctor.speciality)),
            Padding(
              padding: EdgeInsets.all(2),
              child: Row(
                children: [
                  Icon(Icons.star, size: 18, color: Colors.amber),
                  // Icon(Icons.star, size: 18, color: Colors.amber),
                  // Icon(Icons.star, size: 18, color: Colors.amber),
                  // Icon(Icons.star, size: 18, color: Colors.amber),
                  Text(doctor.rating.toString()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
