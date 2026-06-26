import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
import 'package:medicare/onboarding/screens/confirmation_screen.dart';
import 'package:medicare/widgets/custom_elevated_button.dart';
import 'package:medicare/widgets/custom_text_form_field.dart';
import 'package:pinput/pinput.dart';

class LoginDoctorScreen extends StatefulWidget {
  const LoginDoctorScreen({super.key});

  @override
  State<LoginDoctorScreen> createState() => _LoginDoctorScreenState();
}

class _LoginDoctorScreenState extends State<LoginDoctorScreen> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/icon.png', width: 100, height: 100),
                SizedBox(height: 40),
                Text(
                  'Se connecter en tant que',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Médecin',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 50),
                CustomTextFormField(
                  controller: emailController,
                  hintText: "Email",
                ),
                SizedBox(height: 20),
                Text("Entrer le code que vous avez reçu"),
                SizedBox(height: 20),
                Pinput(length: 6),
                SizedBox(height: 20),
                CustomElevatedButton(
                  text: "Valider",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ConfirmationScreen()),
                    );


                    // Navigator.pushNamed(context, '/confirmation');

                    // context.go('/confirmation');
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
