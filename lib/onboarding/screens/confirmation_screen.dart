import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(title: Text("Nouveau mot de pass")),
      body: Column(
        children: [
          Text("Entrer votre nouveau mot de pass"),
          SizedBox(height: 20),
          CustomTextFormField(controller: passwordController, hintText: "Nouveau mot de pass"),
          SizedBox(height: 20),
          CustomTextFormField(controller: passwordController, hintText: "Confirmez votre mot de pass"),
          SizedBox(height: 20),
          CustomElevatedButton(text: "Confirmer", onPressed: () {}),
        ],
      ),
    );
  }
}
