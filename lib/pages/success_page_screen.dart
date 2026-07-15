import 'package:flutter/material.dart';
import 'package:medicare/widgets/custom_elevated_button.dart';

class SuccessPageScreen extends StatefulWidget {
  const SuccessPageScreen({super.key});

  @override
  State<SuccessPageScreen> createState() => _SuccessPageScreenState();
}

class _SuccessPageScreenState extends State<SuccessPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Confirmation de paiement",
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.verified, size: 110, color: Colors.green),
              SizedBox(height: 5),
              Text(
                "Paiement réussi !",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 5),
              Text("Votre rendez-vous a été confirmé."),
              SizedBox(height: 5),
              Text(
                "Un email de confirmation vous a été envoyé.",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5),
              Container(
                width: double.infinity,
                height: 260,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey.withValues(alpha: 0.1),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.withValues(alpha: 0.1),
                        ),
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(12),
                          topEnd: Radius.circular(12),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadiusDirectional.only(
                                topStart: Radius.circular(12),
                              ),
                              child: Image.asset(
                                "assets/images/doctorProfile1.jpg",
                                width: 50,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text("Dr RUMI"), Text("Cardiologue")],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        spacing: 8,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Date",
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(color: Colors.grey),
                              ),
                              Spacer(),
                              Text("Jeudi 21 Novembre 2024"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Heure",
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(color: Colors.grey),
                              ),
                              Spacer(),
                              Text("10:30"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.attach_money_sharp,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Tarif de consultation",
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(color: Colors.grey),
                              ),
                              Spacer(),
                              Text(
                                "5 000 FCFA",
                                style: Theme.of(context).textTheme.bodyLarge
                                    ?.copyWith(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              CustomElevatedButton(
                text: "Procéder au paiement",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
