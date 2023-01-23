import 'dart:convert';

import 'package:cointrack/data/enums/enums.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import 'package:cointrack/data/managers/assets_manager.dart';
import 'package:cointrack/data/models/asset.dart';
import 'package:cointrack/mock/exchange.dart';
import 'package:cointrack/mock/temp.dart';

class AssetsState {
  List<BaseAsset> assets;
  bool loading;
  AssetsState({
    required this.assets,
    this.loading = false,
  });
  AssetsState.empty()
      : assets = [],
        loading = false;

  AssetsState copyWith({
    List<BaseAsset>? assets,
    bool? loading,
  }) {
    return AssetsState(
      assets: assets ?? this.assets,
      loading: loading ?? this.loading,
    );
  }
}

class AssetsCubit extends Cubit<AssetsState> {
  final AssetsDatabaseManager aManager = HiveAssetsDatabaseManager();

  AssetsCubit() : super(AssetsState.empty()) {
    emit(AssetsState(assets: aManager.getAssets()));
  }

  void like(String assetCode) {
    emit(state.copyWith(assets: aManager.likeAsset(assetCode)));
  }

  List<String> getAssets() {
    List<String> assets = [];
    state.assets.forEach((element) {
      assets.add(element.code);
    });
    return assets;
  }

  void updateAssetsPrice() async {
    emit(state.copyWith(loading: true));
    var ass = await compute(getPrices, '');
    emit(state.copyWith(assets: ass, loading: false));
    aManager.saveAssets(ass);
    sortAssets(SortOrder.value, true);
  }

  void sortAssets(SortOrder order, bool descending) async {
    var _assets = state.assets;
    if (descending) {
      if (order == SortOrder.value) {
        _assets.sort((a, b) => b.currentPriceUSD.compareTo(a.currentPriceUSD));
      }
    } else {
      if (order == SortOrder.value) {
        _assets.sort((a, b) => a.currentPriceUSD.compareTo(b.currentPriceUSD));
      }
    }
    emit(state.copyWith(assets: _assets));
    aManager.saveAssets(_assets);
  }

  BaseAsset getAssetFull(String code) {
    return state.assets.firstWhere((element) => element.code == code);
  }

  List<String> getAssetExchanges(String assetCode) {
    List<String> exchanges = [];

    var asset = state.assets.firstWhere((element) => element.code == assetCode);
    asset.exchanges.forEach((ex) {
      exchanges.add(ex.exchange);
    });

    return exchanges;
  }

  List<String> getAssetPairs(String assetCode, String exchange) {
    List<String> pairs = [];

    var asset = state.assets.firstWhere((element) => element.code == assetCode);
    asset.exchanges.forEach((ex) {
      if (ex.exchange == exchange) pairs = ex.pairs;
    });

    return pairs;
  }

  Map<String, String> getAssetFromPairString(String pairString) {
    Map<String, String> symbol = AppFilteredExchanges.firstWhere(
        (element) => element.containsValue(pairString));
    String assetCode = symbol['baseAsset']!;
    String pairCode = symbol['quoteAsset']!;
    return {assetCode: pairCode};
  }
}

