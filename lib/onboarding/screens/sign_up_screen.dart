import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:medicare/onboarding/screens/login_doctor_screen.dart';
// import 'package:medicare/onboarding/screens/login_screen.dart';
import 'package:medicare/widgets/custom_elevated_button.dart';
import 'package:medicare/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/icon.png', width: 100, height: 100),
                SizedBox(height: 40),
                Text(
                  'Inscrivez-vous',
                  style: Theme.of(
                    context,
                  ).textTheme.displayLarge?.copyWith(fontSize: 30),
                ),
                SizedBox(height: 50),
                CustomTextFormField(
                  controller: nameController,
                  hintText: "Nom",
                ),
                SizedBox(height: 20),
                CustomTextFormField(
                  controller: emailController,
                  hintText: "Email",
                ),
                SizedBox(height: 20),
                CustomTextFormField(
                  controller: passwordController,
                  hintText: "Mot de pass",
                ),
                SizedBox(height: 20),
                CustomElevatedButton(text: "S'inscrire", onPressed: () {}),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(child: Text("Avez-vous déjà un compte ?")),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (_) => LoginScreen()),
                          // );

                          // Navigator.pushNamed(context, '/login');

                          context.go('/login');
                        },
                        child: Text(
                          "Se connecter",
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (_) => LoginDoctorScreen()),
                    // );

                    // Navigator.pushNamed(context, '/login_doctor');

                    context.go('/login_doctor');
                  },
                  child: Text(
                    "Se connecter en tant que Médecin",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
