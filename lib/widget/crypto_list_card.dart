import 'package:enabl/data/simple_price_api_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CryptoListCard extends StatelessWidget {
  final SimplePriceResponseEntity entity;

  CryptoListCard(this.entity);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      title: Text(entity.name),
      subtitle: Text("Price: " + entity.usdPrice.toString() + "\n24Hr Change: " + entity.oneDayChangePercent.toString()),
    ));
  }
}
