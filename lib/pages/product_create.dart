import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String titelValue = '';

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
        onChanged: (String value) {
          setState(() {
            titelValue = value;
          });
        },
      ),
      Text(titelValue)
    ]);
  }
}
