import 'package:cointrack/data/cubit/transaction_cubit.dart';
import 'package:cointrack/data/enums/enums.dart';
import 'package:cointrack/data/validators/transaction_validator.dart';
import 'package:cointrack/services/toast_service.dart';
import 'package:cointrack/ui/transaction/search_screen.dart';
import 'package:cointrack/ui/transaction/multi_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AssetTransactionScreen extends StatefulWidget {
  AssetTransactionScreen();
  @override
  _AssetTransactionScreenState createState() => _AssetTransactionScreenState();
}

class _AssetTransactionScreenState extends State<AssetTransactionScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _assetAmountController;
  late TextEditingController _pairAmountController;

  _AssetTransactionScreenState();

  @override
  void dispose() {
    _assetAmountController.dispose();
    _pairAmountController.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    var state = BlocProvider.of<TransactionCubit>(context).state;
    _assetAmountController = TextEditingController(
      text: state.transaction.assetAmount != 0
          ? state.transaction.assetAmount.toString()
          : '',
    );
    _pairAmountController = TextEditingController(
      text: state.transaction.assetToPair != 0
          ? state.transaction.assetToPair.toString()
          : '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          appBar: AppBar(
            backgroundColor: Theme.of(context).backgroundColor,
            title: Text('Transaction',
                style: Theme.of(context).textTheme.headline5),
            actions: [
              state.isNew
                  ? Container()
                  : InkWell(
                      onTap: () => ToastService.showToast(msg: 'soon'),
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(Icons.more_vert_rounded)),
                    )
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Form(
                    key: _formKey,
                    child: ListView(
                      children: [
                        MultiButton(
                            defaultValue:
                                TransactionsStringMap[state.transaction.type]!,
                            values: TransactionsStringMap,
                            enabled: state.isNew,
                            onChanged: (type) {
                              BlocProvider.of<TransactionCubit>(context)
                                  .setTransactionType(type);
                            }),
                        _assetCode(state, state.isNew),
                        _separator(),
                        _assetAmount(state),
                        _separator(),
                        _nonDepositWidgets(state, state.isNew),
                        _datePicker(state, state.isNew),
                        _separator(),
                        _notes(state),
                      ],
                    ),
                  ),
                ),
                // _transactionDetails(),
                _saveButton(state, state.isNew),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _nonDepositWidgets(TransactionState state, bool enabled) {
    if (state.transaction.type != TransactionType.deposit &&
        state.transaction.type != TransactionType.withdraw) {
      return Column(
        children: [
          _separator(height: 9),
          _exchange(state, enabled),
          _separator(),
          _pairCode(state, enabled),
          _separator(),
          _currentTradingPrice(state),
          _separator(),
          _tradePrice(state),
          _separator(),
          _deduct(state, enabled),
          _separator(height: 10),
        ],
      );
    } else
      return Container();
  }

  Widget _separator({double height = 1}) {
    return Container(
      height: height,
    );
  }

  Widget _assetCode(TransactionState state, bool enabled) {
    return Container(
      color: Theme.of(context).cardColor,
      child: ListTile(
        onTap: () async {
          if (enabled) {
            var result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchScreen()),
            );
            if (result != null)
              BlocProvider.of<TransactionCubit>(context).setAssetCode(result);
          }
        },
        leading: Text(
          'Asset',
          style: Theme.of(context).textTheme.caption,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              child: Row(
                children: [
                  Text(
                    state.transaction.assetCode,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Icon(Icons.arrow_drop_down_outlined,
                      color: Theme.of(context).primaryIconTheme.color),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _assetAmount(TransactionState state) {
    return Container(
      color: Theme.of(context).cardColor,
      child: ListTile(
        leading: Text(
          'Amount',
          style: Theme.of(context).textTheme.caption,
        ),
        title: TextFormField(
          onChanged: (val) {
            try {
              double amount = double.parse(val);
              BlocProvider.of<TransactionCubit>(context)
                  .setAsssetAmount(amount);
            } catch (_) {}
          },
          controller: _assetAmountController,
          validator: (val) => TransactionValidator.validateAmount(val),
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.end,
          decoration: InputDecoration(
              border: InputBorder.none,
              labelStyle: Theme.of(context).textTheme.caption),
        ),
      ),
    );
  }

  Widget _exchange(TransactionState state, bool enabled) {
    return Container(
      color: Theme.of(context).cardColor,
      child: ListTile(
        leading: Text(
          'Exchange',
          style: Theme.of(context).textTheme.caption,
        ),
        trailing: DropdownButton<String>(
          dropdownColor: Theme.of(context).backgroundColor,
          value: state.transaction.exchange,
          elevation: 16,
          style: Theme.of(context).textTheme.headline5,
          underline: Container(
            height: 0,
          ),
          onChanged: (String? newValue) {
            BlocProvider.of<TransactionCubit>(context).setExchange(newValue!);
          },
          items: enabled
              ? BlocProvider.of<TransactionCubit>(context)
                  .exchanges
                  .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList()
              : <DropdownMenuItem<String>>[
                  DropdownMenuItem<String>(
                    value: state.transaction.pairCode,
                    child: Text(state.transaction.pairCode),
                  )
                ],
        ),
      ),
    );
  }

  Widget _pairCode(TransactionState state, bool enabled) {
    return Container(
      color: Theme.of(context).cardColor,
      child: ListTile(
        leading: Text(
          'Pair asset',
          style: Theme.of(context).textTheme.caption,
        ),
        trailing: DropdownButton<String>(
          dropdownColor: Theme.of(context).backgroundColor,
          value: state.transaction.pairCode,
          elevation: 16,
          style: Theme.of(context).textTheme.headline5,
          underline: Container(
            height: 0,
          ),
          onChanged: (String? newValue) {
            if (enabled) {
              if (newValue != null)
                BlocProvider.of<TransactionCubit>(context)
                    .setPairCode(newValue);
            }
          },
          items: enabled
              ? BlocProvider.of<TransactionCubit>(context)
                  .pairs
                  .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList()
              : <DropdownMenuItem<String>>[
                  DropdownMenuItem<String>(
                    value: state.transaction.pairCode,
                    child: Text(state.transaction.pairCode),
                  )
                ],
        ),
      ),
    );
  }

  Widget _currentTradingPrice(TransactionState state) {
    return StreamBuilder<double>(
      // stream: _bloc.price.asBroadcastStream(),
      builder: (context, snapshot) {
        return Container(
          color: Theme.of(context).cardColor,
          child: ListTile(
            leading: Text(
              'Price at date',
              style: Theme.of(context).textTheme.caption,
            ),
            trailing: state.loadingPrice
                ? Text(
                    'loading ...',
                    style: Theme.of(context).textTheme.caption,
                  )
                : Text(
                    '${state.currentPrice.toStringAsFixed(8)} ${state.transaction.pairCode}',
                    style: Theme.of(context).textTheme.caption,
                  ),
          ),
        );
      },
    );
  }

  Widget _tradePrice(TransactionState state) {
    return Container(
      color: Theme.of(context).cardColor,
      child: ListTile(
        leading: Text(
          'Trade price in ${state.transaction.pairCode}',
          style: Theme.of(context).textTheme.caption,
        ),
        title: TextFormField(
          onChanged: (val) {
            try {
              if (val.isNotEmpty) {
                double amount = double.parse(val);
                BlocProvider.of<TransactionCubit>(context)
                    .setPairAmount(amount);
              }
            } catch (_) {}
          },
          controller: _pairAmountController,
          validator: (val) => TransactionValidator.validatePrice(val),
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.end,
          decoration: InputDecoration(
              border: InputBorder.none,
              labelStyle: Theme.of(context).textTheme.caption),
        ),
      ),
    );
  }

  Widget _deduct(TransactionState state, bool enabled) {
    return Container(
      color: Theme.of(context).cardColor,
      child: ListTile(
        leading: Text(
          'Deduct from portfolio',
          style: Theme.of(context).textTheme.caption,
        ),
        trailing: Switch(
          activeColor: Theme.of(context).accentColor,
          value: state.transaction.deduct,
          onChanged: (newValue) {
            if (enabled)
              BlocProvider.of<TransactionCubit>(context).toggleDeduct();
          },
        ),
      ),
    );
  }

  Widget _datePicker(TransactionState state, bool enabled) {
    return Container(
      color: Theme.of(context).cardColor,
      child: ListTile(
        onTap: () async {
          if (enabled) {
            var result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DatePickerDialog(
                  initialDate: state.transaction.dateTime,
                  firstDate: DateTime.parse('19700101'),
                  lastDate: DateTime.now(),
                ),
              ),
            );
            if (result != null)
              BlocProvider.of<TransactionCubit>(context).setDate(result);
          }
        },
        leading: Text(
          'Date',
          style: Theme.of(context).textTheme.caption,
        ),
        trailing: Text(
          '${state.transaction.dateTime.year.toString()}-${state.transaction.dateTime.month.toString()}-${state.transaction.dateTime.day.toString()}',
        ),
      ),
    );
  }

  Widget _notes(TransactionState state) {
    return Container(
      color: Theme.of(context).cardColor,
      child: ListTile(
          leading: Text(
            'Notes',
            style: Theme.of(context).textTheme.caption,
          ),
          trailing: Text(
            'not implemented yet',
            style: Theme.of(context).textTheme.caption,
          )),
    );
  }

  // Widget _transactionDetails() {
  //   return Center(
  //       child: Text('Buy 100 SFP for 0.324 BTC and deduct',
  //           style: Theme.of(context).textTheme.caption));
  // }

  Widget _saveButton(TransactionState state, bool isNew) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: ElevatedButton(
        child: Container(
          child: Center(
              child: Text(
            isNew
                ? '${TransactionsStringMap[state.transaction.type]!.toUpperCase()}'
                : 'UPDATE',
            style: Theme.of(context).textTheme.bodyText1,
          )),
        ),
        onPressed: () async {
          var valid = _formKey.currentState!.validate();

          if (!valid)
            ToastService.showToast(
                msg: 'not valid ${state.transaction.assetAmount}');
          else {
            bool saved = await BlocProvider.of<TransactionCubit>(context)
                .saveTransaction();
            if (saved) {
              Navigator.of(context).pop();
              ToastService.showToast(msg: 'Saved');
            }
          }
        },
      ),
    );
  }
}
