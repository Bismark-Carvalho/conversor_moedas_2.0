import 'package:flutter/material.dart';

class CurrencyField extends StatefulWidget {
  @override
  _CurrencyFieldState createState() => _CurrencyFieldState();
}

class _CurrencyFieldState extends State<CurrencyField> {
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