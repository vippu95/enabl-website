import 'package:enabl/data/ticker_api_response.dart';
import 'package:enabl/widget/crypto_list_card.dart';
import 'package:flutter/material.dart';

class CryptoListWidget extends StatelessWidget {
  final TickerResponse _tickerResponse;

  CryptoListWidget(this._tickerResponse);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _buildBody(),
      backgroundColor: Colors.blue,
    );
  }

  Widget _buildBody() {
    return ListView.builder(
        itemCount: _tickerResponse.entitiesList.length,
        itemBuilder: (BuildContext context, int index) {
          return CryptoListCard(_tickerResponse.entitiesList[index]);
        });
  }
}
