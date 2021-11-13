class TickerResponse {
  List<TickerResponseEntity> entitiesList;

  TickerResponse({this.entitiesList});

  factory TickerResponse.fromJson(Map<String, dynamic> json) {
    List<TickerResponseEntity> responseList = [];

    json.forEach((key, value) {
      TickerResponseEntity tempEntity = TickerResponseEntity(
          name: key,
          usdPrice: value["usd"],
          oneDayVolume: value["usd_24h_vol"],
          oneDayChangePercent: value["usd_24h_change"]);
      responseList.add(tempEntity);
    });

    return TickerResponse(entitiesList: responseList);
  }
}

class TickerResponseEntity {
  String name;
  double usdPrice;
  double oneDayVolume;
  double oneDayChangePercent;

  TickerResponseEntity(
      {this.name, this.usdPrice, this.oneDayVolume, this.oneDayChangePercent});
}
