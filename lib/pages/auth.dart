import 'package:flutter/material.dart';

import './products.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String email;
  String password;
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.dstATop),
              image: AssetImage('assets/background.jpg'),
            ),
          ),
          padding: EdgeInsets.all(10.0),
          child: ListView(children: <Widget>[
            new TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: new InputDecoration(
                  hintText: 'you@example.com', labelText: 'E-mail Address'),
            ),
            new TextFormField(
              obscureText: true, // Use secure text for passwords.
              decoration: new InputDecoration(
                  hintText: 'Password', labelText: 'Enter your password'),
            ),
            SwitchListTile(
              value: _acceptTerms,
              onChanged: (bool value) {
                setState(() {
                  _acceptTerms = value;
                });
              },
              title: Text('Accept terms'),
            ),
            SizedBox(
              height: 10.0,
            ),
            new Container(
              width: screenSize.width,
              child: new RaisedButton(
                child: new Text(
                  'Login',
                  style: new TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/products');
                },
                color: Theme.of(context).accentColor,
              ),
              margin: new EdgeInsets.only(top: 20.0),
            )
          ])),
    );
  }
}
