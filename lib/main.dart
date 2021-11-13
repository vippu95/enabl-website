import 'package:enabl/data/wazirx_ticker_api_response.dart';
import 'package:enabl/utils/http_request_utils.dart';
import 'package:enabl/widget/crypto_list_widget.dart';
import 'package:flutter/material.dart';

void main() async {
  WazirxTickerApiResponse tickerApiResponse =
      await HttpRequestUtil.getWazirxTickerResponse();
  print(tickerApiResponse);

  runApp(new MaterialApp(home: new CryptoListWidget(tickerApiResponse)));
}
