import 'dart:async';
import 'dart:convert';
import 'package:enabl/data/wazirx_ticker_api_response.dart';
import 'package:http/http.dart' as http;

class HttpRequestUtil {
  static Future<WazirxTickerApiResponse> getWazirxTickerResponse() async {
    String apiUrl = 'https://api.wazirx.com/api/v2/tickers';
    final http.Response response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      return WazirxTickerApiResponse.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
