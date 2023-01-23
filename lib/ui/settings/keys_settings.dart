import 'package:cointrack/data/cubit/settings_cubit.dart';
import 'package:cointrack/data/models/app_settings.dart';
import 'package:cointrack/services/toast_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KeysSettings extends StatefulWidget {
  @override
  _KeysSettingsState createState() => _KeysSettingsState();
}

class _KeysSettingsState extends State<KeysSettings> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, AppSettings>(
      builder: (context, settings) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('API Keys',
                  style: Theme.of(context).textTheme.headline5),
            ),
            Container(
              color: Theme.of(context).cardColor,
              child: ListTile(
                title: Text(
                  'View Keys',
                  style: Theme.of(context).textTheme.headline6,
                ),
                leading: Icon(
                  Icons.vpn_key_rounded,
                  color: Theme.of(context).textTheme.headline6?.color,
                ),
                onTap: () {
                  ToastService.showToast(msg: 'SOON');
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
