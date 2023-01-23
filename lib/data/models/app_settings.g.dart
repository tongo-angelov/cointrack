// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppFiatAdapter extends TypeAdapter<AppFiat> {
  @override
  final int typeId = 3;

  @override
  AppFiat read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppFiat(
      title: fields[0] as String,
      symbol: fields[1] as String,
      usdToFiat: fields[2] as double,
      isStringLeading: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, AppFiat obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.symbol)
      ..writeByte(2)
      ..write(obj.usdToFiat)
      ..writeByte(3)
      ..write(obj.isStringLeading);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppFiatAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AppSettingsAdapter extends TypeAdapter<AppSettings> {
  @override
  final int typeId = 4;

  @override
  AppSettings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppSettings(
      appFiat: fields[0] as AppFiat,
      systemTheme: fields[1] as bool,
      darkTheme: fields[2] as bool,
      appLocale: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AppSettings obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.appFiat)
      ..writeByte(1)
      ..write(obj.systemTheme)
      ..writeByte(2)
      ..write(obj.darkTheme)
      ..writeByte(3)
      ..write(obj.appLocale);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppSettingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
