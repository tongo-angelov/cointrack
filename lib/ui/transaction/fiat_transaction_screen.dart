import 'package:cointrack/utils/constants.dart';
import 'package:cointrack/l10n/index.dart';
import 'package:cointrack/services/toast_service.dart';
import 'package:flutter/material.dart';

class FiatTransactionScreen extends StatefulWidget {
  @override
  _FiatTransactionScreenState createState() => _FiatTransactionScreenState();
}

class _FiatTransactionScreenState extends State<FiatTransactionScreen> {
  bool deposit = true;
  String dropdownValue = AppFiats[0];

  Color? getButtonColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.disabled
    };
    if (states.any(interactiveStates.contains)) {
      return Theme.of(context).colorScheme.primary;
    }
    return Theme.of(context).colorScheme.onSurface.withOpacity(0.08);
  }

  Color? getButtonTextColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.disabled
    };
    if (states.any(interactiveStates.contains)) {
      return Theme.of(context).colorScheme.onPrimary;
    }
    return Theme.of(context).colorScheme.onPrimary.withOpacity(0.4);
  }

  RoundedRectangleBorder getFirstButtonShape() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          topRight: Radius.zero,
          bottomRight: Radius.zero),
    );
  }

  RoundedRectangleBorder getLastButtonShape() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          bottomRight: Radius.circular(12),
          topLeft: Radius.zero,
          bottomLeft: Radius.zero),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final _transactionBloc = FiatTransactionProvider.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text(
            deposit
                ? '${AppLocalizations.of(context)!.deposit.toUpperCase()} $dropdownValue'
                : '${AppLocalizations.of(context)!.withdraw.toUpperCase()} $dropdownValue',
            style: Theme.of(context).textTheme.headline5),
      ),
      // body: StreamBuilder<bool>(
      //   stream: _transactionBloc.transactionSaved.asBroadcastStream(),
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData && snapshot.requireData) {
      //       ToastService.showToast(
      //           msg: '${AppLocalizations.of(context)!.done.toUpperCase()} ');
      //       WidgetsBinding.instance!
      //           .addPostFrameCallback((_) => Navigator.of(context).pop());
      //     }
      //     return _buildFiat(_transactionBloc);
      //   },
      // ),
    );
  }

  Widget _buildFiat(_bloc) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  getFirstButtonShape()),
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                      getButtonColor),
                              foregroundColor:
                                  MaterialStateProperty.resolveWith(
                                      getButtonTextColor)),
                          onPressed: deposit
                              ? null
                              : () => setState(() => {deposit = !deposit}),
                          child: Container(
                            child: Text(
                                '${AppLocalizations.of(context)!.deposit}'),
                          )),
                    ),
                    Expanded(
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(getLastButtonShape()),
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                      getButtonColor),
                              foregroundColor:
                                  MaterialStateProperty.resolveWith(
                                      getButtonTextColor)),
                          onPressed: deposit
                              ? () => setState(() => {deposit = !deposit})
                              : null,
                          child: Container(
                            child: Text(
                                '${AppLocalizations.of(context)!.withdraw}'),
                          )),
                    ),
                  ],
                ),
              ),
              StreamBuilder<String>(
                stream: _bloc.fiat.asBroadcastStream(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) _bloc.changeFiat = dropdownValue;
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: DropdownButton<String>(
                      dropdownColor: Theme.of(context).backgroundColor,
                      value: dropdownValue,
                      hint: Container(
                        width: MediaQuery.of(context).size.width * 0.88,
                      ),
                      elevation: 16,
                      style: Theme.of(context).textTheme.headline5,
                      underline: Container(
                        height: 1,
                        color: Colors.black54,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                        _bloc.changeFiat = newValue!;
                      },
                      items: AppFiats.map<DropdownMenuItem<String>>(
                          (String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  );
                },
              ),
              StreamBuilder<double>(
                stream: _bloc.amount.asBroadcastStream(),
                builder: (context, snapshot) {
                  return TextField(
                      textAlign: TextAlign.right,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelText: '${AppLocalizations.of(context)!.amount}',
                          labelStyle: Theme.of(context).textTheme.headline5,
                          hintText:
                              '${AppLocalizations.of(context)!.input_amount}',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(fontSize: 10, color: Colors.grey),
                          errorText: snapshot.hasError
                              ? snapshot.error.toString()
                              : null),
                      onChanged: _bloc.validateAmount);
                },
              ),
            ],
          ),
          StreamBuilder<bool>(
            stream: _bloc.transactionValid.asBroadcastStream(),
            builder: (context, snapshot) {
              return ElevatedButton(
                child: Container(
                  child: Center(
                      child: Text(
                    '${AppLocalizations.of(context)!.done.toUpperCase()}',
                    style: Theme.of(context).textTheme.bodyText1,
                  )),
                ),
                onPressed: !snapshot.hasData
                    ? null
                    : deposit
                        ? _bloc.deposit
                        : _bloc.withdraw,
              );
            },
          ),
        ],
      ),
    );
  }
}
