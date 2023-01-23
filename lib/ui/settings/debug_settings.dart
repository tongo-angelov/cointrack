import 'package:cointrack/data/cubit/settings_cubit.dart';
import 'package:cointrack/data/models/app_settings.dart';
import 'package:cointrack/mock/cryptocompare.dart';
import 'package:cointrack/services/toast_service.dart';
import 'package:cointrack/data/cubit/portfolio_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DebugSettings extends StatefulWidget {
  @override
  _DebugSettingsState createState() => _DebugSettingsState();
}

class _DebugSettingsState extends State<DebugSettings> {
  _debugCreate() {
    BlocProvider.of<PortfolioCubit>(context).debugCreate();
    ToastService.showToast(msg: 'Debug create');
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, AppSettings>(
      builder: (context, settings) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              child:
                  Text("Debug", style: Theme.of(context).textTheme.headline5),
            ),
            Container(
              color: Theme.of(context).cardColor,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  child: ListTile(
                    leading: Icon(
                      Icons.bug_report_outlined,
                      color: Theme.of(context).textTheme.headline6?.color,
                    ),
                    title: Text(
                      "Debug CREATE",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Theme.of(context).textTheme.caption?.color,
                    ),
                  ),
                  onTap: () {
                    BlocProvider.of<PortfolioCubit>(context)
                            .state
                            .assets
                            .isEmpty
                        ? _debugCreate()
                        : showDialog(
                            barrierColor: Colors.black87,
                            context: context,
                            builder: (context) => AlertDialog(
                              backgroundColor:
                                  Theme.of(context).backgroundColor,
                              content: SingleChildScrollView(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'Are you sure you want to proceed?',
                                      style:
                                          Theme.of(context).textTheme.headline5,
                                    ),
                                    Text(''),
                                    Text(
                                      'This will replace current portfolio with preconfigured portfolio data!',
                                      textAlign: TextAlign.center,
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('Confirm'),
                                  onPressed: () {
                                    Navigator.of(context).pop(true);
                                  },
                                ),
                                TextButton(
                                  child: Text('Cancel'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                          ).then(
                            (valueFromDialog) {
                              if (valueFromDialog) {
                                _debugCreate();
                              }
                            },
                          );
                  },
                ),
              ),
            ),
            Container(
              color: Theme.of(context).cardColor,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  child: ListTile(
                    leading: Icon(
                      Icons.bug_report_outlined,
                      color: Theme.of(context).textTheme.headline6?.color,
                    ),
                    title: Text(
                      "Debug CLEAR",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Theme.of(context).textTheme.caption?.color,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      barrierColor: Colors.black87,
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: Theme.of(context).backgroundColor,
                        content: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Are you sure you want to proceed?',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              Text(''),
                              Text(
                                'This will delete current portfolio data!',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: Text('Confirm'),
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                          ),
                          TextButton(
                            child: Text('Cancel'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    ).then(
                      (valueFromDialog) {
                        if (valueFromDialog) {
                          BlocProvider.of<PortfolioCubit>(context).debugClear();
                          ToastService.showToast(msg: 'Debug clear');
                        }
                      },
                    );
                  },
                ),
              ),
            ),

            ///

            // Container(
            //   color: Theme.of(context).cardColor,
            //   child: Material(
            //     color: Colors.transparent,
            //     child: InkWell(
            //       child: ListTile(
            //         leading: Icon(
            //           Icons.bug_report_outlined,
            //           color: Theme.of(context).textTheme.headline6?.color,
            //         ),
            //         title: Text(
            //           "EXCHANGE STRINGS",
            //           style: Theme.of(context).textTheme.headline6,
            //         ),
            //         trailing: Icon(
            //           Icons.keyboard_arrow_right_rounded,
            //           color: Theme.of(context).textTheme.caption?.color,
            //         ),
            //       ),
            //       // onTap: () => EXCHANGES.getFilteredExchangesString(),
            //       // onTap: () => EXCHANGES.getAssets(),
            //       // onTap: () => EXCHANGES.getAssetExchanges(),
            //       // onTap: () => EXCHANGES.getExchangeAssetPairs(),
            //       onTap: () {
            //         Map<String, dynamic> asset = {};
            //         if (ccData.containsKey('BTC')) asset = ccData['BTC']!;

            //         // if (ccFirst.containsKey('42')) asset = ccFirst['42']!;

            //         String descr = asset['Description'];

            //         print(descr);
            //       },
            //     ),
            //   ),
            // ),

            ///
          ],
        );
      },
    );
  }
}
