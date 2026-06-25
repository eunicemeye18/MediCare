import 'package:flutter/material.dart';
// import 'package:medicare/onboarding/screens/confirmation_screen.dart';
import 'package:medicare/widgets/custom_elevated_button.dart';
import 'package:pinput/pinput.dart';

class VerificationOtpScreen extends StatefulWidget {
  const VerificationOtpScreen({super.key});

  @override
  State<VerificationOtpScreen> createState() => _VerificationOtpScreenState();
}

class _VerificationOtpScreenState extends State<VerificationOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Code de confirmation',
                  style: Theme.of(
                    context,
                  ).textTheme.displayLarge?.copyWith(fontSize: 30),
                ),
                SizedBox(height: 20),
                Text("Entrer le code que vous avez reçu"),
                SizedBox(height: 20),
                Pinput(length: 6),
                SizedBox(height: 20),
                CustomElevatedButton(
                  text: "Confirmer",
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (_) => ConfirmationScreen()),
                    // );
                    Navigator.pushNamed(context, '/confirmation');
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
