import 'package:cointrack/utils/constants.dart';
import 'package:cointrack/data/cubit/settings_cubit.dart';
import 'package:cointrack/data/models/app_settings.dart';
import 'package:cointrack/l10n/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cointrack/services/toast_service.dart';

class PreferencesSettings extends StatefulWidget {
  @override
  _PreferencesSettingsState createState() => _PreferencesSettingsState();
}

class _PreferencesSettingsState extends State<PreferencesSettings> {
  String dropdownValue = AppFiats[0];
  String dropdownLangValue = AppLanguages[0];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, AppSettings>(
      builder: (context, settings) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('${AppLocalizations.of(context)!.preferences}',
                  style: Theme.of(context).textTheme.headline5),
            ),
            _language(context, settings),
            _currency(context, settings),
            _systemTheme(context, settings),
            _darkTheme(context, settings),
          ],
        );
      },
    );
  }

  Widget _language(BuildContext context, AppSettings settings) {
    return Container(
      color: Theme.of(context).cardColor,
      child: ListTile(
        leading: Icon(
          Icons.language_rounded,
          color: Theme.of(context).textTheme.headline6?.color,
        ),
        title: Text(
          '${AppLocalizations.of(context)!.language}',
          style: Theme.of(context).textTheme.headline6,
        ),
        trailing: DropdownButton<String>(
          dropdownColor: Theme.of(context).backgroundColor,
          value: settings.appLocale,
          elevation: 16,
          style: Theme.of(context).textTheme.headline5,
          underline: Container(
            height: 0,
          ),
          onChanged: (String? newValue) {
            BlocProvider.of<SettingsCubit>(context).setAppLanguage(newValue!);
            ToastService.showToast(msg: newValue.toUpperCase());
          },
          items: AppLocalizations.supportedLocales
              .map<DropdownMenuItem<String>>((Locale locale) {
            return DropdownMenuItem<String>(
              value: locale.languageCode,
              child: Text(locale.languageCode.toUpperCase()),
            );
          }).toList(),
        ),
        onTap: () {},
      ),
    );
  }

  Widget _currency(BuildContext context, AppSettings settings) {
    return Container(
      color: Theme.of(context).cardColor,
      child: ListTile(
        leading: Icon(
          Icons.attach_money_rounded,
          color: Theme.of(context).textTheme.headline6?.color,
        ),
        title: Text(
          '${AppLocalizations.of(context)!.currency}',
          style: Theme.of(context).textTheme.headline6,
        ),
        trailing: DropdownButton<String>(
          dropdownColor: Theme.of(context).backgroundColor,
          value: AppFiats.firstWhere(
              (element) => element == settings.appFiat.title),
          elevation: 16,
          style: Theme.of(context).textTheme.headline5,
          underline: Container(
            height: 0,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
            AppFiat fiat =
                appFiatsList.firstWhere((element) => element.title == newValue);
            BlocProvider.of<SettingsCubit>(context).setAppFiat(fiat);
          },
          items: AppFiats.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        onTap: () {},
      ),
    );
  }

  Widget _systemTheme(BuildContext context, AppSettings settings) {
    return Container(
      color: Theme.of(context).cardColor,
      child: ListTile(
        leading: Icon(
          Icons.settings_display_rounded,
          color: Theme.of(context).textTheme.headline6?.color,
        ),
        title: Text(
          '${AppLocalizations.of(context)!.system_theme}',
          style: Theme.of(context).textTheme.headline6,
        ),
        trailing: Switch(
            activeColor: Theme.of(context).accentColor,
            value: settings.systemTheme,
            onChanged: (_) {
              BlocProvider.of<SettingsCubit>(context).toggleSystemTheme();
            }),
        onTap: () {},
      ),
    );
  }

  Widget _darkTheme(BuildContext context, AppSettings settings) {
    return Container(
      color: Theme.of(context).cardColor,
      child: ListTile(
        leading: Icon(
          Icons.settings_display_outlined,
          color: Theme.of(context).textTheme.headline6?.color,
        ),
        title: Text(
          '${AppLocalizations.of(context)!.dark_theme}',
          style: Theme.of(context).textTheme.headline6,
        ),
        trailing: Switch(
            activeColor: Theme.of(context).accentColor,
            value: settings.darkTheme,
            onChanged: settings.systemTheme
                ? null
                : (_) {
                    BlocProvider.of<SettingsCubit>(context).toggleDarkTheme();
                  }),
        onTap: () {},
      ),
    );
  }
}
