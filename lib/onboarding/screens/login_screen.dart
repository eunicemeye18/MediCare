import 'package:flutter/material.dart';
import 'package:medicare/widgets/custom_elevated_button.dart';
import 'package:medicare/widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback onFinish;
  const LoginScreen({super.key, required this.onFinish});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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
                Image.asset('assets/images/icon.png', width: 100, height: 100),
                SizedBox(height: 40),
                Text(
                  'Se connecter',
                  style: Theme.of(
                  context,
                ).textTheme.displayLarge?.copyWith(fontSize: 30),
                ),
                SizedBox(height: 50),
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
                CustomElevatedButton(
                  text: "Se connecter",
                  onPressed: widget.onFinish,
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {},
                  child: Text("Mot de passe oublié ?"),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(child: Text("Vous n'avez pas de compte ?")),
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: Text("S'inscrire"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    // Center(
    //   child: Column(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       Text('Se connecter', style: TextStyle(
    //         fontSize: 40, fontWeight: FontWeight.bold
    //         ),
    //         ),

    //       SizedBox(height: 20),
    //       CustomTextFormField(
    //         controller: emailController,
    //         hintText: "Email",
    //       ),
    //       SizedBox(height: 20),
    //       CustomTextFormField(
    //         controller: passwordController,
    //         hintText: "Password",
    //       ),
    //       SizedBox(height: 20),
    //       CustomElevatedButton(text: "Se connecter",),
    //       SizedBox(height: 20),
    //       TextButton(onPressed: (){}, child: Text("Mot de passe oublié ?"))
    //     ],
    //   ),
    // ),
  }
}
