import 'package:enabl/constant/custom_colors.dart';
import 'package:enabl/data/simple_price_api_response.dart';
import 'package:enabl/utils/string_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CryptoListCard extends StatelessWidget {
  final SimplePriceResponseEntity entity;

  CryptoListCard(this.entity);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 8.0,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          decoration: BoxDecoration(color: CustomColors.darkColor),
          child: _makeTile(),
        ));
  }

  Widget _makeTile() {
    String titleText = StringUtils.convertToTitleCase(entity.name);
    String priceText = "Price: " + entity.usdPrice.toString();
    String changeText = "   24Hr Change: " + entity.oneDayChangePercent.toString();

    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      title: Text(titleText, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      subtitle: Row(
        children: <Widget>[
          Text(priceText, style: TextStyle(color: Colors.white)),
          Text(changeText, style: TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}
