import 'package:bytebank_sqflite/http/webclient.dart';
import 'package:flutter/material.dart';

import 'screens/dashboard.dart';

void main() {
  runApp(BytebankApp());
  //save(Contact(0, 'teste', 1234));
  findAll().then((transcations) => print('All Transaction: $transcations'));
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.green[900],
            accentColor: Colors.blueAccent[700],
            buttonTheme: ButtonThemeData(
              buttonColor: Colors.blueAccent[700],
              textTheme: ButtonTextTheme.primary,
            )),
        home: Dashboard());
  }
}
