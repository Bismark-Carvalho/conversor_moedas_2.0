import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
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
              TesteWidGet(),
              BtnConverter()
            ],
          ),
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
      padding: const EdgeInsets.only(right: 40.0, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 57,
                child: DropdownButton(
                    isExpanded: true,
                    underline: Container(
                      height: 1,
                      color: Colors.purple,
                    ),
                    hint: Text("Bismark"),
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
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
          print("");
        },
      ),
    );
  }
}
