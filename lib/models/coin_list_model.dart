// ignore_for_file: public_member_api_docs, sort_constructors_first
class CoinListModel {
  final String id, symbol, name;
  final List<String> categories;

  CoinListModel({
    required this.id,
    required this.symbol,
    required this.name,
    required this.categories,
  });

  factory CoinListModel.fromJson(Map<String, dynamic> json) {
    var categories = json['categories'];

    return CoinListModel(
      id: json['id'],
      symbol: json['symbol'],
      name: json['name'],
      categories: List<String>.from(categories),
    );
  }
}
