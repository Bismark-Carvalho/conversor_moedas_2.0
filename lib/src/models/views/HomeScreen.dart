import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: SizedBox(
                width: 100,
                height: 100,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Image.network(
                        "https://media.istockphoto.com/vectors/currency-converter-base-icon-simple-sign-illustration-currency-can-vector-id1157097828")),
              ),
            ),
            TesteWidGet(),
            TesteWidGet(),
            TesteWidGet(),
          ],
        ),
      ),
    );
  }
}

class TesteWidGet extends StatefulWidget {
  @override
  _TesteWidGetState createState() => _TesteWidGetState();
}

class _TesteWidGetState extends State<TesteWidGet> {

  String value = "Euro";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40.0, bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DropdownButton(
              value: value,
              icon: Icon(Icons.arrow_downward),
              iconSize: 15,


              items: <String>["Real", "Dolar", "Euro", "Bitcoin"]
                  .map<DropdownMenuItem<String>>((e) {
                return DropdownMenuItem<String>(
                  value: e,
                  child: Text(e),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  value = newValue;
                });
              }),
          Container(
            width: 225,
            child: TextField(
              keyboardType: TextInputType.number,
            ),
          ),
        ],
      ),
    );
  }
}
