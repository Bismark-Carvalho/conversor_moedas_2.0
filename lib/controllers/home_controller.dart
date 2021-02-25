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
    double value = double.tryParse(text) ?? 1.0;
    double returnValue = 0;
    if (fromCurrenry.name == "Real") returnValue = value * toCurrenry.real;
    if (fromCurrenry.name == "Dolar") returnValue = value * toCurrenry.dolar;
    if (fromCurrenry.name == "Euro") returnValue = value * toCurrenry.euro;
    if (fromCurrenry.name == "Bitcoin") returnValue = value * toCurrenry.btc;

    fromEditingController.text = returnValue.toStringAsFixed(2);
  }
}
