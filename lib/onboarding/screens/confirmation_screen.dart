import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicare_v2/widgets/custom_elevated_button.dart';
import 'package:medicare_v2/widgets/custom_text_form_field.dart';

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
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/images/icon.png', width: 100, height: 100),
                SizedBox(height: 40),
                Text(
                  'Nouveau mot de passe',
                  style: Theme.of(
                    context,
                  ).textTheme.displayLarge?.copyWith(fontSize: 30),
                ),

                Text("Entrer votre nouveau mot de passe"),
                SizedBox(height: 20),
                CustomTextFormField(
                  controller: passwordController,
                  hintText: "Nouveau mot de passe",
                  suffixIcon: Icon(Icons.visibility_off),
                ),
                SizedBox(height: 20),
                CustomTextFormField(
                  controller: passwordController,
                  hintText: "Confirmez votre mot de passe",
                  suffixIcon: Icon(Icons.visibility_off),
                ),
                SizedBox(height: 20),
                CustomElevatedButton(
                  text: "Confirmer",
                  onPressed: () {
                    // Navigation 1.0
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (_) => HomePage()),
                    // );

                    // Navigator.pushNamed(context, '/home');

                    context.push('/home');
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
