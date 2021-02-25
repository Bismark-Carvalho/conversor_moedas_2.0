import 'package:conversor_moedas_yt/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final TextEditingController toTextEditingController = TextEditingController();
  final TextEditingController fromTextEditingController =
      TextEditingController();
  final homeController = HomeController(
      fromEditingController: fromTextEditingController,
      toEditingController: toTextEditingController);

  test('deve converter de real para dorlar', () {
    toTextEditingController.text = '2.0';
    homeController.convert();
    expect(fromTextEditingController.text, '0.36');
  });
}
