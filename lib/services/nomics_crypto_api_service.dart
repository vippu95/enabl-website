import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:enabl/data/ticker_api_response.dart';

class NomicsCryptoApiService {
  static const String urlPrefix = "api.nomics.com";
  static const String urlEndpoint = "/v1/currencies/sparkline";
  static const String apiKey = "17915e294830e954f116803170ab7efbc653ca16";

  static Future<List<TickerResponseEntity>> getTickerData() async {
    final queryParameters = {
      'key': apiKey,
    };

    final uri = Uri.https(urlPrefix, urlEndpoint, queryParameters);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return json.decode(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
