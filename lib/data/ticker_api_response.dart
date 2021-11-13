class TickerResponseEntity {
  String name;
  String timestamp;
  double price;

  TickerResponseEntity({this.name, this.timestamp, this.price});

  factory TickerResponseEntity.fromJson(Map<String, dynamic> json) {
    return TickerResponseEntity(
        name: json["name"], timestamp: json["timestamp"], price: json["price"]);
  }
}
