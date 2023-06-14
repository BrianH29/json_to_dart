import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json_to_dart/models/links_model.dart';
import '../models/coin_list_model.dart';
import 'dart:developer' as developer;

import '../models/image_model.dart';

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

      ImageModel image = coinList.image;
      LinksModel links = coinList.links;

      developer.log('${coinList.id} ', name: 'api_service id');
      developer.log('${coinList.symbol} ', name: 'api_service symbol');
      developer.log('${coinList.categories} ', name: 'api_service categories');
      developer.log('${image.large} ', name: 'api_service large image');
      developer.log('${links.homepage} ', name: 'api_service links homepage');
      developer.log('${links.officialForumUrl} ',
          name: 'api_service links officialForumUrl');

      return coinList;
    }

    throw Error();
  }
}
