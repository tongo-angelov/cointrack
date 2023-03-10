// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AccountAdapter extends TypeAdapter<Account> {
  @override
  final int typeId = 6;

  @override
  Account read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Account(
      investedFiat: fields[0] as double,
      currentFiat: fields[1] as double,
      investedCrypto: fields[2] as double,
      currentCrypto: fields[3] as double,
      currentUSDTotal: fields[4] as double,
      currentUSDPL: fields[5] as double,
      profitUSDTotal: fields[6] as double,
      profitUSDTotalPercent: fields[7] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Account obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.investedFiat)
      ..writeByte(1)
      ..write(obj.currentFiat)
      ..writeByte(2)
      ..write(obj.investedCrypto)
      ..writeByte(3)
      ..write(obj.currentCrypto)
      ..writeByte(4)
      ..write(obj.currentUSDTotal)
      ..writeByte(5)
      ..write(obj.currentUSDPL)
      ..writeByte(6)
      ..write(obj.profitUSDTotal)
      ..writeByte(7)
      ..write(obj.profitUSDTotalPercent);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
