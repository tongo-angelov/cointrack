// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_settings.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PortfolioSettingsAdapter extends TypeAdapter<PortfolioSettings> {
  @override
  final int typeId = 5;

  @override
  PortfolioSettings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PortfolioSettings(
      sortOrder: fields[0] as SortOrder,
      descending: fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, PortfolioSettings obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.sortOrder)
      ..writeByte(1)
      ..write(obj.descending);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PortfolioSettingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
