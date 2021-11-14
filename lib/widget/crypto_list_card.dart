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
    String priceText = "Price: " + entity.currentUsdPrice.toString();
    String changeText =
        "   24Hr Change: " + entity.oneDayChangePercent.toStringAsFixed(3);

    Color changeColor = entity.oneDayChangePercent > 0
        ? Colors.lime.shade300
        : Colors.red.shade200;

    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: _getLeadingWidget(titleText[0], changeColor),
      ),
      title: Text(titleText,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      subtitle: Row(
        children: <Widget>[
          Text(priceText, style: TextStyle(color: changeColor)),
          Text(changeText, style: TextStyle(color: changeColor))
        ],
      ),
    );
  }

  CircleAvatar _getLeadingWidget(String name, Color color) {
    return new CircleAvatar(
      backgroundColor: color,
      child: new Text(name[0]),
    );
}
