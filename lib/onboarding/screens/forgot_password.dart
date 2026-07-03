import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
                  'Entrez votre email',
                  style: Theme.of(
                    context,
                  ).textTheme.displayLarge?.copyWith(fontSize: 30),
                ),
                SizedBox(height: 20),
                Text(
                  "Entrez votre email pour recevoir votre code de confirmation",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                CustomTextFormField(
                  controller: emailController,
                  hintText: "Email", suffixIcon: null,
                ),
                SizedBox(height: 20),
                CustomElevatedButton(
                  text: "Valider",
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (_) => VerificationOtpScreen()),
                    // );

                    // Navigator.pushNamed(context, '/verification_otp');

                    context.push('/verification_otp');
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
