import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/logo.png', width: 200, height: 200),
              SizedBox(height: 40),
              Text(
                "Bienvenue sur la page d'Accueil",
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.displayLarge?.copyWith(fontSize: 30),
              ),
            ],
          ),
        ),
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: "Accueil"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite), 
            label: "Favoris"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work), 
            label: "Activités"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: "Profil"
          ),
        ],
      ),
    );
  }
}
