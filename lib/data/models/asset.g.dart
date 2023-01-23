// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExchangePairsAdapter extends TypeAdapter<ExchangePairs> {
  @override
  final int typeId = 12;

  @override
  ExchangePairs read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExchangePairs(
      exchange: fields[0] as String,
      pairs: (fields[1] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExchangePairs obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.exchange)
      ..writeByte(1)
      ..write(obj.pairs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExchangePairsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BaseAssetAdapter extends TypeAdapter<BaseAsset> {
  @override
  final int typeId = 11;

  @override
  BaseAsset read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BaseAsset(
      name: fields[0] as String,
      code: fields[1] as String,
      image: fields[2] as String,
      launched: fields[3] as String,
      exchanges: (fields[4] as List).cast<ExchangePairs>(),
      liked: fields[5] as bool,
      maxSupply: fields[6] as double,
      algorithm: fields[7] as String,
      proofType: fields[8] as String,
      platform: fields[9] as String,
      supported: fields[13] as bool,
      currentPriceUSD: fields[10] as double,
      tradeVolumeUSD24: fields[11] as double,
      changeUSD24: fields[12] as double,
    );
  }

  @override
  void write(BinaryWriter writer, BaseAsset obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.code)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.launched)
      ..writeByte(4)
      ..write(obj.exchanges)
      ..writeByte(5)
      ..write(obj.liked)
      ..writeByte(6)
      ..write(obj.maxSupply)
      ..writeByte(7)
      ..write(obj.algorithm)
      ..writeByte(8)
      ..write(obj.proofType)
      ..writeByte(9)
      ..write(obj.platform)
      ..writeByte(13)
      ..write(obj.supported)
      ..writeByte(10)
      ..write(obj.currentPriceUSD)
      ..writeByte(11)
      ..write(obj.tradeVolumeUSD24)
      ..writeByte(12)
      ..write(obj.changeUSD24);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BaseAssetAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AssetAdapter extends TypeAdapter<Asset> {
  @override
  final int typeId = 7;

  @override
  Asset read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Asset(
      code: fields[0] as String,
      type: fields[2] as AssetType,
      exchange: fields[26] as String,
      pairCode: fields[3] as String,
      pairType: fields[4] as AssetType,
      depositedAmount: fields[5] as double,
      currentAmount: fields[6] as double,
      assetToPair: fields[9] as double,
      assetToPairTotal: fields[10] as double,
      updatedPairValueToUSDPerAmount: fields[13] as double,
      assetToUSDTotal: fields[8] as double,
      assetToUSD: fields[7] as double,
      transactions: (fields[11] as List).cast<Transaction>(),
      usdUp: fields[15] as bool,
      currentUSDPercentage: fields[16] as double,
      currentValueToUSDPerAmount: fields[17] as double,
      currentValueToUSDTotal: fields[18] as double,
      currentUSDPL: fields[19] as double,
      pairUp: fields[20] as bool,
      currentPairPercentage: fields[21] as double,
      updatedValueToPairPerAmount: fields[12] as double,
      currentValueToPairTotal: fields[22] as double,
      currentPairPL: fields[23] as double,
      updatedAt: fields[14] as DateTime,
      calculatedAt: fields[24] as DateTime,
      debugUIUpdate: fields[25] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, Asset obj) {
    writer
      ..writeByte(26)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(26)
      ..write(obj.exchange)
      ..writeByte(3)
      ..write(obj.pairCode)
      ..writeByte(4)
      ..write(obj.pairType)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.depositedAmount)
      ..writeByte(6)
      ..write(obj.currentAmount)
      ..writeByte(7)
      ..write(obj.assetToUSD)
      ..writeByte(8)
      ..write(obj.assetToUSDTotal)
      ..writeByte(9)
      ..write(obj.assetToPair)
      ..writeByte(10)
      ..write(obj.assetToPairTotal)
      ..writeByte(11)
      ..write(obj.transactions)
      ..writeByte(12)
      ..write(obj.updatedValueToPairPerAmount)
      ..writeByte(13)
      ..write(obj.updatedPairValueToUSDPerAmount)
      ..writeByte(14)
      ..write(obj.updatedAt)
      ..writeByte(15)
      ..write(obj.usdUp)
      ..writeByte(16)
      ..write(obj.currentUSDPercentage)
      ..writeByte(17)
      ..write(obj.currentValueToUSDPerAmount)
      ..writeByte(18)
      ..write(obj.currentValueToUSDTotal)
      ..writeByte(19)
      ..write(obj.currentUSDPL)
      ..writeByte(20)
      ..write(obj.pairUp)
      ..writeByte(21)
      ..write(obj.currentPairPercentage)
      ..writeByte(22)
      ..write(obj.currentValueToPairTotal)
      ..writeByte(23)
      ..write(obj.currentPairPL)
      ..writeByte(24)
      ..write(obj.calculatedAt)
      ..writeByte(25)
      ..write(obj.debugUIUpdate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AssetAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExchangePairs _$ExchangePairsFromJson(Map<String, dynamic> json) {
  return ExchangePairs(
    exchange: json['exchange'] as String,
    pairs: (json['pairs'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$ExchangePairsToJson(ExchangePairs instance) =>
    <String, dynamic>{
      'exchange': instance.exchange,
      'pairs': instance.pairs,
    };

BaseAsset _$BaseAssetFromJson(Map<String, dynamic> json) {
  return BaseAsset(
    name: json['name'] as String,
    code: json['code'] as String,
    image: json['image'] as String,
    launched: json['launched'] as String,
    exchanges: (json['exchanges'] as List<dynamic>)
        .map((e) => ExchangePairs.fromJson(e as Map<String, dynamic>))
        .toList(),
    liked: json['liked'] as bool,
    maxSupply: (json['maxSupply'] as num).toDouble(),
    algorithm: json['algorithm'] as String,
    proofType: json['proofType'] as String,
    platform: json['platform'] as String,
    supported: json['supported'] as bool,
    currentPriceUSD: (json['currentPriceUSD'] as num).toDouble(),
    tradeVolumeUSD24: (json['tradeVolumeUSD24'] as num).toDouble(),
    changeUSD24: (json['changeUSD24'] as num).toDouble(),
  );
}

Map<String, dynamic> _$BaseAssetToJson(BaseAsset instance) => <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'image': instance.image,
      'launched': instance.launched,
      'exchanges': instance.exchanges,
      'liked': instance.liked,
      'maxSupply': instance.maxSupply,
      'algorithm': instance.algorithm,
      'proofType': instance.proofType,
      'platform': instance.platform,
      'supported': instance.supported,
      'currentPriceUSD': instance.currentPriceUSD,
      'tradeVolumeUSD24': instance.tradeVolumeUSD24,
      'changeUSD24': instance.changeUSD24,
    };

Asset _$AssetFromJson(Map<String, dynamic> json) {
  return Asset(
    code: json['code'] as String,
    type: _$enumDecode(_$AssetTypeEnumMap, json['type']),
    exchange: json['exchange'] as String,
    pairCode: json['pairCode'] as String,
    pairType: _$enumDecode(_$AssetTypeEnumMap, json['pairType']),
    depositedAmount: (json['depositedAmount'] as num).toDouble(),
    currentAmount: (json['currentAmount'] as num).toDouble(),
    assetToPair: (json['assetToPair'] as num).toDouble(),
    assetToPairTotal: (json['assetToPairTotal'] as num).toDouble(),
    updatedPairValueToUSDPerAmount:
        (json['updatedPairValueToUSDPerAmount'] as num).toDouble(),
    assetToUSDTotal: (json['assetToUSDTotal'] as num).toDouble(),
    assetToUSD: (json['assetToUSD'] as num).toDouble(),
    transactions: (json['transactions'] as List<dynamic>)
        .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
        .toList(),
    usdUp: json['usdUp'] as bool,
    currentUSDPercentage: (json['currentUSDPercentage'] as num).toDouble(),
    currentValueToUSDPerAmount:
        (json['currentValueToUSDPerAmount'] as num).toDouble(),
    currentValueToUSDTotal: (json['currentValueToUSDTotal'] as num).toDouble(),
    currentUSDPL: (json['currentUSDPL'] as num).toDouble(),
    pairUp: json['pairUp'] as bool,
    currentPairPercentage: (json['currentPairPercentage'] as num).toDouble(),
    updatedValueToPairPerAmount:
        (json['updatedValueToPairPerAmount'] as num).toDouble(),
    currentValueToPairTotal:
        (json['currentValueToPairTotal'] as num).toDouble(),
    currentPairPL: (json['currentPairPL'] as num).toDouble(),
    updatedAt: DateTime.parse(json['updatedAt'] as String),
    calculatedAt: DateTime.parse(json['calculatedAt'] as String),
    debugUIUpdate: DateTime.parse(json['debugUIUpdate'] as String),
  );
}

Map<String, dynamic> _$AssetToJson(Asset instance) => <String, dynamic>{
      'code': instance.code,
      'exchange': instance.exchange,
      'pairCode': instance.pairCode,
      'pairType': _$AssetTypeEnumMap[instance.pairType],
      'type': _$AssetTypeEnumMap[instance.type],
      'depositedAmount': instance.depositedAmount,
      'currentAmount': instance.currentAmount,
      'assetToUSD': instance.assetToUSD,
      'assetToUSDTotal': instance.assetToUSDTotal,
      'assetToPair': instance.assetToPair,
      'assetToPairTotal': instance.assetToPairTotal,
      'transactions': instance.transactions,
      'updatedValueToPairPerAmount': instance.updatedValueToPairPerAmount,
      'updatedPairValueToUSDPerAmount': instance.updatedPairValueToUSDPerAmount,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'usdUp': instance.usdUp,
      'currentUSDPercentage': instance.currentUSDPercentage,
      'currentValueToUSDPerAmount': instance.currentValueToUSDPerAmount,
      'currentValueToUSDTotal': instance.currentValueToUSDTotal,
      'currentUSDPL': instance.currentUSDPL,
      'pairUp': instance.pairUp,
      'currentPairPercentage': instance.currentPairPercentage,
      'currentValueToPairTotal': instance.currentValueToPairTotal,
      'currentPairPL': instance.currentPairPL,
      'calculatedAt': instance.calculatedAt.toIso8601String(),
      'debugUIUpdate': instance.debugUIUpdate.toIso8601String(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$AssetTypeEnumMap = {
  AssetType.fiat: 'fiat',
  AssetType.crypto: 'crypto',
  AssetType.none: 'none',
};
