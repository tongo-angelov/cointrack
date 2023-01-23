import 'package:flutter/material.dart';

import 'package:cointrack/data/models/app_settings.dart';
import 'package:cointrack/data/models/transaction.dart';
import 'package:cointrack/data/enums/enums.dart';
import 'package:cointrack/l10n/index.dart';

class TransactionListCard extends StatelessWidget {
  final Transaction transaction;
  final double assetcurrentValueToUSDPerAmount;
  final AppSettings settings;
  final Function showTransactionDetailsScreen;
  final Function deleteTransaction;

  const TransactionListCard({
    required this.transaction,
    required this.assetcurrentValueToUSDPerAmount,
    required this.settings,
    required this.showTransactionDetailsScreen,
    required this.deleteTransaction,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showTransactionDetailsScreen(transaction);
      },
      onLongPress: () {
        deleteTransaction(transaction);
      },
      child: Card(
        elevation: 1.0,
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 12, 10, 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                child: Center(
                  child: transaction.type == TransactionType.buy
                      ? Icon(Icons.money_off_rounded)
                      : transaction.type == TransactionType.sell
                          ? Icon(Icons.attach_money_rounded)
                          : transaction.type == TransactionType.deposit
                              ? Icon(Icons.arrow_forward_rounded)
                              : Icon(Icons.arrow_back_rounded),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          transaction.type == TransactionType.buy
                              ? '${AppLocalizations.of(context)!.buy}'
                              : transaction.type == TransactionType.sell
                                  ? '${AppLocalizations.of(context)!.sell}'
                                  : transaction.type == TransactionType.deposit
                                      ? '${AppLocalizations.of(context)!.deposit}'
                                      : '${AppLocalizations.of(context)!.withdraw}',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Text(
                          '${transaction.dateTime.year.toString()}-${transaction.dateTime.month.toString()}-${transaction.dateTime.day.toString()}',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                    // TODO - temp debug value - DELETE
                    Column(
                      children: [
                        Text(
                          settings.appFiat.isStringLeading
                              ? 'P ${settings.appFiat.symbol} ${(transaction.assetToUSDTotal * settings.appFiat.usdToFiat).toStringAsFixed(2)}'
                              : 'P ${(transaction.assetToUSDTotal * settings.appFiat.usdToFiat).toStringAsFixed(2)} ${settings.appFiat.symbol}',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Text(
                          transaction.isMain
                              ? settings.appFiat.isStringLeading
                                  ? 'w ${settings.appFiat.symbol} ${(transaction.assetAmount * assetcurrentValueToUSDPerAmount * settings.appFiat.usdToFiat).toStringAsFixed(2)}'
                                  : 'w ${(transaction.assetAmount * assetcurrentValueToUSDPerAmount * settings.appFiat.usdToFiat).toStringAsFixed(2)} ${settings.appFiat.symbol}'
                              : settings.appFiat.isStringLeading
                                  ? 'w ${settings.appFiat.symbol} ${(transaction.pairAmount * assetcurrentValueToUSDPerAmount * settings.appFiat.usdToFiat).toStringAsFixed(2)}'
                                  : 'w ${(transaction.pairAmount * assetcurrentValueToUSDPerAmount * settings.appFiat.usdToFiat).toStringAsFixed(2)} ${settings.appFiat.symbol}',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          transaction.isMain
                              ? '${transaction.assetAmount.toString()}'
                              : '${transaction.pairAmount.toString()}',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Text(
                          transaction.isMain
                              ? transaction.type == TransactionType.buy
                                  ? '${AppLocalizations.of(context)!.paid} ${transaction.pairAmount.toString()} ${transaction.pairCode}'
                                  : transaction.type == TransactionType.sell
                                      ? '${AppLocalizations.of(context)!.received} ${transaction.pairAmount.toString()} ${transaction.pairCode}'
                                      : ' '
                              : transaction.type == TransactionType.buy
                                  ? '${AppLocalizations.of(context)!.paid} ${transaction.assetAmount.toString()} ${transaction.assetCode}'
                                  : transaction.type == TransactionType.sell
                                      ? '${AppLocalizations.of(context)!.received} ${transaction.assetAmount.toString()} ${transaction.assetCode}'
                                      : 'nonMain transaction',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
