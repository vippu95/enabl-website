class SimplePriceResponse {
  List<SimplePriceResponseEntity> entitiesList;

  SimplePriceResponse({this.entitiesList});
}

class SimplePriceResponseEntity {
  String name;
  double currentUsdPrice;
  String imageUrl;
  double oneHourChangePercent;
  double oneDayChangePercent;
  double weekChangePercent;

  SimplePriceResponseEntity(
      {this.name, this.currentUsdPrice, this.imageUrl, this.oneHourChangePercent, this.oneDayChangePercent, this.weekChangePercent});

  factory SimplePriceResponseEntity.fromJson(Map<String, dynamic> json) {
      return SimplePriceResponseEntity(
          name: json["name"],
          currentUsdPrice: json["current_price"],
          imageUrl: json["image"],
          oneHourChangePercent: json["price_change_percentage_1h_in_currency"],
          oneDayChangePercent: json["price_change_percentage_24h_in_currency"],
          weekChangePercent: json["price_change_percentage_7d_in_currency"]);
    
  }
}
