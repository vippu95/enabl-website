class SimplePriceResponse {
  List<SimplePriceResponseEntity> entitiesList;

  SimplePriceResponse({this.entitiesList});

  factory SimplePriceResponse.fromJson(Map<String, dynamic> json) {
    List<SimplePriceResponseEntity> responseList = [];

    json.forEach((key, value) {
      SimplePriceResponseEntity tempEntity = SimplePriceResponseEntity(
          name: key,
          usdPrice: value["usd"],
          oneDayVolume: value["usd_24h_vol"],
          oneDayChangePercent: value["usd_24h_change"]);
      responseList.add(tempEntity);
    });

    return SimplePriceResponse(entitiesList: responseList);
  }
}

class SimplePriceResponseEntity {
  String name;
  double usdPrice;
  double oneDayVolume;
  double oneDayChangePercent;

  SimplePriceResponseEntity(
      {this.name, this.usdPrice, this.oneDayVolume, this.oneDayChangePercent});
}
