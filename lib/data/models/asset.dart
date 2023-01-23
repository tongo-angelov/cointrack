import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:cointrack/data/enums/enums.dart';
import 'package:cointrack/data/models/transaction.dart';
import 'package:cointrack/utils/hive_constants.dart';

part 'asset.g.dart';

@JsonSerializable()
@HiveType(typeId: EXCHANGE_PAIR_ID)
class ExchangePairs {
  @HiveField(0)
  final String exchange;
  @HiveField(1)
  final List<String> pairs;

  ExchangePairs({required this.exchange, required this.pairs});

  factory ExchangePairs.fromJson(Map<String, dynamic> json) =>
      _$ExchangePairsFromJson(json);
  Map<String, dynamic> toJson() => _$ExchangePairsToJson(this);
}

@JsonSerializable()
@HiveType(typeId: BASE_ID)
class BaseAsset {
  @HiveField(0)
  final String name; // 'AMP Token'
  @HiveField(1)
  final String code; // 'AMP'
  @HiveField(2)
  final String image; // 'https://.../static/images/currencies/AMP2.jpg'
  @HiveField(3)
  final String launched;
  @HiveField(4)
  final List<ExchangePairs> exchanges;
  @HiveField(5)
  final bool liked;
  @HiveField(6)
  final double maxSupply;
  @HiveField(7)
  final String algorithm;
  @HiveField(8)
  final String proofType;
  @HiveField(9)
  final String platform;
  @HiveField(13)
  final bool supported;
  ////
  @HiveField(10)
  final double currentPriceUSD;
  @HiveField(11)
  final double tradeVolumeUSD24;
  @HiveField(12)
  final double changeUSD24;

  // final String type = 'token';
  // final Map<String, String> query = {'nomics': 'AMP2'};

  /// dynamic
  // final double circulatingSupply = 48006863798; // AMP
  // final double marketCap = 4595653139; // USD

  factory BaseAsset.fromJson(Map<String, dynamic> json) =>
      _$BaseAssetFromJson(json);
  Map<String, dynamic> toJson() => _$BaseAssetToJson(this);

  BaseAsset({
    required this.name,
    required this.code,
    required this.image,
    required this.launched,
    required this.exchanges,
    required this.liked,
    required this.maxSupply,
    required this.algorithm,
    required this.proofType,
    required this.platform,
    required this.supported,
    required this.currentPriceUSD,
    required this.tradeVolumeUSD24,
    required this.changeUSD24,
  });
  BaseAsset.empty()
      : name = '',
        code = '',
        image = 'empty',
        launched = 'N/A',
        exchanges = [],
        liked = false,
        maxSupply = 0,
        algorithm = 'N/A',
        proofType = 'N/A',
        platform = 'N/A',
        supported = false,
        currentPriceUSD = 0,
        tradeVolumeUSD24 = 0,
        changeUSD24 = 0;

  BaseAsset copyWith({
    String? name,
    String? code,
    String? image,
    String? launched,
    List<ExchangePairs>? exchanges,
    bool? liked,
    double? maxSupply,
    String? algorithm,
    String? proofType,
    String? platform,
    bool? supported,
    double? currentPriceUSD,
    double? tradeVolumeUSD24,
    double? changeUSD24,
  }) {
    return BaseAsset(
      name: name ?? this.name,
      code: code ?? this.code,
      image: image ?? this.image,
      launched: launched ?? this.launched,
      exchanges: exchanges ?? this.exchanges,
      liked: liked ?? this.liked,
      maxSupply: maxSupply ?? this.maxSupply,
      algorithm: algorithm ?? this.algorithm,
      proofType: proofType ?? this.proofType,
      platform: platform ?? this.platform,
      supported: supported ?? this.supported,
      currentPriceUSD: currentPriceUSD ?? this.currentPriceUSD,
      tradeVolumeUSD24: tradeVolumeUSD24 ?? this.tradeVolumeUSD24,
      changeUSD24: changeUSD24 ?? this.changeUSD24,
    );
  }
}

