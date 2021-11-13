class TickerResponse {
  TickerResponseEntity bitcoin;

  TickerResponse({this.bitcoin});

  factory TickerResponse.fromJson(Map<String, dynamic> json) {
    return TickerResponse(bitcoin: json["bitcoin"]);
  }
}

class TickerResponseEntity {
  double usdPrice;
  double oneDayVolume;
  double oneDayChangePercent;

  TickerResponseEntity(
      {this.usdPrice, this.oneDayVolume, this.oneDayChangePercent});

  factory TickerResponseEntity.fromJson(Map<String, dynamic> json) {
    return TickerResponseEntity(
        usdPrice: json["usd"],
        oneDayVolume: json["usd_24h_vol"],
        oneDayChangePercent: json["usd_24h_change"]);
  }
}
