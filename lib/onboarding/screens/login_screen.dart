import 'package:flutter/material.dart';
import 'package:medicare/widgets/custom_elevated_button.dart';
import 'package:medicare/widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Se connecter', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            
            SizedBox(height: 20),
            CustomTextFormField(
              controller: emailController,
              hintText: "Email",
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              controller: passwordController,
              hintText: "Password",
            ),
            SizedBox(height: 20),
            CustomElevatedButton(text: "Se connecter",),
          ],
        ),
      ),
    );
  }
}