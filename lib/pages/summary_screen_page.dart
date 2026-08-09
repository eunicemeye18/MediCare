import 'package:feda_flutter/feda_flutter.dart';
import 'package:flutter/material.dart';
import 'package:medicare_v2/pages/success_page_screen.dart';
import 'package:medicare_v2/services/fedapay_service.dart';
// import 'package:kkiapay_flutter_sdk/kkiapay_flutter_sdk.dart';
// import 'package:medicare_v2/pages/success_page_screen.dart';
import 'package:medicare_v2/widgets/custom_elevated_button.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:kkiapay_flutter_sdk/kkiapay_flutter_sdk.dart';

class SummaryScreenPage extends StatefulWidget {
  const SummaryScreenPage({super.key});

  @override
  State<SummaryScreenPage> createState() => _SummaryScreenPageState();
}

class _SummaryScreenPageState extends State<SummaryScreenPage> {
  final fedapay = FedaPayService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Détails de la consultation",
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                              Text("Jeudi 21 Novembre 2026"),
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
              Text(
                "Vos informations",
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey.withValues(alpha: 0.1),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nom Complet",
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: Colors.grey),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.withValues(alpha: 0.1),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text("Jean Dupont"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Téléphone",
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: Colors.grey),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.withValues(alpha: 0.1),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Text("07 12 34 56 78"),
                          Spacer(),
                          Icon(Icons.verified_outlined, color: Colors.green),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              CustomElevatedButton(
                text: "Procéder au paiement",
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PayWidget(
                        instance: FedaFlutter.instance,
                        transactionToCreate: TransactionCreate(
                          amount: 1000,
                          currency: CurrencyIso(iso: 'XOF'),
                          description: "Test paiement Flutter",
                        ),
                        onPaymentSuccess: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SuccessPageScreen(),
                            ),
                          );
                        },
                        onPaymentFailed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Le paiement a échoué"),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
