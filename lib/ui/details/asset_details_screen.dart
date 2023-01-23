import 'package:cointrack/data/cubit/assets_cubit.dart';
import 'package:cointrack/data/cubit/settings_cubit.dart';
import 'package:cointrack/data/models/app_settings.dart';
import 'package:cointrack/data/models/portfolio.dart';
import 'package:cointrack/data/models/transaction.dart';
import 'package:cointrack/data/enums/enums.dart';
import 'package:cointrack/l10n/index.dart';
import 'package:cointrack/utils/math.dart';
import 'package:cointrack/services/toast_service.dart';
import 'package:cointrack/data/cubit/portfolio_cubit.dart';
import 'package:cointrack/data/models/asset.dart';
import 'package:cointrack/ui/common/transaction_listcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AssetDetailsScreen extends StatefulWidget {
  final String _assetCode;
  final Function _showTransactionDetailsScreen;
  const AssetDetailsScreen(this._assetCode, this._showTransactionDetailsScreen);
  @override
  _AssetDetailsScreenScreenState createState() =>
      _AssetDetailsScreenScreenState(_assetCode, _showTransactionDetailsScreen);
}

class _AssetDetailsScreenScreenState extends State<AssetDetailsScreen> {
  final String _assetCode;
  final Function _showTransactionDetailsScreen;
  _AssetDetailsScreenScreenState(
      this._assetCode, this._showTransactionDetailsScreen);

  // late BaseAsset _baseAsset;
  // late Asset _assetData;

