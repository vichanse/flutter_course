import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products);

  Widget _buildProductItem(BuildContext context, index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text((products[index]))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(item);
  }
}
