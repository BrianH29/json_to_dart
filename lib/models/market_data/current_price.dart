import 'package:json_to_dart/models/market_data/market_model.dart';

class CurrentPriceModel extends MarketModel {
  final int aed, ars;

  CurrentPriceModel({
    required this.aed,
    required this.ars,
  });

  factory CurrentPriceModel.fromJson(Map<String, dynamic> json) {
    return CurrentPriceModel(aed: json['aed'], ars: json['ars']);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['aed'] = aed;
    data['ars'] = ars;

    return data;
  }
}
