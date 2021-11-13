import 'package:enabl/data/ticker_api_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CryptoListCard extends StatelessWidget {
  final TickerResponseEntity entity;

  CryptoListCard(this.entity);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      title: Text(entity.name),
      subtitle: Text(entity.usdPrice.toString()),
    ));
  }
}
