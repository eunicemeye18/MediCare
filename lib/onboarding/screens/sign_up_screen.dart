import 'package:flutter/material.dart';
import 'package:medicare/widgets/custom_elevated_button.dart';
import 'package:medicare/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  final VoidCallback onNext;
  const SignUpScreen({super.key, required this.onNext});

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
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/logo.png', width: 200, height: 200),
              SizedBox(height: 40),
              Text(
                'Inscrivez-vous',
                style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 30),
              ),
              SizedBox(height: 50),
              CustomTextFormField(controller: nameController, hintText: "Nom"),
              SizedBox(height: 20),
              CustomTextFormField(controller: emailController, hintText: "Email"),
              SizedBox(height: 20),
              CustomTextFormField(
                controller: passwordController,
                hintText: "Mot de pass",
              ),
              SizedBox(height: 20),
              CustomElevatedButton(text: "S'inscrire", onPressed: () {}),
              SizedBox(height: 20),
              Text("Avez-vous déjà un compte ?"),
              TextButton(onPressed: widget.onNext, child: Text("Se connecter")),
            ],
          ),
        ),
      ),
    );
  }
}
