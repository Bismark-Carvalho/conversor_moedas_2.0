import 'package:conversor_moedas_yt/src/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyFieldComponent extends StatelessWidget {
  final List<CurrencyModel> currencies;

  final void Function(CurrencyModel) onChanged;

  final TextEditingController controller;
  final CurrencyModel selectedItem;

  CurrencyFieldComponent({Key key, this.currencies, this.onChanged,
      this.controller, this.selectedItem})
      : super(key: key);

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
                child: DropdownButton<CurrencyModel>(
                  // TODO corrigir item seleionado
                    value: selectedItem,
                    isExpanded: true,
                    underline: Container(
                      height: 1,
                      color: Colors.purple,
                    ),
                    hint: Text("Bismark"),
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 15,
                    items: currencies
                        .map((e) => DropdownMenuItem<CurrencyModel>(
                            child: Text(e.name)))
                        .toList(),
                    onChanged: onChanged),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller,
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
