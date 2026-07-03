import 'package:flutter/material.dart';
import 'package:medicare/models/doctor.dart';

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Détails Médecin",
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    child: const Icon(Icons.favorite_border),
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
                  Icon(Icons.star, size: 18, color: Colors.amber),
                  Icon(Icons.star, size: 18, color: Colors.amber),
                  Icon(Icons.star, size: 18, color: Colors.amber),
                  Icon(Icons.star, size: 18, color: Colors.amber),
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
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(4),
                    backgroundColor: const Color.fromARGB(255, 227, 250, 227),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Médecine Interne",
                          style: TextStyle(color: Colors.green),
                        ),
                        Spacer(),
                        Text("PAYE", style: TextStyle(color: Colors.green)),
                      ],
                    ),
                  ),
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
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(2),
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.secondaryContainer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8),
                      ),
                    ),
                    child: Text(
                      "Lun",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 8),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(2),
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.onSecondary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8),
                      ),
                    ),
                    child: Text(
                      "Mar",
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 8),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(2),
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.secondaryContainer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8),
                      ),
                    ),
                    child: Text(
                      "Mer",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 8),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(2),
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.secondaryContainer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8),
                      ),
                    ),
                    child: Text(
                      "Jeu",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 8),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(2),
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.secondaryContainer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8),
                      ),
                    ),
                    child: Text(
                      "Ven",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    SizedBox(width: 50),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(2),
                        backgroundColor: Theme.of(
                          context,
                        ).colorScheme.secondaryContainer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8),
                        ),
                      ),
                      child: Text(
                        "08:00 - 12:00",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(width: 50),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(2),
                        backgroundColor: Theme.of(
                          context,
                        ).colorScheme.secondaryContainer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8),
                        ),
                      ),
                      child: Text(
                        "14:00 - 17:00",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Text(
                "Informations",
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text("Hôpital :"),
                  SizedBox(width: 80),
                  Icon(
                    Icons.location_on_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Text("MediCare Hôpital Central"),
                ],
              ),
              Row(
                children: [
                  Text("Langues :"),
                  SizedBox(width: 80),
                  Text("Français, Anglais"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
