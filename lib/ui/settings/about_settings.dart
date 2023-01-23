import 'package:cointrack/data/cubit/settings_cubit.dart';
import 'package:cointrack/data/models/app_settings.dart';
import 'package:cointrack/l10n/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info/package_info.dart';

class AboutSettings extends StatefulWidget {
  @override
  _AboutSettingsState createState() => _AboutSettingsState();
}

class _AboutSettingsState extends State<AboutSettings> {
  @override
  void initState() {
    super.initState();
    _getVersion();
  }

  String version = '';
  String buildNumber = '';
  _getVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      version = packageInfo.version;
      buildNumber = packageInfo.buildNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, AppSettings>(
      builder: (context, settings) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('${AppLocalizations.of(context)!.about}',
                  style: Theme.of(context).textTheme.headline5),
            ),
            Container(
              color: Theme.of(context).cardColor,
              child: ListTile(
                title: Text(
                  '${AppLocalizations.of(context)!.version} $version ($buildNumber)',
                  style: Theme.of(context).textTheme.headline6,
                ),
                leading: Icon(
                  Icons.info_outline,
                  color: Theme.of(context).textTheme.headline6?.color,
                ),
                onTap: () {
                  showAboutDialog(
                      context: context,
                      applicationName: 'cointrack',
                      applicationVersion:
                          '${AppLocalizations.of(context)!.version} $version ($buildNumber)');
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
