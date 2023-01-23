// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransactionAdapter extends TypeAdapter<Transaction> {
  @override
  final int typeId = 10;

  @override
  Transaction read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Transaction(
      isMain: fields[0] as bool,
      id: fields[1] as String,
      type: fields[2] as TransactionType,
      assetCode: fields[3] as String,
      assetAmount: fields[5] as double,
      assetType: fields[6] as AssetType,
      assetToPair: fields[7] as double,
      assetToUSD: fields[9] as double,
      assetToUSDTotal: fields[10] as double,
      pairType: fields[11] as AssetType,
      pairCode: fields[12] as String,
      pairAmount: fields[14] as double,
      pairToUSD: fields[15] as double,
      deduct: fields[16] as bool,
      dateTime: fields[17] as DateTime,
      exchange: fields[18] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Transaction obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.isMain)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.assetCode)
      ..writeByte(5)
      ..write(obj.assetAmount)
      ..writeByte(6)
      ..write(obj.assetType)
      ..writeByte(7)
      ..write(obj.assetToPair)
      ..writeByte(9)
      ..write(obj.assetToUSD)
      ..writeByte(10)
      ..write(obj.assetToUSDTotal)
      ..writeByte(11)
      ..write(obj.pairType)
      ..writeByte(12)
      ..write(obj.pairCode)
      ..writeByte(14)
      ..write(obj.pairAmount)
      ..writeByte(15)
      ..write(obj.pairToUSD)
      ..writeByte(16)
      ..write(obj.deduct)
      ..writeByte(17)
      ..write(obj.dateTime)
      ..writeByte(18)
      ..write(obj.exchange);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return Transaction(
    isMain: json['isMain'] as bool,
    id: json['id'] as String,
    type: _$enumDecode(_$TransactionTypeEnumMap, json['type']),
    assetCode: json['assetCode'] as String,
    assetAmount: (json['assetAmount'] as num).toDouble(),
    assetType: _$enumDecode(_$AssetTypeEnumMap, json['assetType']),
    assetToPair: (json['assetToPair'] as num).toDouble(),
    assetToUSD: (json['assetToUSD'] as num).toDouble(),
    assetToUSDTotal: (json['assetToUSDTotal'] as num).toDouble(),
    pairType: _$enumDecode(_$AssetTypeEnumMap, json['pairType']),
    pairCode: json['pairCode'] as String,
    pairAmount: (json['pairAmount'] as num).toDouble(),
    pairToUSD: (json['pairToUSD'] as num).toDouble(),
    deduct: json['deduct'] as bool,
    dateTime: DateTime.parse(json['dateTime'] as String),
    exchange: json['exchange'] as String,
  );
}

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'isMain': instance.isMain,
      'id': instance.id,
      'type': _$TransactionTypeEnumMap[instance.type],
      'assetCode': instance.assetCode,
      'assetAmount': instance.assetAmount,
      'assetType': _$AssetTypeEnumMap[instance.assetType],
      'assetToPair': instance.assetToPair,
      'assetToUSD': instance.assetToUSD,
      'assetToUSDTotal': instance.assetToUSDTotal,
      'pairType': _$AssetTypeEnumMap[instance.pairType],
      'pairCode': instance.pairCode,
      'pairAmount': instance.pairAmount,
      'pairToUSD': instance.pairToUSD,
      'deduct': instance.deduct,
      'dateTime': instance.dateTime.toIso8601String(),
      'exchange': instance.exchange,
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

const _$TransactionTypeEnumMap = {
  TransactionType.deposit: 'deposit',
  TransactionType.withdraw: 'withdraw',
  TransactionType.buy: 'buy',
  TransactionType.sell: 'sell',
};

const _$AssetTypeEnumMap = {
  AssetType.fiat: 'fiat',
  AssetType.crypto: 'crypto',
  AssetType.none: 'none',
};
