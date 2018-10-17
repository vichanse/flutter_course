import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String titleValue;
  String descriptionValue;
  double priceValue;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      new TextField(
        onChanged: (String value) {
          setState(() {
            titleValue = value;
          });
        },
      ),
      new TextField(
        maxLines: 4,
        onChanged: (String value) {
          setState(() {
            descriptionValue = value;
          });
        },
      ),
      new TextField(
        keyboardType: TextInputType.number,
        onChanged: (String value) {
          setState(() {
            priceValue = double.parse(value);
          });
        },
      ),
    ]);
  }
}
