class Stock {
  final String symbol;
  final String name;
  final double price;
  final DateTime date;

  Stock({required this.symbol, required this.name, required this.price, required this.date});

  factory Stock.fromJson(Map<String, dynamic> json) {
    return Stock(
      symbol: json['symbol'],
      name: json['name'],
      price: json['price'].toDouble(),
      date: DateTime.parse(json['date']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'symbol': symbol,
      'name': name,
      'price': price,
      'date': date.toIso8601String(),
    };
  }
}