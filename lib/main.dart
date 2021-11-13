import 'package:enabl/widget/crypto_list_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Demo landing page !',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CryptoListWidget(),
    );
  }
}
