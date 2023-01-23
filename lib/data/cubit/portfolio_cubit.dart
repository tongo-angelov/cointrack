import 'dart:async';
import 'package:cointrack/data/cubit/assets_cubit.dart';
import 'package:cointrack/services/websocket_service.dart';
import 'package:cointrack/services/price_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cointrack/data/managers/portfolio_manager.dart';
import 'package:cointrack/data/portfolio_repository.dart';
import 'package:cointrack/data/enums/enums.dart';
import 'package:cointrack/data/models/transaction.dart';
import 'package:cointrack/data/models/portfolio.dart';
import 'package:cointrack/data/models/asset.dart';

class PortfolioCubit extends Cubit<Portfolio> {
  final PortfolioRepository portfolioRepository =
      PortfolioRepositoryImplementation();
  final PortfolioDatabaseManager db;
  final AssetsCubit aCubit;

  late PriceService pService = PriceService(aCubit: aCubit);
  late WebsocketService wService =
      BinanceWebsocketService(aCubit: aCubit, pCubit: this);

  PortfolioCubit(this.db, this.aCubit) : super(Portfolio.empty()) {
    // wService = BinanceWebsocketService(this);
    _init();
  }

  // --- lifecycle functions
  void _init() {
    emit(db.getPortfolio());
    _getCurrentPrices();
    wService.init(_getAssetsPairList());
  }

  void onPaused() {
    wService.pause();
  }

  void onResumed() {
    wService.resume();
  }

  @override
  Future<void> close() {
    wService.close();
    return super.close();
  }
  // ---

  void _getCurrentPrices() {
    List<Map<String, String>> assets = [];
    state.assets.forEach((element) {
      assets.add({element.code: element.pairCode});
    });
    assets.forEach((element) async {
      double price = await pService.getCurrentPriceToPair(
          element.keys.first, element.values.first);
      // print('${element.keys.first} / ${element.values.first} - $price');
      emit(portfolioRepository.updateAssetPrice(
          state, element.keys.first, element.values.first, price));
    });
  }

  void debugClear() {
    emit(Portfolio.empty());
  }

  void debugCreate() {
    emit(portfolioRepository.debugCreate());
    _updateSocketString();
  }

  void addTransaction(Transaction transaction) {
    if (transaction.assetType == AssetType.fiat) {
      emit(portfolioRepository.addFiatTransaction(state, transaction));
    } else {
      emit(portfolioRepository.addCryptoTransaction(state, transaction));

      _updateSocketString();
    }
  }

  void updateTransaction(Transaction transaction) {
    // TODO
  }

  void deleteAsset(Asset asset) {
    emit(portfolioRepository.deleteAsset(state, asset.code));
  }

  void deleteTransaction(Transaction transaction) {
    emit(portfolioRepository.deleteTransaction(state, transaction));
  }

  void setSortOrder(SortOrder order, bool descending) {
    emit(portfolioRepository.sortAssets(
      state,
      order,
      descending,
    ));
  }

  void _updateSocketString() {
    wService.updateSub(_getAssetsPairList());
  }

  List<String> _getAssetsPairList() {
    List<String> list = [];
    state.assets.forEach((element) {
      if (element.exchange == 'binance')
        list.add(element.code + element.pairCode);
    });
    return list;
  }

  void updateData(String assetCode, String pairCode, double price) {
    emit(portfolioRepository.updateAssetPrice(
        state, assetCode, pairCode, price));
  }

  @override
  void emit(Portfolio state) {
    super.emit(state);
    db.savePortfolio(state);
  }
}