@HiveType(typeId: ASSET_ID)
@JsonSerializable()
class Asset {
  @HiveField(0)
  final String code;
  @HiveField(26)
  final String exchange;
  @HiveField(3)
  final String pairCode;
  @HiveField(4)
  final AssetType pairType;

  // rework assetType - token, coin, stable coin
  @HiveField(2)
  final AssetType type;
  //

  // onTransaction
  @HiveField(5)
  final double depositedAmount;
  @HiveField(6)
  final double currentAmount;

  @HiveField(7)
  final double assetToUSD;
  @HiveField(8)
  final double assetToUSDTotal;
  @HiveField(9)
  final double assetToPair;
  @HiveField(10)
  final double assetToPairTotal;

  @HiveField(11)
  final List<Transaction> transactions;

  // onDataUpdate
  @HiveField(12)
  final double updatedValueToPairPerAmount;
  @HiveField(13)
  final double updatedPairValueToUSDPerAmount;
  @HiveField(14)
  final DateTime updatedAt;

  // onCalculate
  @HiveField(15)
  final bool usdUp;
  @HiveField(16)
  final double currentUSDPercentage;
  @HiveField(17)
  final double currentValueToUSDPerAmount;
  @HiveField(18)
  final double currentValueToUSDTotal;
  @HiveField(19)
  final double currentUSDPL;
  @HiveField(20)
  final bool pairUp;
  @HiveField(21)
  final double currentPairPercentage;
  @HiveField(22)
  final double currentValueToPairTotal;
  @HiveField(23)
  final double currentPairPL;
  @HiveField(24)
  final DateTime calculatedAt;

  // used for assetListCard
  @HiveField(25)
  final DateTime debugUIUpdate;

  Asset({
    required this.code,
    required this.type,
    required this.exchange,
    required this.pairCode,
    required this.pairType,
    required this.depositedAmount,
    required this.currentAmount,
    required this.assetToPair,
    required this.assetToPairTotal,
    required this.updatedPairValueToUSDPerAmount,
    required this.assetToUSDTotal,
    required this.assetToUSD,
    required this.transactions,
    required this.usdUp,
    required this.currentUSDPercentage,
    required this.currentValueToUSDPerAmount,
    required this.currentValueToUSDTotal,
    required this.currentUSDPL,
    required this.pairUp,
    required this.currentPairPercentage,
    required this.updatedValueToPairPerAmount,
    required this.currentValueToPairTotal,
    required this.currentPairPL,
    required this.updatedAt,
    required this.calculatedAt,
    required this.debugUIUpdate,
  });

  Asset.empty()
      : pairCode = '',
        code = '',
        exchange = '',
        pairType = AssetType.none,
        depositedAmount = 0,
        currentAmount = 0,
        updatedPairValueToUSDPerAmount = 0,
        assetToPair = 0,
        assetToPairTotal = 0,
        assetToUSD = 0,
        assetToUSDTotal = 0,
        type = AssetType.none,
        usdUp = false,
        currentUSDPercentage = 0,
        currentValueToUSDPerAmount = 0,
        currentValueToUSDTotal = 0,
        currentUSDPL = 0,
        pairUp = false,
        currentPairPercentage = 0,
        updatedValueToPairPerAmount = 0,
        currentValueToPairTotal = 0,
        currentPairPL = 0,
        transactions = [],
        updatedAt = DateTime.now(),
        calculatedAt = DateTime.now(),
        debugUIUpdate = DateTime.now();

