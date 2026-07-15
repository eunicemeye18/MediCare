import 'package:flutter/material.dart';
import 'package:medicare/widgets/custom_elevated_button.dart';
// import 'package:kkiapay_flutter_sdk/kkiapay_flutter_sdk.dart';

class SummaryScreenPage extends StatefulWidget {
  const SummaryScreenPage({super.key});

  @override
  State<SummaryScreenPage> createState() => _SummaryScreenPageState();
}
// void callback(response, context) {
//   switch ( response['status'] ) {

//     case PAYMENT_CANCELLED:
//       Navigator.pop(context);
//       debugPrint(PAYMENT_CANCELLED);
//     break;

//     case PAYMENT_INIT:
//       debugPrint(PAYMENT_INIT);
//       break;

//     case PENDING_PAYMENT:
//       debugPrint(PENDING_PAYMENT);
//       break;

//     case PAYMENT_SUCCESS:
//       Navigator.pop(context);
//       // Navigator.push(
//       //   context,
//       //   MaterialPageRoute(
//       //     builder: (context) => SuccessScreen(
//       //       amount: response['requestData']['amount'],
//       //       transactionId: response['transactionId'],
//       //     ),
//       //   ),
//       // );
//       break;

//     default:
//       debugPrint(UNKNOWN_EVENT);
//       break;
//   }
// }

class _SummaryScreenPageState extends State<SummaryScreenPage> {
  //   final kkiapay = KKiaPay(
  //     amount: 1000,//
  //     countries: ["BJ","CI","SN","TG"],//
  //     phone: "22961000000",//
  //     name: "Jean Dupont",//
  //     email: "email@mail.com",//
  //     reason: 'Transaction reason',//
  //     data: 'Fake data',//
  //     sandbox: true,//
  //     apikey: "a6d813f07b6811f19912d9ce7c383189",//
  //     callback: callback,//
  //     theme: defaultTheme, // Ex : "#222F5A",
  //     partnerId: 'AxXxXXxId',//
  //     paymentMethods: ["momo","card"]//
  // );

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
      body: Padding(
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
            Spacer(),
            CustomElevatedButton(
              text: "Procéder au paiement",
              onPressed: () {
                // Navigator.push( context, MaterialPageRoute(builder: (context) => kkiapay), );
              },
            ),
          ],
        ),
      ),
    );
  }
}
