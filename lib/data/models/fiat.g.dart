// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fiat.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FiatAdapter extends TypeAdapter<Fiat> {
  @override
  final int typeId = 8;

  @override
  Fiat read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Fiat(
      depositedValueToUSDPerAmount: fields[3] as double,
      depositedValueToUSDTotal: fields[4] as double,
      currentValueToUSDPerAmount: fields[6] as double,
      currentValueToUSDTotal: fields[7] as double,
      code: fields[0] as String,
      title: fields[1] as String,
      depositedAmount: fields[2] as double,
      currentAmount: fields[5] as double,
      transactions: (fields[8] as List).cast<Transaction>(),
      updatedAt: fields[9] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, Fiat obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.depositedAmount)
      ..writeByte(3)
      ..write(obj.depositedValueToUSDPerAmount)
      ..writeByte(4)
      ..write(obj.depositedValueToUSDTotal)
      ..writeByte(5)
      ..write(obj.currentAmount)
      ..writeByte(6)
      ..write(obj.currentValueToUSDPerAmount)
      ..writeByte(7)
      ..write(obj.currentValueToUSDTotal)
      ..writeByte(8)
      ..write(obj.transactions)
      ..writeByte(9)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FiatAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
