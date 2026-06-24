import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Vérification OTP"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Entrer le code que vous avez reçu"),
            SizedBox(height: 20),
            Pinput(
              length: 6,
            ),
            CustomElevatedButton(text: "Confirmer", onPressed: (){})
          ],
        ),
      ),
    );
  }
}