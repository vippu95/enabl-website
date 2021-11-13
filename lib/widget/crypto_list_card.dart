import 'package:enabl/data/ticker_api_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CryptoListCard extends StatelessWidget {
  final String cryptoName;
  final TickerResponseEntity entity;

  CryptoListCard(this.cryptoName, this.entity);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      title: Text(this.cryptoName),
      subtitle: Text(this.entity.usdPrice.toString()),
    ));
  }
}
