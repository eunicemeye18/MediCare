import 'package:flutter/material.dart';
// import 'package:medicare/onboarding/screens/verification_otp_screen.dart';
import 'package:medicare/widgets/custom_elevated_button.dart';
import 'package:medicare/widgets/custom_text_form_field.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Entrez votre email pour recevoir votre code de confimation",
              ),
              SizedBox(height: 20),
              CustomTextFormField(
                controller: emailController,
                hintText: "Email",
              ),
              SizedBox(height: 20),
              CustomElevatedButton(
                text: "Valider",
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (_) => VerificationOtpScreen()),
                  // );
                  Navigator.pushNamed(context, '/verification_otp');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
