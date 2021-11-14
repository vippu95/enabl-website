import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:enabl/data/simple_price_api_response.dart';

class CoinGeckoCryptoApiService {
  static const String coingGeckApiUrl = "api.coingecko.com";
  static const String simplePriceApiEndpoint = "/api/v3/coins/markets";

  static Future<SimplePriceResponse> getSimplePriceData() async {
    final queryParameters = {
      'vs_currency': 'usd',
      'order': 'market_cap_desc',
      'per_page': '150',
      'page': '1',
      'price_change_percentage': '1h,24h,7d'
    };

    final uri =
        Uri.https(coingGeckApiUrl, simplePriceApiEndpoint, queryParameters);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      List<dynamic> jsonList = json.decode(response.body);
      List<SimplePriceResponseEntity> entityList = [];
      jsonList.forEach((element) {
        entityList.add(SimplePriceResponseEntity.fromJson(element));
      });
      return SimplePriceResponse(entitiesList: entityList);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
