import 'package:flutter/material.dart';

import './products.dart';

class AuthPage extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  AuthPage(this.products, this.addProduct, this.deleteProduct);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('LOGIN'),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) =>
                    ProductsPage(products, addProduct, deleteProduct),
              ),
            );
          },
        ),
      ),
    );
  }
}
