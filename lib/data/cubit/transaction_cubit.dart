import 'package:cointrack/data/cubit/assets_cubit.dart';
import 'package:cointrack/data/cubit/portfolio_cubit.dart';
import 'package:cointrack/services/toast_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cointrack/services/price_service.dart';
import 'package:cointrack/data/enums/enums.dart';
import 'package:cointrack/data/models/transaction.dart';

class TransactionState {
  final bool isNew;
  final double currentPrice;
  final bool loadingPrice;
  final Transaction transaction;
  TransactionState({
    required this.transaction,
    this.currentPrice = 0,
    this.loadingPrice = false,
    this.isNew = true,
  });

  TransactionState copyWith({
    bool? isNew,
    double? currentPrice,
    bool? loadingPrice,
    Transaction? transaction,
  }) {
    return TransactionState(
      isNew: isNew ?? this.isNew,
      currentPrice: currentPrice ?? this.currentPrice,
      loadingPrice: loadingPrice ?? this.loadingPrice,
      transaction: transaction ?? this.transaction,
    );
  }
}

class TransactionCubit extends Cubit<TransactionState> {
  final PortfolioCubit pCubit;
  final AssetsCubit aCubit;
  TransactionCubit({required this.pCubit, required this.aCubit})
      : super(TransactionState(transaction: Transaction.empty(assetCode: '')));

  late List<String> pairs;
  late List<String> exchanges;
  late PriceService pService = PriceService(aCubit: aCubit);

  void setTransaction({required Transaction transaction, required bool isNew}) {
    String ex = _getExchanges(transaction.assetCode);
    String pair = _getPairs(transaction.assetCode, ex);
    if (isNew) {
      emit(
        state.copyWith(
            transaction: transaction.copyWith(pairCode: pair, exchange: ex),
            isNew: isNew),
      );
      _updateCurrentPriceToPair();
    } else {
      emit(
        state.copyWith(
          transaction: transaction,
          isNew: isNew,
        ),
      );
      if (transaction.type == TransactionType.buy ||
          transaction.type == TransactionType.sell) _updateCurrentPriceToPair();
    }
  }

  void setAssetCode(String code) {
    String pair = _getPairs(code, state.transaction.exchange);
    emit(
      state.copyWith(
        transaction: state.transaction.copyWith(
          assetCode: code,
          pairCode: pair,
        ),
      ),
    );
    _updateCurrentPriceToPair();
  }

  void setAsssetAmount(double amount) {
    emit(
      state.copyWith(
        transaction: state.transaction.copyWith(assetAmount: amount),
      ),
    );
  }

  void setPairCode(String code) {
    if (state.transaction.pairCode != code) {
      emit(
        state.copyWith(
          transaction: state.transaction.copyWith(pairCode: code),
        ),
      );
      _updateCurrentPriceToPair();
    }
  }

  void setPairAmount(double amount) {
    emit(
      state.copyWith(
        transaction: state.transaction.copyWith(assetToPair: amount),
      ),
    );
  }

  void setExchange(String ex) {
    if (ex != state.transaction.exchange) {
      String pair = _getPairs(state.transaction.assetCode, ex);
      emit(
        state.copyWith(
            transaction: state.transaction.copyWith(
          pairCode: pair,
          exchange: ex,
        )),
      );
      _updateCurrentPriceToPair();
    }
  }

  void setTransactionType(TransactionType type) {
    emit(
      state.copyWith(
        transaction: state.transaction.copyWith(type: type),
      ),
    );
  }

  void toggleDeduct() {
    emit(
      state.copyWith(
        transaction:
            state.transaction.copyWith(deduct: !state.transaction.deduct),
      ),
    );
  }

  void setDate(DateTime date) async {
    emit(
      state.copyWith(
        loadingPrice: true,
        transaction: state.transaction.copyWith(
          dateTime: date,
        ),
      ),
    );
    double price = await _getPriceToPair(
        state.transaction.assetCode, state.transaction.pairCode, date);
    emit(state.copyWith(currentPrice: price, loadingPrice: false));
  }

  Future<bool> saveTransaction() {
    if (state.isNew)
      return _addTransaction();
    else
      return _updateTransaction();
  }

