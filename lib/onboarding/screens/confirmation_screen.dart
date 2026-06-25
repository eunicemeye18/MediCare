import 'package:flutter/material.dart';
// import 'package:medicare/onboarding/screens/home_page.dart';
import 'package:medicare/widgets/custom_elevated_button.dart';
import 'package:medicare/widgets/custom_text_form_field.dart';

class ConfirmationScreen extends StatefulWidget {
  const ConfirmationScreen({super.key});

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'Nouveau mot de pass',
                style: Theme.of(
                  context,
                ).textTheme.displayLarge?.copyWith(fontSize: 30),
              ),

              Text("Entrer votre nouveau mot de pass"),
              SizedBox(height: 20),
              CustomTextFormField(
                controller: passwordController,
                hintText: "Nouveau mot de pass",
              ),
              SizedBox(height: 20),
              CustomTextFormField(
                controller: passwordController,
                hintText: "Confirmez votre mot de pass",
              ),
              SizedBox(height: 20),
              CustomElevatedButton(
                text: "Confirmer",
                onPressed: () {
                  //Navigation 1.0
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (_) => HomePage()),
                  // );
                  Navigator.pushNamed(context, '/home_page');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
