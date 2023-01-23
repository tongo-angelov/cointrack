import 'dart:async';
import 'dart:convert';

import 'package:cointrack/data/cubit/assets_cubit.dart';
import 'package:cointrack/data/cubit/portfolio_cubit.dart';
import 'package:web_socket_channel/io.dart';

abstract class WebsocketService {
  void init(List<String> assets);
  void pause();
  void resume();
  void close();
  void updateSub(List<String> assets);
}

class BinanceWebsocketService implements WebsocketService {
  final PortfolioCubit pCubit;
  final AssetsCubit aCubit;
  BinanceWebsocketService({required this.pCubit, required this.aCubit});

  late IOWebSocketChannel channel;
  late StreamSubscription sub;
  late List<String> _assets;

  @override
  void init(List<String> assets) {
    _assets = assets;
    _start();
  }

  void _start() {
    channel = IOWebSocketChannel.connect('wss://stream.binance.com:9443/ws');
    sub = channel.stream.listen((data) => {_updateData(data.toString())});
    _setSub();
  }

  @override
  void pause() {
    sub.cancel();
    channel.sink.close();
  }

  @override
  void resume() {
    _start();
  }

  @override
  void close() {
    sub.cancel();
    channel.sink.close();
  }

  @override
  void updateSub(List<String> assets) {
    if (assets.isNotEmpty) {
      _assets = assets;
      _setSub();
    }
  }

  void _updateData(String data) {
    var a = _decodeData(data);
    if (a != null) {
      var assetMap = aCubit.getAssetFromPairString(a.keys.first);

      pCubit.updateData(
          assetMap.keys.first, assetMap.values.first, a.values.first);
    }
  }

  Map<String, double>? _decodeData(String snap) {
    if (snap != '{"result":null,"id":1}' &&
        snap != "null" &&
        snap !=
            '{"error":{"code":2,"msg":"Invalid request: invalid stream"},"id":1}') {
      var jsonData = jsonDecode(snap);
      return {jsonData['s']: double.parse(jsonData['p'])};
    }
    return null;
  }

  void _setSub() {
    String pairString = '';
    _assets
        .forEach((asset) => pairString += ',"${asset.toLowerCase()}@aggTrade"');
    String subscriptionString =
        '{"method": "SUBSCRIBE","params": ["btcbusd@aggTrade" $pairString ],"id": 1}';

    try {
      channel.sink.add(subscriptionString);
    } catch (e) {
      print(e);
    }
  }
}
