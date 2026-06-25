import 'package:flutter/material.dart';
import 'package:medicare/widgets/custom_elevated_button.dart';
import 'package:medicare/widgets/custom_text_form_field.dart';
import 'package:pinput/pinput.dart';

class LoginDoctorScreen extends StatefulWidget {
  final VoidCallback onFinish;
  const LoginDoctorScreen({super.key, required this.onFinish});

  @override
  State<LoginDoctorScreen> createState() => _LoginDoctorScreenState();
}

class _LoginDoctorScreenState extends State<LoginDoctorScreen> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Se connecter',
                  style: Theme.of(context).textTheme.displayLarge,
                ),

                SizedBox(height: 20),
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
                  text: "Se connecter",
                  onPressed: widget.onFinish,
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
