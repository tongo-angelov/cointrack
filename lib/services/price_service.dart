import 'dart:convert';
import 'package:cointrack/data/cubit/assets_cubit.dart';
import 'package:http/http.dart' as http;

class PriceService {
  static const String nomicsKey = 'a4abc2be85db34885b0c4ee81031cabd537c892b';
  // static const String coinMCKey = '33abcf7f-dba4-4d16-88b4-5124fed57e7c';
  final AssetsCubit aCubit;
  PriceService({required this.aCubit});

  bool _binanceAvailable(String asset, String pair) {
    try {
      return aCubit.getAssetPairs(asset, 'binance').contains(pair);
    } catch (_) {
      return false;
    }
  }

  Future<double> getPriceToUSD(String asset, DateTime time) {
    return _binanceGetPriceToPair(
        asset, 'BUSD', time.millisecondsSinceEpoch.toString());
  }

  Future<double> getPriceToPair(String asset, String pair, DateTime time) {
    return _binanceGetPriceToPair(
        asset, pair, time.millisecondsSinceEpoch.toString());
  }

  Future<double> _binanceGetPriceToPair(
      String asset, String pair, String time) async {
    String symbol = asset.toUpperCase() + pair.toUpperCase();
    var response = await http.get(Uri.parse(
        'https://api.binance.com/api/v3/klines?symbol=$symbol&interval=1m&limit=10&endTime=$time'));

    if (response.statusCode == 200) {
      List body = jsonDecode(response.body);
      if (body.isEmpty) return 0;
      return double.parse(body[0][1]);
    } else if (response.statusCode == 429) {
      throw Exception('stop requesting from server');
    } else {
      return 0;
    }
  }

  Future<double> getCurrentPriceToUSD(String asset) {
    if (_binanceAvailable(asset, 'BUSD'))
      return _binanceGetCurrentPriceToPair(asset, 'BUSD');
    else
      return _nomicsGetCurrentPriceToPair(asset, 'USD');
  }

  Future<double> getCurrentPriceToPair(String asset, String pair) {
    if (_binanceAvailable(asset, pair))
      return _binanceGetCurrentPriceToPair(asset, pair);
    else
      return _nomicsGetCurrentPriceToPair(asset, pair);
  }

  Future<double> _binanceGetCurrentPriceToPair(
      String asset, String pair) async {
    String symbol = asset.toUpperCase() + pair.toUpperCase();
    var response = await http.get(Uri.parse(
        'https://api.binance.com/api/v3/ticker/price?symbol=$symbol'));

    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      return double.parse(body['price']);
    } else if (response.statusCode == 429) {
      throw Exception('stop requesting from server');
    } else {
      return 0;
    }
  }

  Future<double> _nomicsGetCurrentPriceToPair(String asset, String pair) async {
    // TODO - debug
    if (asset == 'USD') return 1;
    var response = await http.get(Uri.parse(
        'https://api.nomics.com/v1/currencies/ticker?key=' +
            nomicsKey +
            '&ids=' +
            asset +
            '&interval=1d,30d&convert=' +
            pair +
            '&per-page=100&page=1'));

    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      return double.parse(body[0]['price']);
    } else {
      return 0;
    }
  }
}
