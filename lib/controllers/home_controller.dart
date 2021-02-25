import 'package:conversor_moedas_yt/src/models/currency_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  List<CurrencyModel> currencies;

  final TextEditingController toEditingController;
  final TextEditingController fromEditingController;
  CurrencyModel toCurrenry;
  CurrencyModel fromCurrenry;

  HomeController({this.toEditingController, this.fromEditingController}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrenry = currencies[0];
    fromCurrenry = currencies[1];
  }

  void convert() {
    String text = toEditingController.text;
    double value = double.tryParse(text) ?? 1;
    double returnValue = 0;
    switch (fromCurrenry.name.toLowerCase()) {
      case "real":
        {
          returnValue = value * toCurrenry.real;
          break;
        }
      case "dolar":
        {
          returnValue = value * toCurrenry.dolar;
          break;
        }
      case "euro":
        {
          returnValue = value * toCurrenry.euro;
          break;
        }
      case "bitcoin":
        {
          returnValue = value * toCurrenry.btc;
          break;
        }

        fromEditingController.text = returnValue.toStringAsFixed(2);
    }
  }
}
