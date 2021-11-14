import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:enabl/data/simple_price_api_response.dart';

class CoinGeckoCryptoApiService {
  static const String coingGeckApiUrl = "api.coingecko.com";
  static const String simplePriceApiEndpoint = "/api/v3/simple/price";

  static Future<SimplePriceResponse> getSimplePriceData() async {
    final queryParameters = {
      'ids': 'bitcoin,ethereum,ripple',
      'vs_currencies': 'usd',
      'include_24hr_vol': 'true',
      'include_24hr_change': 'true'
    };

    final uri = Uri.https(coingGeckApiUrl, simplePriceApiEndpoint, queryParameters);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return SimplePriceResponse.fromJson(json.decode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