  Future<bool> _addTransaction() async {
    if (state.transaction.type == TransactionType.buy ||
        state.transaction.type == TransactionType.sell) {
      if (state.transaction.pairCode == 'BUSD') {
        Transaction transaction = Transaction.assetUSD(
            type: state.transaction.type,
            deduct: state.transaction.deduct,
            assetCode: state.transaction.assetCode,
            assetAmount: state.transaction.assetAmount,
            dateTime: state.transaction.dateTime,
            assetToPair: state.transaction.assetToPair,
            exchange: state.transaction.exchange);
        pCubit.addTransaction(transaction);
        return true;
      } else {
        double pairPriceToEur =
            await _getCurrentPriceToUSD(state.transaction.pairCode);
        Transaction transaction = Transaction.assetBase(
            assetAmount: state.transaction.assetAmount,
            assetCode: state.transaction.assetCode,
            assetToPair: state.transaction.assetToPair,
            dateTime: state.transaction.dateTime,
            deduct: state.transaction.deduct,
            pairCode: state.transaction.pairCode,
            pairType: state.transaction.pairType,
            type: state.transaction.type,
            pairToUSD: pairPriceToEur,
            exchange: state.transaction.exchange);
        pCubit.addTransaction(transaction);
        return true;
      }
    } else {
      if (state.transaction.pairCode == 'BUSD') {
        double priceToEur = await _getPriceToUSD(
            state.transaction.assetCode, state.transaction.dateTime);
        ToastService.showToast(msg: priceToEur.toString());
        Transaction transaction = Transaction.assetUSD(
            type: state.transaction.type,
            deduct: false,
            assetCode: state.transaction.assetCode,
            assetAmount: state.transaction.assetAmount,
            dateTime: state.transaction.dateTime,
            assetToPair: priceToEur,
            exchange: state.transaction.exchange);
        print(transaction);
        pCubit.addTransaction(transaction);
        return true;
      } else if (state.transaction.pairCode == 'BTC') {
        double pairPriceToEur = await _getPriceToUSD(
            state.transaction.pairCode, state.transaction.dateTime);
        double priceToPair = await _getPriceToPair(state.transaction.assetCode,
            state.transaction.pairCode, state.transaction.dateTime);

        Transaction transaction = Transaction.assetBase(
            type: state.transaction.type,
            deduct: false,
            assetCode: state.transaction.assetCode,
            assetAmount: state.transaction.assetAmount,
            dateTime: state.transaction.dateTime,
            assetToPair: priceToPair,
            pairType: AssetType.crypto,
            pairCode: 'BTC',
            pairToUSD: pairPriceToEur,
            exchange: state.transaction.exchange);

        pCubit.addTransaction(transaction);
        return true;
      }
    }
    return false;
  }

  Future<bool> _updateTransaction() async {
    return false;
  }

  String _getExchanges(String code) {
    String selectedExchange;
    exchanges = aCubit.getAssetExchanges(code);

    if (exchanges.contains('binance'))
      selectedExchange = 'binance';
    else
      selectedExchange = exchanges[0];

    return selectedExchange;
  }

  String _getPairs(String code, String exchange) {
    String selectedPair;
    pairs = aCubit.getAssetPairs(code, exchange);

    if (pairs.contains('BUSD'))
      selectedPair = 'BUSD';
    else if (pairs.contains('USD'))
      selectedPair = 'USD';
    else if (pairs.contains('BTC'))
      selectedPair = 'BTC';
    else if (pairs.contains('ETH'))
      selectedPair = 'ETH';
    else
      selectedPair = pairs[0];

    return selectedPair;
  }

  _updateCurrentPriceToPair() async {
    emit(state.copyWith(loadingPrice: true));
    double price = await _getCurrentPriceToPair(
        state.transaction.assetCode, state.transaction.pairCode);
    emit(state.copyWith(currentPrice: price, loadingPrice: false));
  }

  Future<double> _getCurrentPriceToPair(String code, String pair) {
    return pService.getCurrentPriceToPair(code, pair);
  }

  Future<double> _getCurrentPriceToUSD(String code) {
    return pService.getCurrentPriceToUSD(code);
  }

  Future<double> _getPriceToPair(String code, String pair, DateTime time) {
    return pService.getPriceToPair(code, pair, time);
  }

  Future<double> _getPriceToUSD(String code, DateTime time) {
    return pService.getPriceToUSD(code, time);
  }
}
