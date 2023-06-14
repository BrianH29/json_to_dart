// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_to_dart/models/links_model.dart';

import 'image_model.dart';

class CoinListModel {
  final String id, symbol, name;
  final List<String>? categories;
  final ImageModel image;
  final LinksModel links;

  CoinListModel({
    required this.id,
    required this.symbol,
    required this.name,
    required this.categories,
    required this.image,
    required this.links,
  });

  factory CoinListModel.fromJson(Map<String, dynamic> json) {
    return CoinListModel(
      id: json['id'],
      symbol: json['symbol'],
      name: json['name'],
      categories: json['categories'].cast<String>(),
      image: ImageModel.fromJson(json['image']),
      links: LinksModel.fromJson(json['links']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['symbol'] = symbol;
    data['name'] = name;
    data['categories'] = categories;
    data['image'] = image;
    data['links'] = links;

    return data;
  }
}
