import 'package:cointrack/data/cubit/portfolio_cubit.dart';
import 'package:cointrack/data/cubit/settings_cubit.dart';
import 'package:cointrack/data/models/app_settings.dart';
import 'package:cointrack/data/models/fiat.dart';
import 'package:cointrack/data/models/portfolio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../common/transaction_listcard.dart';
import 'package:flutter/material.dart';

class FiatDetailsScreen extends StatefulWidget {
  final Fiat _fiatData;
  const FiatDetailsScreen(this._fiatData);
  @override
  _FiatDetailsScreenState createState() => _FiatDetailsScreenState(_fiatData);
}

void _showTransactionDetailsScreen() {}

class _FiatDetailsScreenState extends State<FiatDetailsScreen> {
  final Fiat _fiatData;
  _FiatDetailsScreenState(this._fiatData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          title: Text('${_fiatData.title}')),
      body: Container(
        alignment: Alignment.center,
        child: BlocBuilder<SettingsCubit, AppSettings>(
          builder: (context, settings) {
            return BlocBuilder<PortfolioCubit, Portfolio>(
              builder: (context, portfolio) {
                Fiat _fiat = portfolio.fiats
                    .firstWhere((fiat) => fiat.code == _fiatData.code);

                return CustomScrollView(
                  slivers: [
                    _buildFiatInfo(_fiat, settings),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                          (context, index) => TransactionListCard(
                                settings: settings,
                                assetcurrentValueToUSDPerAmount:
                                    _fiat.currentValueToUSDPerAmount,
                                deleteTransaction: () {},
                                showTransactionDetailsScreen:
                                    _showTransactionDetailsScreen,
                                transaction: _fiat.transactions[index],
                              ),
                          childCount: _fiat.transactions.length),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  SliverList _buildFiatInfo(Fiat _fiat, AppSettings _settings) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'deposited : ${_fiat.depositedAmount.toStringAsFixed(2)} ${_fiat.code}',
                    style: Theme.of(context).textTheme.headline6),
                Text(
                    'current : ${_fiat.currentAmount.toStringAsFixed(2)} ${_fiat.code}',
                    style: Theme.of(context).textTheme.headline6),
                Text(''),
                Text(
                    _settings.appFiat.isStringLeading
                        ? 'depositedValuePerAmount : ${_settings.appFiat.symbol} ${(_settings.appFiat.usdToFiat * _fiat.depositedValueToUSDPerAmount).toStringAsFixed(2)}'
                        : 'depositedValuePerAmount : ${(_settings.appFiat.usdToFiat * _fiat.depositedValueToUSDPerAmount).toStringAsFixed(2)} ${_settings.appFiat.symbol}',
                    style: Theme.of(context).textTheme.headline6),
                Text(
                    _settings.appFiat.isStringLeading
                        ? 'depositedValueTotal : ${_settings.appFiat.symbol} ${(_fiat.depositedValueToUSDTotal * _settings.appFiat.usdToFiat).toStringAsFixed(2)}'
                        : 'depositedValueTotal : ${(_fiat.depositedValueToUSDTotal * _settings.appFiat.usdToFiat).toStringAsFixed(2)} ${_settings.appFiat.symbol}',
                    style: Theme.of(context).textTheme.headline6),
                Text(''),
                Text(
                    _settings.appFiat.isStringLeading
                        ? 'currentValuePerAmount : ${_settings.appFiat.symbol} ${(_settings.appFiat.usdToFiat * _fiat.currentValueToUSDPerAmount).toStringAsFixed(2)}'
                        : 'currentValuePerAmount : ${(_settings.appFiat.usdToFiat * _fiat.currentValueToUSDPerAmount).toStringAsFixed(2)} ${_settings.appFiat.symbol}',
                    style: Theme.of(context).textTheme.headline6),
                Text(
                    _settings.appFiat.isStringLeading
                        ? 'currentValueTotal : ${_settings.appFiat.symbol} ${(_fiat.currentValueToUSDTotal * _settings.appFiat.usdToFiat).toStringAsFixed(2)}'
                        : 'currentValueTotal : ${(_fiat.currentValueToUSDTotal * _settings.appFiat.usdToFiat).toStringAsFixed(2)} ${_settings.appFiat.symbol}',
                    style: Theme.of(context).textTheme.headline6),
                Container(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
