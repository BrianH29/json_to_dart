import 'package:flutter/material.dart';
import 'package:json_to_dart/service/api_service.dart';

import '../models/coin_list_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  late Future<CoinListModel> coinList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Json to Dart',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () async {
            coinList = ApiService().getCoinList();
          },
          child: const Text('press'),
        ),
      ),
    );
  }
}
