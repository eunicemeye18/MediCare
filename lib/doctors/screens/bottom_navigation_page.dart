import 'package:flutter/material.dart';
import 'package:medicare_v2/doctors/screens/disponibility_screen.dart';
import 'package:medicare_v2/doctors/screens/historical_screen.dart';
import 'package:medicare_v2/doctors/screens/home_screen.dart';
import 'package:medicare_v2/doctors/screens/profile_screen.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _currentIndex = 0;
  void setCurrentIndex(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> bottomScreen = [
    HomeScreen(),
    DisponibilityScreen(),
    HistoricalScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomScreen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setCurrentIndex(index),
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
        iconSize: 28,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: "Disponibilité",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: "Historique",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Profil",
          ),
        ],
      ),
    );
  }
}
