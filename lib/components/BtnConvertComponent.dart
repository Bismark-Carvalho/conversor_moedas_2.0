import 'package:flutter/material.dart';

class BtnConverter extends StatefulWidget {
  @override
  _BtnConverterState createState() => _BtnConverterState();
}

class _BtnConverterState extends State<BtnConverter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: RaisedButton(
        child: Text("Converter"),
        color: Colors.purple,
        textColor: Colors.white,
        onPressed: () {
          // TODO implementar metodo de converter
          print("Clicou");
        },
      ),
    );
  }
}
