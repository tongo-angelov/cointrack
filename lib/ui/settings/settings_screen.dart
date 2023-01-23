import 'package:cointrack/data/cubit/settings_cubit.dart';
import 'package:cointrack/data/models/app_settings.dart';
import 'package:cointrack/l10n/index.dart';
import 'package:cointrack/ui/settings/about_settings.dart';
import 'package:cointrack/ui/settings/debug_settings.dart';
import 'package:cointrack/ui/settings/keys_settings.dart';
import 'package:cointrack/ui/settings/preferences_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({
    required this.navigatorKey,
  });
  final GlobalKey<NavigatorState> navigatorKey;

  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (_) {
        return MaterialPageRoute(
          builder: (context) => BlocBuilder<SettingsCubit, AppSettings>(
            builder: (context, settings) {
              return Scaffold(
                appBar: AppBar(
                  toolbarHeight: MediaQuery.of(context).size.height * .05,
                  title: Text('${AppLocalizations.of(context)!.settings}'),
                  backgroundColor: Theme.of(context).bottomAppBarColor,
                  centerTitle: true,
                ),
                backgroundColor: Theme.of(context).backgroundColor,
                body: ListView(
                  children: <Widget>[
                    DebugSettings(),
                    KeysSettings(),
                    PreferencesSettings(),
                    AboutSettings(),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