///
///
///
Future<List<BaseAsset>> getPrices(String empty) async {
  List<ccAsset> ccAssets = [];
  List<BaseAsset> baseAssets = [];
  List<String> assetsList = [];

  List ccData = [];
  List ccData1 = await getCCPage(0);
  List ccData2 = await getCCPage(1);
  List ccData3 = await getCCPage(2);
  List ccData4 = await getCCPage(3);
  List ccData5 = await getCCPage(4);
  List ccData6 = await getCCPage(5);
  List ccData7 = await getCCPage(6);
  List ccData8 = await getCCPage(7);
  List ccData9 = await getCCPage(8);
  List ccData10 = await getCCPage(9);
  ccData = [
    ...ccData1,
    ...ccData2,
    ...ccData3,
    ...ccData4,
    ...ccData5,
    ...ccData6,
    ...ccData7,
    ...ccData8,
    ...ccData9,
    ...ccData10,
  ];

  for (var i = 0; i < ccData.length; i++) {
    ccAssets.add(ccAsset.fromMap(ccData[i]));
  }

  binance.forEach((element) {
    if (element.containsKey('permissions')) if (element['status'] ==
            'TRADING' &&
        element['permissions'].contains('SPOT')) {
      if (!assetsList.contains(element['baseAsset'])) {
        BaseAsset asset = BaseAsset.empty();
        int index =
            ccAssets.indexWhere((ass) => ass.code == element['baseAsset']);
        if (index > -1) {
          asset = asset.copyWith(
            code: '${element['baseAsset']}',
            name: '${ccAssets[index].name}',
            platform: '${ccAssets[index].platform}',
            launched: '${ccAssets[index].launched}',
            image: '${ccAssets[index].image}',
            exchanges: [
              ExchangePairs(
                  exchange: 'binance', pairs: ['${element['quoteAsset']}'])
            ],
            maxSupply: 0,
            proofType: '${ccAssets[index].proofType}',
            algorithm: '${ccAssets[index].algorithm}',
            supported: true,
            currentPriceUSD: ccAssets[index].currentPriceUSD,
            tradeVolumeUSD24: ccAssets[index].tradeVolumeUSD24,
            changeUSD24: ccAssets[index].changeUSD24,
          );
        } else
          asset = asset.copyWith(
              code: '${element['baseAsset']}',
              name: '${element['baseAsset']}',
              exchanges: [
                ExchangePairs(
                    exchange: 'binance', pairs: ['${element['quoteAsset']}'])
              ],
              supported: true);
        assetsList.add('${element['baseAsset']}');
        baseAssets.add(asset);
      } else {
        var assetIndex =
            baseAssets.indexWhere((a) => a.code == element['baseAsset']);
        baseAssets[assetIndex].exchanges[0].pairs.add(element['quoteAsset']);
      }
    }
  });

  ccData.forEach((value) {
    if (value['RAW'] == null) return;
    if (!assetsList.contains(value['CoinInfo']['Name'])) {
      BaseAsset asset = BaseAsset.empty();
      asset = asset.copyWith(
        code: '${value['CoinInfo']['Name']}',
        name: '${value['CoinInfo']['FullName']}',
        platform: '${value['CoinInfo']['PlatformType']}',
        launched: '${value['CoinInfo']['AssetLaunchDate']}',
        image: '${value['CoinInfo']['ImageUrl']}',
        exchanges: [
          ExchangePairs(exchange: 'crypto', pairs: ['USD'])
        ],
        maxSupply: 0,
        proofType: '${value['CoinInfo']['ProofType']}',
        algorithm: '${value['CoinInfo']['Algorithm']}',
        supported: false,
        currentPriceUSD: value['RAW']['USD']['PRICE'].toDouble(),
        tradeVolumeUSD24: value['RAW']['USD']['VOLUME24HOURTO'].toDouble(),
        changeUSD24: value['RAW']['USD']['CHANGE24HOUR'].toDouble(),
      );
      baseAssets.add(asset);
      assetsList.add('${value['CoinInfo']['Name']}');
    } else {
      var assetIndex =
          baseAssets.indexWhere((a) => a.code == value['CoinInfo']['Name']);
      baseAssets[assetIndex]
          .exchanges
          .add(ExchangePairs(exchange: 'crypto', pairs: ['USD']));
    }
  });

  return baseAssets;
}

Future<List> getCCPage(int page) async {
  var response = await http.get(Uri.parse(
      'https://min-api.cryptocompare.com/data/top/mktcapfull?tsym=USD&limit=100&page=$page'));

  if (response.statusCode == 200) {
    Map<String, dynamic> body = jsonDecode(response.body);
    return body['Data'];
  } else {
    return [];
  }
}

class ccAsset {
  final String code;
  final String name;
  final String platform;
  final String launched;
  final String image;
  final String proofType;
  final String algorithm;

  final double currentPriceUSD;
  final double tradeVolumeUSD24;
  final double changeUSD24;

  ccAsset({
    required this.code,
    required this.name,
    required this.platform,
    required this.launched,
    required this.image,
    required this.proofType,
    required this.algorithm,
    required this.currentPriceUSD,
    required this.tradeVolumeUSD24,
    required this.changeUSD24,
  });

  factory ccAsset.fromMap(Map<String, dynamic> map) {
    return map['RAW'] == null
        ? ccAsset(
            code: map['CoinInfo']['Name'],
            name: map['CoinInfo']['FullName'],
            platform: map['CoinInfo']['Name'],
            launched: map['CoinInfo']['AssetLaunchDate'],
            image: map['CoinInfo']['ImageUrl'],
            proofType: map['CoinInfo']['ProofType'],
            algorithm: map['CoinInfo']['Algorithm'],
            currentPriceUSD: 0,
            tradeVolumeUSD24: 0,
            changeUSD24: 0,
          )
        : ccAsset(
            code: map['CoinInfo']['Name'],
            name: map['CoinInfo']['FullName'],
            platform: map['CoinInfo']['Name'],
            launched: map['CoinInfo']['AssetLaunchDate'],
            image: map['CoinInfo']['ImageUrl'] ?? 'empty',
            proofType: map['CoinInfo']['ProofType'],
            algorithm: map['CoinInfo']['Algorithm'],
            currentPriceUSD: map['RAW']['USD']['PRICE'].toDouble(),
            tradeVolumeUSD24: map['RAW']['USD']['VOLUME24HOURTO'].toDouble(),
            changeUSD24: map['RAW']['USD']['CHANGE24HOUR'].toDouble(),
          );
  }

  factory ccAsset.fromJson(String source) =>
      ccAsset.fromMap(json.decode(source));
}
