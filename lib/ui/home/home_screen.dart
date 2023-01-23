import 'package:cointrack/data/cubit/assets_cubit.dart';
import 'package:cointrack/data/cubit/settings_cubit.dart';
import 'package:cointrack/l10n/index.dart';
import 'package:cointrack/services/toast_service.dart';
import 'package:cointrack/data/models/portfolio.dart';
import 'package:cointrack/data/models/app_settings.dart';
import 'package:cointrack/data/cubit/portfolio_cubit.dart';
import 'package:cointrack/data/models/asset.dart';
import 'package:cointrack/utils/constants.dart';
import 'package:cointrack/utils/custom_font_icons.dart';
import 'package:cointrack/data/enums/enums.dart';
import 'package:cointrack/ui/common/asset_listcard.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen(
      {required this.showAddScreen,
      required this.showAssetDetailsScreen,
      required this.showFiatDetailsScreen,
      required this.navigatorKey});
  final Function showAddScreen;
  final Function showAssetDetailsScreen;
  final Function showFiatDetailsScreen;
  final GlobalKey<NavigatorState> navigatorKey;
  @override
  _HomeScreenState createState() => _HomeScreenState(
      showAddScreen: showAddScreen,
      showAssetDetailsScreen: showAssetDetailsScreen,
      navigatorKey: navigatorKey);
}

class _HomeScreenState extends State<HomeScreen> {
  _HomeScreenState(
      {required this.showAddScreen,
      required this.showAssetDetailsScreen,
      required this.navigatorKey});
  final Function showAddScreen;
  final Function showAssetDetailsScreen;
  final GlobalKey<NavigatorState> navigatorKey;

// list sorting buttons size
  final portfolioColumnProps = [.3, .25, .2];

  _sortPortfolio(SortOrder order, bool descending) {
    BlocProvider.of<PortfolioCubit>(context).setSortOrder(order, descending);
  }

  _deleteAsset(Asset asset) {
    showDialog(
      barrierColor: Colors.black87,
      // barrierDismissible: false,
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
                'This will delete ${asset.code} from your portfolio!',
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
          BlocProvider.of<PortfolioCubit>(context).deleteAsset(asset);
          ToastService.showToast(
              msg: '${AppLocalizations.of(context)!.deleted} ${asset.code}');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (_) {
        return MaterialPageRoute(
          builder: (context) => BlocBuilder<SettingsCubit, AppSettings>(
            builder: (context, settings) =>
                BlocBuilder<PortfolioCubit, Portfolio>(
              builder: (context, portfolio) {
                return _buildHome(context, settings, portfolio);
              },
            ),
          ),
        );
      },
    );
  }

  Widget _buildHome(
      BuildContext context, AppSettings settings, Portfolio portfolio) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * .05,
        title: Container(
          // padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '${AppLocalizations.of(context)!.pl.toUpperCase()}',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Text(
                          settings.appFiat.isStringLeading
                              ? '${settings.appFiat.symbol} ${(portfolio.account.currentUSDPL * settings.appFiat.usdToFiat).toStringAsFixed(2)}'
                              : '${(portfolio.account.currentUSDPL * settings.appFiat.usdToFiat).toStringAsFixed(2)} ${settings.appFiat.symbol}',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () => showAddScreen(AssetType.fiat, ''),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${AppLocalizations.of(context)!.balance.toUpperCase()}',
                            style: Theme.of(context).textTheme.caption,
                          ),
                          Text(
                            settings.appFiat.isStringLeading
                                ? '${settings.appFiat.symbol} ${(portfolio.account.currentUSDTotal * settings.appFiat.usdToFiat).toStringAsFixed(2)}'
                                : '${(portfolio.account.currentUSDTotal * settings.appFiat.usdToFiat).toStringAsFixed(2)} ${settings.appFiat.symbol}',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '${AppLocalizations.of(context)!.profit.toUpperCase()}',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Text(
                          settings.appFiat.isStringLeading
                              ? '${settings.appFiat.symbol} ${(portfolio.account.profitUSDTotal * settings.appFiat.usdToFiat).toStringAsFixed(2)}'
                              : '${(portfolio.account.profitUSDTotal * settings.appFiat.usdToFiat).toStringAsFixed(2)} ${settings.appFiat.symbol}',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Theme.of(context).bottomAppBarColor,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Container(
                          // color: Theme.of(context).cardColor,
                          margin: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              InkWell(
                                onTap: () => {
                                  if (portfolio.settings.sortOrder ==
                                      SortOrder.amount)
                                    {
                                      _sortPortfolio(SortOrder.amount,
                                          !portfolio.settings.descending)
                                    }
                                  else
                                    {_sortPortfolio(SortOrder.amount, true)},
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 40),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  width: MediaQuery.of(context).size.width *
                                      portfolioColumnProps[0],
                                  child: Text(
                                    (portfolio.settings.sortOrder ==
                                            SortOrder.amount)
                                        ? (portfolio.settings.descending)
                                            ? '${AppLocalizations.of(context)!.amount.toUpperCase()} $UP_ARROW'
                                            : '${AppLocalizations.of(context)!.amount.toUpperCase()} $DOWN_ARROW'
                                        : '${AppLocalizations.of(context)!.amount.toUpperCase()}',
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () => {
                                  if (portfolio.settings.sortOrder ==
                                      SortOrder.value)
                                    {
                                      _sortPortfolio(SortOrder.value,
                                          !portfolio.settings.descending)
                                    }
                                  else
                                    {_sortPortfolio(SortOrder.value, true)},
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 25),
                                  alignment: Alignment.centerRight,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  width: MediaQuery.of(context).size.width *
                                      portfolioColumnProps[1],
                                  child: Text(
                                    (portfolio.settings.sortOrder ==
                                            SortOrder.value)
                                        ? (portfolio.settings.descending)
                                            ? '${AppLocalizations.of(context)!.value.toUpperCase()} $UP_ARROW'
                                            : '${AppLocalizations.of(context)!.value.toUpperCase()} $DOWN_ARROW'
                                        : '${AppLocalizations.of(context)!.value.toUpperCase()}',
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () => {
                                  if (portfolio.settings.sortOrder ==
                                      SortOrder.percent)
                                    {
                                      _sortPortfolio(SortOrder.percent,
                                          !portfolio.settings.descending)
                                    }
                                  else
                                    {_sortPortfolio(SortOrder.percent, true)},
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  alignment: Alignment.centerRight,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  width: MediaQuery.of(context).size.width *
                                      portfolioColumnProps[2],
                                  child: Text(
                                    (portfolio.settings.sortOrder ==
                                            SortOrder.percent)
                                        ? (portfolio.settings.descending)
                                            ? '${AppLocalizations.of(context)!.pl.toUpperCase()} $UP_ARROW'
                                            : '${AppLocalizations.of(context)!.pl.toUpperCase()} $DOWN_ARROW'
                                        : '${AppLocalizations.of(context)!.pl.toUpperCase()}',
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  portfolio.assets.length.isNaN
                      ? Container()
                      : SliverList(
                          delegate: SliverChildBuilderDelegate(
                              (context, index) => AssetListCard(
                                    image: HTTP_STRING +
                                        BlocProvider.of<AssetsCubit>(context)
                                            .getAssetFull(
                                                portfolio.assets[index].code)
                                            .image,
                                    settings: settings,
                                    asset: portfolio.assets[index],
                                    deleteAsset: _deleteAsset,
                                    showAssetDetailsScreen:
                                        showAssetDetailsScreen,
                                  ),
                              childCount: portfolio.assets.length),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
