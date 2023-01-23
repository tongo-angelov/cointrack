import 'package:cointrack/data/models/app_settings.dart';
import 'package:cointrack/utils/hive_constants.dart';
import 'package:hive/hive.dart';

abstract class SettingsDatabaseManager {
  AppSettings getSettings();
  AppSettings setAppFiat(AppFiat fiat);
  AppSettings setAppLanguage(String lang);
  AppSettings toggleSystemTheme();
  AppSettings toggleDarkTheme();
}

class HiveSettingsDatabaseManager implements SettingsDatabaseManager {
  final _box = Hive.box(SETTINGS_BOX);

  @override
  AppSettings getSettings() {
    AppSettings settings =
        _box.get(SETTINGS_BOX, defaultValue: AppSettings.defaults());
    return settings;
  }

  @override
  AppSettings setAppFiat(AppFiat fiat) {
    AppSettings settings =
        _box.get(SETTINGS_BOX, defaultValue: AppSettings.defaults());
    settings = settings.copyWith(appFiat: fiat);
    _box.put(SETTINGS_BOX, settings);
    return settings;
  }

  @override
  AppSettings setAppLanguage(String lang) {
    AppSettings settings =
        _box.get(SETTINGS_BOX, defaultValue: AppSettings.defaults());
    settings = settings.copyWith(appLocale: lang.toLowerCase());
    _box.put(SETTINGS_BOX, settings);
    return settings;
  }

  @override
  AppSettings toggleSystemTheme() {
    AppSettings settings =
        _box.get(SETTINGS_BOX, defaultValue: AppSettings.defaults());
    settings = settings.copyWith(systemTheme: !settings.darkTheme);
    _box.put(SETTINGS_BOX, settings);
    return settings;
  }

  @override
  AppSettings toggleDarkTheme() {
    AppSettings settings =
        _box.get(SETTINGS_BOX, defaultValue: AppSettings.defaults());
    settings = settings.copyWith(darkTheme: !settings.darkTheme);
    _box.put(SETTINGS_BOX, settings);
    return settings;
  }
}
