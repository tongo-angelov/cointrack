import 'package:cointrack/data/managers/settings_manager.dart';
import 'package:cointrack/data/models/app_settings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsCubit extends Cubit<AppSettings> {
  final SettingsDatabaseManager sManager = HiveSettingsDatabaseManager();

  SettingsCubit() : super(AppSettings.defaults()) {
    emit(sManager.getSettings());
  }

  void setAppFiat(AppFiat fiat) {
    emit(sManager.setAppFiat(fiat));
  }

  void setAppLanguage(String lang) {
    emit(sManager.setAppLanguage(lang));
  }

  void toggleSystemTheme() {
    emit(sManager.toggleSystemTheme());
  }

  void toggleDarkTheme() {
    emit(sManager.toggleDarkTheme());
  }
}
