import 'package:enabl/data/ticker_api_response.dart';
import 'package:enabl/widget/crypto_list_card.dart';
import 'package:flutter/material.dart';

class CryptoListWidget extends StatelessWidget {
  final List<TickerResponseEntity> _tickerResponseList;

  CryptoListWidget(this._tickerResponseList);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _buildBody(),
      backgroundColor: Colors.blue,
    );
  }

  Widget _buildBody() {
    return new Flexible(
        child: new ListView.builder(
            itemCount: _tickerResponseList.length,
            itemBuilder: (context, index) {
              return CryptoListCard(_tickerResponseList[index]);
            }));
  }
}
