import 'package:enabl/constant/custom_colors.dart';
import 'package:enabl/widget/crypto_list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: 'Crypto Tracker',
      theme: new ThemeData(primaryColor: CustomColors.darkColor),
      home: new CryptoListPage()));
}
