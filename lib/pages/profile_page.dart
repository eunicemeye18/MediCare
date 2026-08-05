import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicare_v2/onboarding/screens/sign_up_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            // color: Theme.of(context).colorScheme.secondary,
            gradient: const LinearGradient(
              colors: [Color(0xFF0D47A1), Color(0xFF00BCD4)],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/profile.jpg",
                      width: 72,
                      height: 72,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jean Dupont',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'jeandupont@gmail.com',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 2),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        context.push('/profile_modification');
                      },
                      style: TextButton.styleFrom(iconColor: Colors.black),
                      child: Row(
                        children: [
                          Icon(Icons.drive_file_rename_outline),
                          SizedBox(width: 8),
                          Text(
                            "Modifier le Profil",
                            style: TextStyle(color: Colors.black),
                          ),
                          Spacer(),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(iconColor: Colors.black),
                      child: Row(
                        children: [
                          Icon(Icons.credit_card_outlined),
                          SizedBox(width: 8),
                          Text(
                            "Mes paiements",
                            style: TextStyle(color: Colors.black),
                          ),
                          Spacer(),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(iconColor: Colors.black),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_month_outlined),
                          SizedBox(width: 8),
                          Text(
                            "Historique des rendez-vous",
                            style: TextStyle(color: Colors.black),
                          ),
                          Spacer(),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(iconColor: Colors.black),
                      child: Row(
                        children: [
                          Icon(Icons.notifications_outlined),
                          SizedBox(width: 8),
                          Text(
                            "Notifications",
                            style: TextStyle(color: Colors.black),
                          ),
                          Spacer(),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(iconColor: Colors.black),
                      child: Row(
                        children: [
                          Icon(Icons.settings_outlined),
                          SizedBox(width: 8),
                          Text(
                            "Paramètres",
                            style: TextStyle(color: Colors.black),
                          ),
                          Spacer(),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(iconColor: Colors.black),
                      child: Row(
                        children: [
                          Icon(Icons.help_outline),
                          SizedBox(width: 8),
                          Text(
                            "Aide et support",
                            style: TextStyle(color: Colors.black),
                          ),
                          Spacer(),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigator.pop(context);
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                "Déconnexion ?",
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              content: Text(
                                "Souhaitez-vous vraiment vous déconnecter ?",
                              ),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey[200],
                                  ),
                                  child: Text(
                                    "Non",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                SizedBox(width: 60),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignUp(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                  ),
                                  child: Text(
                                    "Oui",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      style: TextButton.styleFrom(iconColor: Colors.red),
                      child: Row(
                        children: [
                          Icon(Icons.logout_outlined),
                          SizedBox(width: 8),
                          Text(
                            "Déconnexion",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
