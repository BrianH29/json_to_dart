import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json_to_dart/models/coin_list_model.dart';

class ApiService {
  static const String baseUrl =
      'https://api.coingecko.com/api/v3/coins/bitcoin';

  static Future<List<CoinListModel>> getCoinList() async {
    // List<CoinListModel> coinList = [];
    final url = Uri.parse(baseUrl);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // final Map<String, dynamic> list = jsonDecode(response.body);
      // coinList.add(CoinListModel.fromJson(list));
      CoinListModel coinList =
          CoinListModel.fromJson(jsonDecode(response.body));
      print(coinList.id.toString());
    }

    return [];
  }
}
