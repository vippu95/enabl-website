import 'package:enabl/data/ticker_api_response.dart';
import 'package:enabl/services/nomics_crypto_api_service.dart';
import 'package:enabl/widget/crypto_list_widget.dart';
import 'package:flutter/material.dart';

void main() async {
  TickerResponse tickerApiResponse =
      await CoinGeckoCryptoApiService.getTickerData();
  print(tickerApiResponse);

  runApp(new MaterialApp(home: new CryptoListWidget(tickerApiResponse)));
}
