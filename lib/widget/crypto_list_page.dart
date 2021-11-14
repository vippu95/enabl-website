import 'package:enabl/constant/custom_colors.dart';
import 'package:enabl/data/simple_price_api_response.dart';
import 'package:enabl/services/coingecko_crypto_api_service.dart';
import 'package:enabl/widget/crypto_list_card.dart';
import 'package:flutter/material.dart';

class CryptoListPage extends StatefulWidget {
  @override
  CryptoListState createState() => CryptoListState();
}

class CryptoListState extends State<CryptoListPage> {
  SimplePriceResponse _tickerResponse;

  Future<void> callSimplePriceApi() async {
    print('Getting prices');
    SimplePriceResponse temp = await CoinGeckoCryptoApiService.getSimplePriceData();
    setState(() {
      this._tickerResponse = temp;
      _tickerResponse.entitiesList.sort((a, b) => a.oneDayChangePercent > b.oneDayChangePercent ? -1 : 1);
      print(_tickerResponse);
    });
    return;
  }

  @override
  void initState() {
    super.initState();
    callSimplePriceApi();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: CustomColors.darkColor,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _tickerResponse.entitiesList.length,
        itemBuilder: (BuildContext context, int index) {
          return CryptoListCard(_tickerResponse.entitiesList[index]);
        });
  }

  Widget _buildAppBar() {
    return AppBar(
      elevation: 0.1,
      centerTitle: true,
      backgroundColor: Colors.lightBlue,
      title: Text("Crypto Tracker"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        )
      ],
    );
  }
}
