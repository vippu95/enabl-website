import 'package:enabl/data/wazirx_ticker_api_response.dart';
import 'package:enabl/widget/crypto_list_card.dart';
import 'package:flutter/material.dart';

class CryptoListWidget extends StatelessWidget {
  final WazirxTickerApiResponse _wazirxTickerApiResponse;

  CryptoListWidget(this._wazirxTickerApiResponse);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _buildBody(),
      backgroundColor: Colors.blue,
    );
  }

  Widget _buildBody() {
    List<WazirxTickerApiEntity> cryptoList = [
      _wazirxTickerApiResponse.btcinr,
      _wazirxTickerApiResponse.xrpinr
    ];

    return new Flexible(
        child: new ListView.builder(
            itemCount: cryptoList.length,
            itemBuilder: (context, index) {
              return CryptoListCard(cryptoList[index]);
            }));
  }
}