  _deleteTransaction(Transaction transaction) {
    // if (_assetData.transactions.length > 1)
    //   showDialog(
    //     barrierColor: Colors.black87,
    //     // barrierDismissible: false,
    //     context: context,
    //     builder: (context) => AlertDialog(
    //       backgroundColor: Theme.of(context).backgroundColor,
    //       content: SingleChildScrollView(
    //         child: Column(
    //           children: <Widget>[
    //             Text(
    //               'Are you sure you want to proceed?',
    //               style: Theme.of(context).textTheme.headline5,
    //             ),
    //             Text(''),
    //             Text(
    //               'This will delete ${transaction.type} from your portfolio!',
    //               textAlign: TextAlign.center,
    //               style: Theme.of(context).textTheme.headline6,
    //             ),
    //           ],
    //         ),
    //       ),
    //       actions: <Widget>[
    //         TextButton(
    //           child: Text('Confirm'),
    //           onPressed: () {
    //             Navigator.of(context).pop(true);
    //           },
    //         ),
    //         TextButton(
    //           child: Text('Cancel'),
    //           onPressed: () {
    //             Navigator.of(context).pop();
    //           },
    //         ),
    //       ],
    //     ),
    //   ).then(
    //     (valueFromDialog) {
    //       if (valueFromDialog) {
    //         BlocProvider.of<PortfolioCubit>(context)
    //             .deleteTransaction(transaction);
    //         ToastService.showToast(
    //             msg:
    //                 '${AppLocalizations.of(context)!.deleted} ${transaction.type}');
    //       }
    //     },
    //   );
    // else
    //   showDialog(
    //     barrierColor: Colors.black87,
    //     // barrierDismissible: false,
    //     context: context,
    //     builder: (context) => AlertDialog(
    //       backgroundColor: Theme.of(context).backgroundColor,
    //       content: SingleChildScrollView(
    //         child: Column(
    //           children: <Widget>[
    //             Text(
    //               'Transaction can not be deleted!',
    //               style: Theme.of(context).textTheme.headline5,
    //             ),
    //             Text(''),
    //             Text(
    //               'To remove this transaction delete the asset!',
    //               textAlign: TextAlign.center,
    //               style: Theme.of(context).textTheme.headline6,
    //             ),
    //           ],
    //         ),
    //       ),
    //       actions: <Widget>[
    //         TextButton(
    //           child: Text('Ok'),
    //           onPressed: () {
    //             Navigator.of(context).pop();
    //           },
    //         ),
    //       ],
    //     ),
    //   );
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return BlocBuilder<SettingsCubit, AppSettings>(
      builder: (context, settings) {
        return BlocBuilder<AssetsCubit, AssetsState>(
          builder: (context, state) {
            BaseAsset _baseAsset =
                state.assets.firstWhere((asset) => asset.code == _assetCode);
            return BlocBuilder<PortfolioCubit, Portfolio>(
              builder: (context, portfolio) {
                Asset _assetData = portfolio.assets.firstWhere(
                  (asset) => asset.code == _assetCode,
                  orElse: () {
                    return Asset.empty();
                  },
                );
                return Scaffold(
                  backgroundColor: Theme.of(context).backgroundColor,
                  appBar: AppBar(
                    backgroundColor: Theme.of(context).backgroundColor,
                    title: Text('${_baseAsset.code}'),
                    actions: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: InkWell(
                          child: _baseAsset.liked
                              ? Icon(
                                  Icons.favorite_rounded,
                                  color: Colors.red,
                                )
                              : Icon(
                                  Icons.favorite_outline_rounded,
                                  color: Colors.grey,
                                ),
                          onTap: () {
                            print('pressed');
                            BlocProvider.of<AssetsCubit>(context)
                                .like(_baseAsset.code);
                          },
                        ),
                      ),
                    ],
                  ),
                  body: Container(
                    alignment: Alignment.center,
                    child: CustomScrollView(
                      slivers: [
                        _buildGraph(),
                        _buildBaseAssetInfo(_baseAsset, settings),
                        _buildAssetInfo(_assetData, settings),
                        _buildTransactionHeader(),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                              (context, index) => TransactionListCard(
                                    settings: settings,
                                    assetcurrentValueToUSDPerAmount:
                                        _assetData.currentValueToUSDPerAmount,
                                    deleteTransaction: _deleteTransaction,
                                    showTransactionDetailsScreen:
                                        _showTransactionDetailsScreen,
                                    transaction: _assetData.transactions[index],
                                  ),
                              childCount: _assetData.transactions.length),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _buildGraph() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            color: Theme.of(context).cardColor,
            height: MediaQuery.of(context).size.height * .3,
            child: Center(
              child: Text(
                'GRAPH',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionHeader() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            padding: EdgeInsets.fromLTRB(10, 15, 10, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transactions',
                  style: Theme.of(context).textTheme.headline5,
                ),
                InkWell(
                  child: Icon(
                    Icons.settings,
                    color: Theme.of(context).textTheme.headline6!.color,
                  ),
                  onTap: () {
                    ToastService.showToast(msg: 'not yet');
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  SliverList _buildBaseAssetInfo(BaseAsset _asset, AppSettings _settings) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Name:',
                          style: Theme.of(context).textTheme.caption,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '${_asset.name}',
                          style: Theme.of(context).textTheme.headline6,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SliverList _buildAssetInfo(Asset _asset, AppSettings _settings) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Holding:',
                          style: Theme.of(context).textTheme.caption,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '${fixedCrypto(_asset.currentAmount).toString()} ${_asset.code}',
                          style: Theme.of(context).textTheme.headline6,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Unrealized profit:',
                          style: Theme.of(context).textTheme.caption,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          _settings.appFiat.isStringLeading
                              ? '${_settings.appFiat.symbol} ${(_asset.currentUSDPL * _settings.appFiat.usdToFiat).toStringAsFixed(2)}'
                              : '${(_asset.currentUSDPL * _settings.appFiat.usdToFiat).toStringAsFixed(2)} ${_settings.appFiat.symbol}',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  color: _asset.usdUp
                                      ? Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .color
                                      : Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .color),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Average price:',
                          style: Theme.of(context).textTheme.caption,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          _asset.pairType == AssetType.fiat
                              ? _settings.appFiat.isStringLeading
                                  ? '${_settings.appFiat.symbol} ${(_asset.assetToPair * _settings.appFiat.usdToFiat).toStringAsFixed(2)}'
                                  : '${(_asset.assetToPair * _settings.appFiat.usdToFiat).toStringAsFixed(2)} ${_settings.appFiat.symbol}'
                              : '${_asset.assetToPair.toStringAsFixed(8)} ${_asset.pairCode}',
                          style: Theme.of(context).textTheme.headline6,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Current price:',
                          style: Theme.of(context).textTheme.caption,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          _asset.pairType == AssetType.fiat
                              ? _settings.appFiat.isStringLeading
                                  ? '${_settings.appFiat.symbol} ${(_asset.updatedValueToPairPerAmount * _settings.appFiat.usdToFiat).toStringAsFixed(2)}'
                                  : '${(_asset.updatedValueToPairPerAmount * _settings.appFiat.usdToFiat).toStringAsFixed(2)} ${_settings.appFiat.symbol}'
                              : '${_asset.updatedValueToPairPerAmount.toStringAsFixed(8)} ${_asset.pairCode}',
                          style: Theme.of(context).textTheme.headline6,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Value:',
                          style: Theme.of(context).textTheme.caption,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          _settings.appFiat.isStringLeading
                              ? '${_settings.appFiat.symbol} ${(_asset.assetToUSDTotal * _settings.appFiat.usdToFiat).toStringAsFixed(2)}'
                              : '${(_asset.assetToUSDTotal * _settings.appFiat.usdToFiat).toStringAsFixed(2)} ${_settings.appFiat.symbol}',
                          style: Theme.of(context).textTheme.headline6,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Current value:',
                          style: Theme.of(context).textTheme.caption,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          _settings.appFiat.isStringLeading
                              ? '${_settings.appFiat.symbol} ${(_asset.currentValueToUSDTotal * _settings.appFiat.usdToFiat).toStringAsFixed(2)}'
                              : '${(_asset.currentValueToUSDTotal * _settings.appFiat.usdToFiat).toStringAsFixed(2)} ${_settings.appFiat.symbol}',
                          style: Theme.of(context).textTheme.headline6,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
