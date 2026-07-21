import 'package:feda_flutter/feda_flutter.dart';


class FedaPayService {


  Future<dynamic> createPayment() async {


    final transaction =
        await FedaFlutter.instance.transactions
        .createTransaction({

      "description": "Test paiement Flutter",

      "amount": 1000,

      "currency": {
        "iso": "XOF"
      },

    });


    return transaction;

  }


}