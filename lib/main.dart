import 'package:enabl/constant/custom_colors.dart';
import 'package:enabl/data/simple_price_api_response.dart';
import 'package:enabl/services/coingecko_crypto_api_service.dart';
import 'package:enabl/widget/crypto_list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: 'Crypto Tracker',
      theme: new ThemeData(primaryColor: CustomColors.darkColor),
      home: new CryptoListPage()));
}
