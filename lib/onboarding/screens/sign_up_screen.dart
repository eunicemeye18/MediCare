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
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Inscrivez-vous',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(height: 50),
          CustomTextFormField(controller: nameController, hintText: "Name"),
          SizedBox(height: 20),
          CustomTextFormField(controller: emailController, hintText: "Email"),
          SizedBox(height: 20),
          CustomTextFormField(
            controller: passwordController,
            hintText: "Password",
          ),
          SizedBox(height: 20),
          CustomElevatedButton(text: "S'inscrire", onPressed: () {}),
          SizedBox(height: 20),
          Text("Avez-vous déjà un compte ?"),
          SizedBox(height: 20),
          TextButton(onPressed: widget.onNext, child: Text("Log in")),
        ],
      ),
    );
  }
}
