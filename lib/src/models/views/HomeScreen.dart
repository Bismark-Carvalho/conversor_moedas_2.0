import 'package:conversor_moedas_yt/components/BtnConvertComponent.dart';
import 'package:conversor_moedas_yt/components/CurrencyFieldComponent.dart';
import 'package:conversor_moedas_yt/components/ImgComponent.dart';
import 'package:conversor_moedas_yt/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController;
  final TextEditingController toController = TextEditingController();

  final TextEditingController fromController = TextEditingController();

  @override
  void initState() {
    super.initState();
    homeController = HomeController(
        fromEditingController: fromController,
        toEditingController: toController);
  }

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
              CurrencyFieldComponent(
                controller: toController,
                currencies: homeController.currencies,
                selectedItem: homeController.toCurrenry,
                onChanged: (model) {
                  setState(() {
                    homeController.toCurrenry= model;
                  });
                },
              ),
              CurrencyFieldComponent(
                controller: fromController,
                currencies: homeController.currencies,
                selectedItem: homeController.fromCurrenry,
                onChanged: (model) {
                  setState(() {
                    homeController.fromCurrenry= model;
                  });
                },
              ),
              BtnConverter()
            ],
          ),
        ),
      ),
    );
  }
}
