import 'package:cointrack/mock/exchange.dart';

class BINANCE {
  static List<Map<String, dynamic>> filteredPairs() {
    List<Map<String, dynamic>> pairs = [];
    String pairsString = '[';
    binance.forEach((element) {
      if (element.containsKey('permissions')) if (element['status'] ==
              'TRADING' &&
          element['permissions'].contains('SPOT')) {
        // TODO - remove bear & bull
        Map<String, String> map = {
          'symbol': element['symbol'],
          'baseAsset': element['baseAsset'],
          'quoteAsset': element['quoteAsset'],
          'exchange': 'binance'
        };
        pairs.add(map);
        pairsString +=
            '{"symbol": "${element['symbol']}", "baseAsset": "${element['baseAsset']}", "quoteAsset": "${element['quoteAsset']}", "exchange" : "binance"},';
      }
    });
    pairsString += ']';

    print(pairsString);
    return pairs;
  }

  static String filteredPairsString() {
    String pairsString = '';
    binance.forEach((element) {
      if (element.containsKey('permissions')) if (element['status'] ==
              'TRADING' &&
          element['permissions'].contains('SPOT')) {
        pairsString +=
            '{"symbol": "${element['symbol']}", "baseAsset": "${element['baseAsset']}", "quoteAsset": "${element['quoteAsset']}", "exchange" : "binance"},';
      }
    });
    return pairsString;
  }
}

class NOMICS {
  static List<Map<String, dynamic>> filteredPairs() {
    List<Map<String, dynamic>> pairs = [];
    String pairsString = '[';
    nomics.forEach((element) {
      if (element['status'] == 'active') {
        Map<String, String> map = {
          'symbol': "${element['currency']}USD",
          'baseAsset': element['currency'],
          'quoteAsset': 'USD',
          'exchange': 'nomics'
        };
        pairs.add(map);
        pairsString +=
            '{"symbol": "${element['currency']}USD", "baseAsset": "${element['currency']}", "quoteAsset": "USD", "exchange" : "nomics"},';
      }
    });
    pairsString += ']';

    print(pairsString);
    return pairs;
  }

  static String filteredPairsString() {
    String pairsString = '';
    nomics.forEach((element) {
      if (element['status'] == 'active') {
        pairsString +=
            '{"symbol": "${element['currency']}USD", "baseAsset": "${element['currency']}", "quoteAsset": "USD", "exchange" : "nomics"},';
      }
    });
    print(pairsString);
    return pairsString;
  }
}

class EXCHANGES {
  static String getFilteredExchangesString() {
    String filtered = '[';
    filtered += BINANCE.filteredPairsString();
    filtered += NOMICS.filteredPairsString();
    filtered += ']';
    return filtered;
  }

  // ['BTC','ETH'.....]
  static List<Map<String, dynamic>> getAssets() {
    List<Map<String, dynamic>> filteredExchange =
        BINANCE.filteredPairs() + NOMICS.filteredPairs();
    List<String> assetsList = [];
    String assetsString = '[';
    filteredExchange.forEach((element) {
      if (!assetsList.contains(element['baseAsset'])) {
        assetsList.add(element['baseAsset']!);
        assetsString += '"${element['baseAsset']!}",';
      }
    });
    assetsString += ']';
    print(assetsString);
    return filteredExchange;
  }

//[ {'BTC':['binance', 'nomics'...]} ,
//  {'ETH':['binance', 'nomics'...]} ...
//]
  static List<Map<String, List<String>>> getAssetExchanges() {
    List<Map<String, dynamic>> filteredExchange =
        BINANCE.filteredPairs() + NOMICS.filteredPairs();
    List<String> assetPairs = [];
    List<Map<String, List<String>>> assetExchanges = [];
    filteredExchange.forEach((element) {
      if (!assetPairs.contains(element['baseAsset'])) {
        assetPairs.add(element['baseAsset']!);

        Map<String, List<String>> asset = {
          element['baseAsset']!: [element['exchange']!]
        };

        assetExchanges.add(asset);
      } else {
        var index = assetExchanges.indexWhere(
            (element2) => element2.containsKey(element['baseAsset']));
        Map<String, List<String>> asset = assetExchanges[index];
        if (!asset.values.first.contains(element['exchange']))
          asset.values.first.add(element['exchange']!);
      }
    });

    String stringedAssets = '[';
    assetExchanges.forEach((element) {
      String pairs = '';
      element.values.first.forEach((pair) {
        pairs += '"$pair",';
      });
      stringedAssets += '{ "${element.keys.first}" : [ $pairs ] },';
    });

    stringedAssets += ']';

    print(stringedAssets);
    return assetExchanges;
  }

  //[ {"binance": [{"ETH": ["BTC","USDT"...]},{"BTC": ["EUR","USDT"...]}...]},
  //  {"nomics": [{"ETH": ["USD"...]},{"BTC": ["USD"...]}...]} ...]

  static List<Map<String, List<Map<String, List<String>>>>>
      getExchangeAssetPairs() {
    List<Map<String, dynamic>> filteredExchange =
        BINANCE.filteredPairs() + NOMICS.filteredPairs();
    List<Map<String, List<Map<String, List<String>>>>> exchangePairs = [];

    filteredExchange.forEach((element) {
      var exId = exchangePairs
          .indexWhere((ex) => ex.containsKey(element['exchange']!));
      if (exId == -1)
        exchangePairs.add({
          element['exchange']: [
            {
              element['baseAsset']: [element['quoteAsset']]
            }
          ]
        });
      else {
        var asId = exchangePairs[exId][element['exchange']]!
            .indexWhere((ass) => ass.containsKey(element['baseAsset']!));
        if (asId == -1)
          exchangePairs[exId][element['exchange']]!.add({
            element['baseAsset']: [element['quoteAsset']]
          });
        else
          exchangePairs[exId][element['exchange']]![asId][element['baseAsset']]!
              .add(element['quoteAsset']);
      }
    });

    String stringedAssets = '[';
    exchangePairs.forEach((element) {
      String assets = '';
      element.values.first.forEach((asset) {
        String pairs = '';
        asset.values.first.forEach((pair) {
          pairs += '"$pair",';
        });
        assets += '{ "${asset.keys.first}" : [ $pairs ] },';
      });
      stringedAssets += '{ "${element.keys.first}" : [ $assets ] },';
    });

    stringedAssets += ']';

    print(stringedAssets);
    return exchangePairs;
  }
}
