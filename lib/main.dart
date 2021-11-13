import 'package:enabl/data/ticker_api_response.dart';
import 'package:enabl/data/wazirx_ticker_api_response.dart';
import 'package:enabl/services/nomics_crypto_api_service.dart';
import 'package:flutter/material.dart';

void main() async {
  List<TickerResponseEntity> tickerApiResponse =
      await NomicsCryptoApiService.getTickerData();
  print(tickerApiResponse);

  // runApp(new MaterialApp(home: new CryptoListWidget(tickerApiResponse)));
}
