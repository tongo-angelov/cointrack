import 'package:cointrack/utils/hive_constants.dart';
import 'package:hive/hive.dart';

part 'app_settings.g.dart';

@HiveType(typeId: APP_FIAT_ID)
class AppFiat {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String symbol;
  @HiveField(2)
  final double usdToFiat;
  @HiveField(3)
  final bool isStringLeading;

  AppFiat({
    required this.title,
    required this.symbol,
    required this.usdToFiat,
    required this.isStringLeading,
  });

  AppFiat.usd()
      : title = 'USD',
        symbol = '\$',
        usdToFiat = 1,
        isStringLeading = true;
}

@HiveType(typeId: APP_SETTINGS_ID)
class AppSettings {
  @HiveField(0)
  final AppFiat appFiat;
  @HiveField(1)
  final bool systemTheme;
  @HiveField(2)
  final bool darkTheme;
  @HiveField(3)
  final String appLocale;

  AppSettings(
      {required this.appFiat,
      required this.systemTheme,
      required this.darkTheme,
      required this.appLocale});

  AppSettings.defaults()
      : appFiat = AppFiat.usd(),
        systemTheme = false,
        darkTheme = true,
        appLocale = 'en';

  AppSettings copyWith({
    AppFiat? appFiat,
    bool? systemTheme,
    bool? darkTheme,
    String? appLocale,
  }) {
    return AppSettings(
      appFiat: appFiat ?? this.appFiat,
      systemTheme: systemTheme ?? this.systemTheme,
      darkTheme: darkTheme ?? this.darkTheme,
      appLocale: appLocale ?? this.appLocale,
    );
  }
}
