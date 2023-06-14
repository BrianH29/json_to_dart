// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_to_dart/models/market_data/current_price.dart';

class MarketModel {
  CurrentPriceModel currentPrice;

  MarketModel({
    required this.currentPrice,
  });

  factory MarketModel.fromJson(Map<String, dynamic> json) {
    return MarketModel(
      currentPrice: CurrentPriceModel.fromJson(json['current_price']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['current_price'] = currentPrice;

    return data;
  }
}