  Asset.newBaseAsset({
    required this.updatedValueToPairPerAmount,
    required this.currentValueToPairTotal,
    required this.currentValueToUSDPerAmount,
    required this.currentValueToUSDTotal,
    required this.depositedAmount,
    required this.currentAmount,
    required this.assetToPair,
    required this.assetToPairTotal,
    required this.assetToUSD,
    required this.assetToUSDTotal,
    required this.code,
    required this.exchange,
    required this.transactions,
    required this.updatedAt,
    required this.calculatedAt,
    required this.debugUIUpdate,
  })  : updatedPairValueToUSDPerAmount = 1,
        type = AssetType.crypto,
        pairCode = 'USD',
        pairType = AssetType.fiat,
        usdUp = false,
        currentUSDPercentage = 0,
        currentUSDPL = 0,
        pairUp = false,
        currentPairPercentage = 0,
        currentPairPL = 0;

  Asset.newAsset({
    required this.updatedValueToPairPerAmount,
    required this.currentValueToPairTotal,
    required this.currentValueToUSDPerAmount,
    required this.currentValueToUSDTotal,
    required this.pairCode,
    required this.pairType,
    required this.exchange,
    required this.depositedAmount,
    required this.currentAmount,
    required this.assetToPair,
    required this.assetToPairTotal,
    required this.assetToUSD,
    required this.assetToUSDTotal,
    required this.updatedPairValueToUSDPerAmount,
    required this.type,
    required this.code,
    required this.transactions,
    required this.updatedAt,
    required this.calculatedAt,
    required this.debugUIUpdate,
  })  : usdUp = false,
        currentUSDPercentage = 0,
        currentUSDPL = 0,
        pairUp = false,
        currentPairPercentage = 0,
        currentPairPL = 0;

  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);
  Map<String, dynamic> toJson() => _$AssetToJson(this);

  Asset copyWith({
    String? code,
    AssetType? type,
    String? pairString,
    String? pairCode,
    String? pairName,
    String? exchange,
    AssetType? pairType,
    double? depositedAmount,
    double? currentAmount,
    double? assetToPair,
    double? assetToPairTotal,
    double? assetToUSD,
    double? assetToUSDTotal,
    double? updatedPairValueToUSDPerAmount,
    List<Transaction>? transactions,
    bool? usdUp,
    double? currentUSDPercentage,
    double? currentValueToUSDPerAmount,
    double? currentValueToUSDTotal,
    double? currentUSDPL,
    bool? pairUp,
    double? currentPairPercentage,
    double? updatedValueToPairPerAmount,
    double? currentValueToPairTotal,
    double? currentPairPL,
    DateTime? updatedAt,
    DateTime? calculatedAt,
    DateTime? debugUIUpdate,
  }) {
    return Asset(
      code: code ?? this.code,
      exchange: exchange ?? this.exchange,
      type: type ?? this.type,
      pairCode: pairCode ?? this.pairCode,
      pairType: pairType ?? this.pairType,
      depositedAmount: depositedAmount ?? this.depositedAmount,
      currentAmount: currentAmount ?? this.currentAmount,
      assetToPair: assetToPair ?? this.assetToPair,
      assetToPairTotal: assetToPairTotal ?? this.assetToPairTotal,
      assetToUSD: assetToUSD ?? this.assetToUSD,
      assetToUSDTotal: assetToUSDTotal ?? this.assetToUSDTotal,
      updatedPairValueToUSDPerAmount:
          updatedPairValueToUSDPerAmount ?? this.updatedPairValueToUSDPerAmount,
      transactions: transactions ?? this.transactions,
      usdUp: usdUp ?? this.usdUp,
      currentUSDPercentage: currentUSDPercentage ?? this.currentUSDPercentage,
      currentValueToUSDPerAmount:
          currentValueToUSDPerAmount ?? this.currentValueToUSDPerAmount,
      currentValueToUSDTotal:
          currentValueToUSDTotal ?? this.currentValueToUSDTotal,
      currentUSDPL: currentUSDPL ?? this.currentUSDPL,
      pairUp: pairUp ?? this.pairUp,
      currentPairPercentage:
          currentPairPercentage ?? this.currentPairPercentage,
      updatedValueToPairPerAmount:
          updatedValueToPairPerAmount ?? this.updatedValueToPairPerAmount,
      currentValueToPairTotal:
          currentValueToPairTotal ?? this.currentValueToPairTotal,
      currentPairPL: currentPairPL ?? this.currentPairPL,
      updatedAt: updatedAt ?? this.updatedAt,
      calculatedAt: calculatedAt ?? this.calculatedAt,
      debugUIUpdate: debugUIUpdate ?? this.debugUIUpdate,
    );
  }

  Asset update({
    required double updatedPairValueToUSDPerAmount,
    required double updatedValueToPairPerAmount,
    required DateTime updatedAt,
    required DateTime debugUIUpdate,
  }) {
    return Asset(
      code: this.code,
      type: this.type,
      exchange: this.exchange,
      pairCode: this.pairCode,
      pairType: this.pairType,
      depositedAmount: this.depositedAmount,
      currentAmount: this.currentAmount,
      assetToPair: this.assetToPair,
      assetToPairTotal: this.assetToPairTotal,
      assetToUSD: this.assetToUSD,
      assetToUSDTotal: this.assetToUSDTotal,
      updatedPairValueToUSDPerAmount: updatedPairValueToUSDPerAmount,
      transactions: this.transactions,
      usdUp: this.usdUp,
      currentUSDPercentage: this.currentUSDPercentage,
      currentValueToUSDPerAmount: this.currentValueToUSDPerAmount,
      currentValueToUSDTotal: this.currentValueToUSDTotal,
      currentUSDPL: this.currentUSDPL,
      pairUp: this.pairUp,
      currentPairPercentage: this.currentPairPercentage,
      updatedValueToPairPerAmount: updatedValueToPairPerAmount,
      currentValueToPairTotal: this.currentValueToPairTotal,
      currentPairPL: this.currentPairPL,
      updatedAt: updatedAt,
      calculatedAt: this.calculatedAt,
      debugUIUpdate: debugUIUpdate,
    );
  }

  Asset calculate({
    required bool usdUp,
    required double currentUSDPercentage,
    required double currentValueToUSDPerAmount,
    required double currentValueToUSDTotal,
    required double currentUSDPL,
    required bool pairUp,
    required double currentPairPercentage,
    required double currentValueToPairTotal,
    required double currentPairPL,
    required DateTime calculatedAt,
  }) {
    return Asset(
      code: this.code,
      type: this.type,
      exchange: this.exchange,
      pairCode: this.pairCode,
      pairType: this.pairType,
      depositedAmount: this.depositedAmount,
      currentAmount: this.currentAmount,
      assetToPair: this.assetToPair,
      assetToPairTotal: this.assetToPairTotal,
      assetToUSD: this.assetToUSD,
      assetToUSDTotal: this.assetToUSDTotal,
      updatedPairValueToUSDPerAmount: this.updatedPairValueToUSDPerAmount,
      transactions: this.transactions,
      usdUp: usdUp,
      currentUSDPercentage: currentUSDPercentage,
      currentValueToUSDPerAmount: currentValueToUSDPerAmount,
      currentValueToUSDTotal: currentValueToUSDTotal,
      currentUSDPL: currentUSDPL,
      pairUp: pairUp,
      currentPairPercentage: currentPairPercentage,
      updatedValueToPairPerAmount: this.updatedValueToPairPerAmount,
      currentValueToPairTotal: currentValueToPairTotal,
      currentPairPL: currentPairPL,
      updatedAt: this.updatedAt,
      calculatedAt: calculatedAt,
      debugUIUpdate: this.debugUIUpdate,
    );
  }

  @override
  String toString() {
    return 'code: $code\ntype: $type\nexchange: $exchange\npairCode: $pairCode\npairType: $pairType\ndepositedAmount: $depositedAmount\ncurrentAmount: $currentAmount\nassetToUSD: $assetToUSD\nassetToUSDTotal: $assetToUSDTotal\nassetToPair: $assetToPair\nassetToPairTotal: $assetToPairTotal';
  }
}
