class WazirxTickerApiResponse {
  WazirxTickerApiEntity btcinr;
  WazirxTickerApiEntity xrpinr;

  WazirxTickerApiResponse({this.btcinr, this.xrpinr});

  WazirxTickerApiResponse.fromJson(Map<String, dynamic> json) {
    btcinr = json['btcinr'] != null
        ? new WazirxTickerApiEntity.fromJson(json['btcinr'])
        : null;

    xrpinr = json['xrpinr'] != null
        ? new WazirxTickerApiEntity.fromJson(json['xrpinr'])
        : null;
  }
}

class WazirxTickerApiEntity {
  String name;
  int timestamp;
  String baseUnit;
  String quoteUnit;
  double dayLow;
  double dayHigh;
  double lastTradedPrice;
  double dayMarketOpenPrice;
  double dayVolume;
  double maxSellPrice;
  double maxBuyPrice;

  WazirxTickerApiEntity(
      this.name,
      this.timestamp,
      this.baseUnit,
      this.quoteUnit,
      this.dayLow,
      this.dayHigh,
      this.lastTradedPrice,
      this.dayMarketOpenPrice,
      this.dayVolume,
      this.maxSellPrice,
      this.maxBuyPrice);

  factory WazirxTickerApiEntity.fromJson(Map<String, dynamic> json) {
    String _baseUnit = json['base_unit'];
    String _quoteUnit = json['quote_unit'];
    double _dayLow = json['low'];
    double _dayHigh = json['high'];
    double _lastTradedPrice = json['last'];
    double _dayMarketOpenPrice = json['open'];
    double _dayVolume = json['volume'];
    double _maxSellPrice = json['sell'];
    double _maxBuyPrice = json['buy'];
    String _name = json['name'];
    int _timestamp = json['at'];

    return WazirxTickerApiEntity(
        _name,
        _timestamp,
        _baseUnit,
        _quoteUnit,
        _dayLow,
        _dayHigh,
        _lastTradedPrice,
        _dayMarketOpenPrice,
        _dayVolume,
        _maxSellPrice,
        _maxBuyPrice);
  }
}
