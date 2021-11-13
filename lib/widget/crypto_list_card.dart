import 'package:enabl/data/wazirx_ticker_api_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CryptoListCard extends StatelessWidget {
  final WazirxTickerApiEntity entity;

  CryptoListCard(this.entity);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(entity.name),
        subtitle: Text(entity.quoteUnit),
    ));
  }
}
