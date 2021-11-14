import 'package:enabl/data/simple_price_api_response.dart';
import 'package:enabl/services/coingecko_crypto_api_service.dart';
import 'package:enabl/widget/crypto_list_widget.dart';
import 'package:flutter/material.dart';

void main() async {
  SimplePriceResponse simplePriceResponse =
      await CoinGeckoCryptoApiService.getSimplePriceData();
  print(simplePriceResponse);

  runApp(new MaterialApp(home: new CryptoListWidget(simplePriceResponse)));
}
