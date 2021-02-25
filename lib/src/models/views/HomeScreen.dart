import 'package:conversor_moedas_yt/components/BtnConvertComponent.dart';
import 'package:conversor_moedas_yt/components/CurrencyFieldComponent.dart';
import 'package:conversor_moedas_yt/components/ImgComponent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        reverse: true,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImgComponent(),
              CurrencyField(),
              CurrencyField(),
              CurrencyField(),
              CurrencyField(),
              BtnConverter()
            ],
          ),
        ),
      ),
    );
  }
}
