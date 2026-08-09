import 'package:flutter/material.dart';

class FilterBySpeciality extends StatefulWidget {
  const FilterBySpeciality({super.key});

  @override
  State<FilterBySpeciality> createState() => _FilterBySpecialityState();
}

class _FilterBySpecialityState extends State<FilterBySpeciality> {
  // String _dropdownValue = "Spécialités";
  List<String> values = [
    "Spécialités",
    "Cardiologue",
    "Gynécologue",
    "Dentiste",
    "Ophtamologue",
    "Pédiatre",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
