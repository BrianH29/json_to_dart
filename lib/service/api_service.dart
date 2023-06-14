import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/coin_list_model.dart';
import 'dart:developer' as developer;

class ApiService {
  static const String baseUrl =
      'https://api.coingecko.com/api/v3/coins/bitcoin';

  Future<CoinListModel> getCoinList() async {
    final url = Uri.parse(baseUrl);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // final Map<String, dynamic> list = jsonDecode(response.body);
      // coinList.add(CoinListModel.fromJson(jsonDecode(response.body)));
      CoinListModel coinList =
          CoinListModel.fromJson(jsonDecode(response.body));

      developer.log('${coinList.id} ', name: 'api_service id');
      developer.log('${coinList.symbol} ', name: 'api_service symbol');

      return coinList;
    }

    throw Error();
  }
}
