import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicare_v2/models/doctor.dart';
import 'package:medicare_v2/widgets/custom_elevated_button.dart';
import 'package:medicare_v2/widgets/custom_icon_star.dart';

class DetailsDoctorPage extends StatefulWidget {
  final Doctor doctor;
  const DetailsDoctorPage({super.key, required this.doctor});

  @override
  State<DetailsDoctorPage> createState() => _DetailsDoctorPageState();
}

class _DetailsDoctorPageState extends State<DetailsDoctorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Text(
                "Détails Médecin",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: const Icon(Icons.favorite_border),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      ),
                    ),
                  ],
                ),
                ClipRRect(
                  child: Image.asset(
                    widget.doctor.image,
                    width: 500,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  widget.doctor.name,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    CustomIconStar(),
                    CustomIconStar(),
                    CustomIconStar(),
                    CustomIconStar(),
                    Text("${widget.doctor.rating}"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.all(4),
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.secondaryContainer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(20),
                          ),
                        ),
                        child: Text(
                          widget.doctor.speciality,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(width: 20),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.all(4),
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.secondaryContainer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(20),
                          ),
                        ),
                        child: Text(
                          "Urgences",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(width: 20),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.all(4),
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.secondaryContainer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(20),
                          ),
                        ),
                        child: Text(
                          "Médecine Interne",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),

                Text(
                  "A propos",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(widget.doctor.description ?? ""),
                Divider(),
                Text(
                  "Disponibilités",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                CustomElevatedButton(
                  text: "Prendre rendez-vous",
                  onPressed: () {
                    context.push('/summary_page');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
