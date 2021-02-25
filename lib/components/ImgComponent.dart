import 'package:flutter/material.dart';

class ImgComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: SizedBox(
        width: 200,
        height: 200,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(1000),
            child: Image.network(
                "https://media.istockphoto.com/vectors/currency-converter-base-icon-simple-sign-illustration-currency-can-vector-id1157097828")),
      ),
    );
  }
}
