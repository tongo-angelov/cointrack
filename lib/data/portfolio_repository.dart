import 'package:cointrack/data/models/portfolio_settings.dart';
import 'package:cointrack/utils/constants.dart';
import 'package:nanoid/nanoid.dart';

import 'enums/enums.dart';
import 'models/fiat.dart';
import 'models/asset.dart';
import 'models/account.dart';
import 'models/portfolio.dart';
import 'models/transaction.dart';

abstract class PortfolioRepository {
  Portfolio addFiatTransaction(Portfolio portfolio, Transaction transaction);

  Portfolio addCryptoTransaction(Portfolio portfolio, Transaction transaction);

  Portfolio deleteAsset(Portfolio portfolio, String assetCode);

  Portfolio deleteTransaction(Portfolio portfolio, Transaction transaction);

  Portfolio sortAssets(Portfolio portfolio, SortOrder order, bool descending);

  Portfolio updateAssetPrice(
      Portfolio portfolio, String assetCode, String pairCode, double price);

  Portfolio debugCreate();
}

class PortfolioRepositoryImplementation implements PortfolioRepository {
  /// Start Fiat functions

  @override
  Portfolio addFiatTransaction(Portfolio portfolio, Transaction transaction) {
    print('DEBUG: addFiatTransaction');
    if (!transaction.isMain)
      throw Exception('addFiatTransaction - non main transaction');
    List<Fiat> _fiats = _addFiatMainTransaction(portfolio.fiats, transaction);
    Account _account = _calculateAccount(portfolio);
    return portfolio.copyWith(fiats: _fiats, account: _account);
  }

  List<Fiat> _addFiatMainTransaction(
      List<Fiat> fiats, Transaction transaction) {
    print('_addFiatMainTransaction');
    List<Fiat> _fiats = fiats;
    if (_fiats.any((fiat) => fiat.code == transaction.assetCode)) {
      int _fiatIndex =
          _fiats.indexWhere((fiat) => fiat.code == transaction.assetCode);

      Fiat _fiat = _fiats[_fiatIndex];
      _fiat.transactions.insert(0, transaction);

      _fiats.removeAt(_fiatIndex);
      _fiats.insert(0, _updateFiat(_fiat));
    } else {
      _fiats.add(_createFiatFromMainTransaction(transaction));
    }
    return _fiats;
  }

  Fiat _createFiatFromMainTransaction(Transaction transaction) {
    print('_createFiatFromMainTransaction');
    Fiat fiat = Fiat(
      code: transaction.assetCode,
      title: transaction.assetCode,
      transactions: [transaction],
      updatedAt: DateTime.now(),
      currentAmount: transaction.assetAmount,
      depositedAmount: transaction.assetAmount,
      currentValueToUSDPerAmount: transaction.assetToUSD,
      currentValueToUSDTotal: transaction.assetToUSDTotal,
      depositedValueToUSDPerAmount: transaction.assetToUSD,
      depositedValueToUSDTotal: transaction.assetToUSDTotal,
    );
    return fiat;
  }

  List<Fiat> _addFiatNonMainTransaction(
      List<Fiat> fiats, Transaction transaction) {
    print('_addFiatNonMainTransaction');
    List<Fiat> _fiats = fiats;
    if (_fiats.any((fiat) => fiat.code == transaction.pairCode)) {
      int _fiatIndex =
          _fiats.indexWhere((fiat) => fiat.code == transaction.pairCode);

      Fiat _fiat = _fiats[_fiatIndex];
      _fiat.transactions.insert(0, transaction);

      _fiats.removeAt(_fiatIndex);
      _fiats.insert(0, _updateFiat(_fiat));
    } else {
      _fiats.add(_createFiatFromNonMainTransaction(transaction));
    }
    return _fiats;
  }

  Fiat _createFiatFromNonMainTransaction(Transaction transaction) {
    print('_createFiatFromNonMainTransaction');
    double amount = transaction.type == TransactionType.sell
        ? -transaction.pairAmount
        : transaction.pairAmount;
    Fiat fiat = Fiat(
      code: transaction.pairCode,
      title: transaction.pairCode,
      transactions: [transaction],
      updatedAt: DateTime.now(),
      currentAmount: amount,
      depositedAmount: 0,
      currentValueToUSDPerAmount: transaction.pairToUSD,
      currentValueToUSDTotal: transaction.pairToUSD * amount,
      depositedValueToUSDPerAmount: transaction.pairToUSD,
      depositedValueToUSDTotal: transaction.pairToUSD * amount,
    );
    return fiat;
  }

  // List<Fiat> _updateFiats(List<Fiat> fiats) {
  //   print('_updateFiats');
  //   List<Fiat> _fiats = [];
  //   for (var fiat in fiats) _fiats.add(_updateFiat(fiat));
  //   return _fiats;
  // }

  Fiat _updateFiat(Fiat fiat) {
    print('_updateFiat');
    double depositedAmount = 0;
    double depositedValueToUSDPerAmount = 0;
    double depositedValueToUSDTotal = 0;
    double currentAmount = 0;
    double currentValueToUSDTotal = 0;

    int depositTransactions = 0;

    for (var transaction in fiat.transactions) {
      if (transaction.type == TransactionType.deposit) {
        depositTransactions++;
        depositedAmount += transaction.assetAmount;
        currentAmount += transaction.assetAmount;
        depositedValueToUSDPerAmount += transaction.assetToUSD;
      } else if (transaction.type == TransactionType.withdraw) {
        depositedAmount -= transaction.assetAmount;
        currentAmount -= transaction.assetAmount;
      } else if (transaction.type == TransactionType.buy) {
        currentAmount += transaction.pairAmount;
      } else if (transaction.type == TransactionType.sell) {
        currentAmount -= transaction.pairAmount;
      }
    }
    if (depositTransactions > 0)
      depositedValueToUSDPerAmount /= depositTransactions;
    depositedValueToUSDTotal = depositedAmount * depositedValueToUSDPerAmount;
// TODO - hardcoded current value to fiat equal to buy time value
// find API to get current exchange rate
    currentValueToUSDTotal = currentAmount *
        (1 /
            appFiatsList
                .firstWhere((element) => element.title == fiat.code)
                .usdToFiat);
    // currentValueToUSDTotal = currentAmount * fiat.currentValueToUSDPerAmount;

    List<Transaction> _sortedTransactions =
        _sortTransactions(fiat.transactions);

    return fiat.copyWith(
      depositedAmount: depositedAmount,
      depositedValueToUSDPerAmount: depositedValueToUSDPerAmount,
      depositedValueToUSDTotal: depositedValueToUSDTotal,
      currentAmount: currentAmount,
      currentValueToUSDTotal: currentValueToUSDTotal,
      transactions: _sortedTransactions,
    );
  }

  /// End Fiat functions
  ///
  /// Start Crypto functions

  @override
  Portfolio addCryptoTransaction(Portfolio portfolio, Transaction transaction) {
    print('DEBUG: addCryptoTransaction');
    if (!transaction.isMain)
      throw Exception('addCryptoTransaction - non main transaction');
    Portfolio _portfolio = _addAssetMainTransaction(portfolio, transaction);
    Account _account = _calculateAccount(portfolio);
    return _portfolio.copyWith(
      account: _account,
    );
  }

  Portfolio _addAssetMainTransaction(
      Portfolio portfolio, Transaction transaction) {
    print('_addAssetMainTransaction');
    List<Asset> _assets = portfolio.assets;
    List<Fiat> _fiats = portfolio.fiats;

    if (_assets.any((asset) => asset.code == transaction.assetCode)) {
      int _assetIndex =
          _assets.indexWhere((asset) => asset.code == transaction.assetCode);

      Asset _asset = _assets[_assetIndex];
      _asset.transactions.insert(0, transaction);

      _assets.removeAt(_assetIndex);
      _assets.insert(0, _updateAsset(_asset));
    } else {
      _assets.add(_createAssetFromMainTransaction(transaction));
    }

    if (transaction.type == TransactionType.buy ||
        transaction.type == TransactionType.sell) {
      if (transaction.pairType == AssetType.fiat) {
        _fiats = _addFiatNonMainTransaction(
            portfolio.fiats, Transaction.toSellTransaction(transaction));
      } else if (transaction.pairType == AssetType.crypto) {
        _assets = _addAssetNonMainTransaction(
            portfolio.assets, Transaction.toSellTransaction(transaction));
      }
    }

    return portfolio.copyWith(assets: _assets, fiats: _fiats);
  }

  Asset _createAssetFromMainTransaction(Transaction transaction) {
    print('_createAssetFromMainTransaction');
    // get base
    Asset _asset = Asset(
      exchange: transaction.exchange,
      code: transaction.assetCode,
      type: transaction.assetType,
      pairCode: transaction.pairCode,
      pairType: transaction.pairType,
      depositedAmount: transaction.type == TransactionType.deposit
          ? transaction.assetAmount
          : 0,
      currentAmount: transaction.assetAmount,
      assetToPair: transaction.assetToPair,
      assetToPairTotal: transaction.pairAmount,
      updatedPairValueToUSDPerAmount: transaction.pairToUSD,
      assetToUSDTotal: transaction.assetToUSDTotal,
      assetToUSD: transaction.assetToUSD,
      transactions: [transaction],
      usdUp: false,
      currentUSDPercentage: 0,
      currentValueToUSDPerAmount: transaction.assetToUSD,
      currentValueToUSDTotal: transaction.assetToUSDTotal,
      currentUSDPL: 0,
      pairUp: false,
      currentPairPercentage: 0,
      updatedValueToPairPerAmount: transaction.assetToPair,
      currentValueToPairTotal: transaction.pairAmount,
      currentPairPL: 0,
      updatedAt: DateTime.now(),
      calculatedAt: DateTime.now(),
      debugUIUpdate: DateTime.now(),
    );

    return _asset;
  }

  List<Asset> _addAssetNonMainTransaction(
      List<Asset> assets, Transaction transaction) {
    print('_addAssetNonMainTransaction');
    List<Asset> _assets = assets;

    if (_assets.any((asset) => asset.code == transaction.pairCode)) {
      int _assetIndex =
          _assets.indexWhere((asset) => asset.code == transaction.pairCode);

      Asset _asset = _assets[_assetIndex];
      _asset.transactions.insert(0, transaction);

      _assets.removeAt(_assetIndex);
      _assets.insert(0, _updateAsset(_asset));
    } else {
      _assets.add(_createAssetFromNonMainTransaction(transaction));
    }

    return _assets;
  }

  Asset _createAssetFromNonMainTransaction(Transaction transaction) {
    print('_createAssetFromNonMainTransaction');
    double amount = transaction.type == TransactionType.sell
        ? -transaction.pairAmount
        : transaction.pairAmount;
    Asset _asset = Asset.newBaseAsset(
      exchange: transaction.exchange,
      code: transaction.pairCode,
      depositedAmount: transaction.type == TransactionType.deposit
          ? transaction.pairAmount
          : 0,
      currentAmount: amount,
      assetToPair: transaction.pairToUSD,
      assetToPairTotal: transaction.pairToUSD * amount,
      assetToUSDTotal: transaction.pairToUSD * amount,
      assetToUSD: transaction.pairToUSD,
      transactions: [transaction],
      currentValueToUSDPerAmount: transaction.pairToUSD,
      currentValueToUSDTotal: transaction.pairToUSD * amount,
      updatedValueToPairPerAmount: transaction.pairToUSD,
      currentValueToPairTotal: transaction.pairToUSD * amount,
      updatedAt: DateTime.now(),
      calculatedAt: DateTime.now(),
      debugUIUpdate: DateTime.now(),
    );

    return _asset;
  }

  // List<Asset> _updateAssets(List<Asset> assets) {
  //   print('_updateAssets');
  //   List<Asset> _assets = [];
  //   for (var asset in assets) _assets.add(_updateAsset(asset));
  //   return _assets;
  // }

  Asset _updateAsset(Asset asset) {
    print('_updateAsset');
    double depositedAmount = 0;
    double currentAmount = 0;
    double assetToUSD = 0;
    double assetToUSDTotal = 0;
    double assetToPair = 0;
    double assetToPairTotal = 0;
    double updatedPairValueToUSDPerAmount = 0;
    List<String> children = [];

    double netCost = 0;

    double depositTransactions = 0;
    for (var transaction in asset.transactions) {
      if (transaction.isMain) {
        if (transaction.type == TransactionType.deposit) {
          depositTransactions++;
          assetToUSD += transaction.assetToUSD;
          assetToPair += transaction.assetToPair;
          depositedAmount += transaction.assetAmount;
          updatedPairValueToUSDPerAmount += transaction.pairToUSD;
          currentAmount += transaction.assetAmount;
        } else if (transaction.type == TransactionType.withdraw) {
          depositedAmount -= transaction.assetAmount;
          currentAmount -= transaction.assetAmount;
        } else if (transaction.type == TransactionType.buy) {
          depositTransactions++;
          assetToUSD += transaction.assetToUSD;
          assetToPair += transaction.assetToPair;
          currentAmount += transaction.assetAmount;
          updatedPairValueToUSDPerAmount += transaction.pairToUSD;
        } else if (transaction.type == TransactionType.sell) {
          currentAmount -= transaction.assetAmount;
        }
      } else {
        children.add(transaction.assetCode);
        if (transaction.type == TransactionType.buy) {
          currentAmount += transaction.pairAmount;
        } else if (transaction.type == TransactionType.sell) {
          currentAmount -= transaction.pairAmount;
          netCost -= transaction.pairAmount * transaction.pairToUSD;
        }
      }
    }

    List<Transaction> _sortedTransactions =
        _sortTransactions(asset.transactions);

    if (depositTransactions > 0) {
      assetToUSD /= depositTransactions;
      assetToPair /= depositTransactions;
      updatedPairValueToUSDPerAmount /= depositTransactions;

      assetToUSDTotal = assetToUSD * currentAmount;
      assetToPairTotal = assetToPair * currentAmount;

      return asset.copyWith(
          depositedAmount: depositedAmount,
          currentAmount: currentAmount,
          assetToUSD: assetToUSD,
          assetToUSDTotal: assetToUSDTotal,
          assetToPair: assetToPair,
          assetToPairTotal: assetToPairTotal,
          updatedPairValueToUSDPerAmount: updatedPairValueToUSDPerAmount,
          currentValueToUSDPerAmount: assetToPair,
          currentValueToUSDTotal: assetToUSDTotal,
          updatedValueToPairPerAmount: assetToPair,
          currentValueToPairTotal: assetToPairTotal,
          transactions: _sortedTransactions);
    }

    return asset.copyWith(
        // depositedAmount: depositedAmount,
        currentAmount: currentAmount,
        assetToUSD: netCost / currentAmount,
        assetToUSDTotal: netCost,
        assetToPair: netCost / currentAmount,
        assetToPairTotal: netCost,
        currentValueToUSDPerAmount: netCost / currentAmount,
        currentValueToUSDTotal: netCost,
        updatedValueToPairPerAmount: netCost / currentAmount,
        currentValueToPairTotal: netCost,
        transactions: _sortedTransactions);
  }

  /// End Crypto functions
  ///
  /// Start Transaction functions

  List<Transaction> _sortTransactions(List<Transaction> assets) {
    List<Transaction> _assets = assets;
    _assets.sort((a, b) => b.dateTime.compareTo(a.dateTime));
    return _assets;
  }

  /// End Transaction functions
  ///
  /// Start Update & Calculate functions

  Portfolio sortAssets(Portfolio portfolio, SortOrder order, bool descending) {
    List<Asset> _assets = portfolio.assets;
    PortfolioSettings _settings =
        PortfolioSettings(sortOrder: order, descending: descending);

    if (_settings.descending) {
      if (_settings.sortOrder == SortOrder.amount) {
        _assets.sort((a, b) => b.currentAmount.compareTo(a.currentAmount));
      } else if (_settings.sortOrder == SortOrder.value) {
        _assets.sort(
            (a, b) => b.currentUSDPercentage.compareTo(a.currentUSDPercentage));
      } else if (_settings.sortOrder == SortOrder.percent) {
        _assets.sort((a, b) =>
            b.currentPairPercentage.compareTo(a.currentPairPercentage));
      }
    } else {
      if (_settings.sortOrder == SortOrder.amount) {
        _assets.sort((a, b) => a.currentAmount.compareTo(b.currentAmount));
      } else if (_settings.sortOrder == SortOrder.value) {
        _assets.sort(
            (a, b) => a.currentUSDPercentage.compareTo(b.currentUSDPercentage));
      } else if (_settings.sortOrder == SortOrder.percent) {
        _assets.sort((a, b) =>
            a.currentPairPercentage.compareTo(b.currentPairPercentage));
      }
    }

    return portfolio.copyWith(settings: _settings, assets: _assets);
  }

  Portfolio updateAssetPrice(
      Portfolio portfolio, String assetCode, String pairCode, double price) {
    Account _account = portfolio.account;
    List<Asset> _assets = portfolio.assets;
    if (_assets.isNotEmpty) {
      int _assetIndex = _assets.indexWhere((asset) => asset.code == assetCode);
      if (_assetIndex != -1) {
        Asset _asset = _assets[_assetIndex];
        _asset = _asset.update(
            updatedPairValueToUSDPerAmount:
                _asset.updatedPairValueToUSDPerAmount,
            updatedValueToPairPerAmount: price,
            updatedAt: DateTime.now(),
            debugUIUpdate: DateTime.now());

        _assets[_assetIndex] = _asset;

        // if (_asset.children.isNotEmpty)
        //   for (var child in _asset.children) {
        //     int _childIndex = _assets.indexWhere((a) => a.code == child);
        //     Asset _childAsset = _assets[_childIndex];
        //     _childAsset = _childAsset.update(
        //       updatedPairValueToUSDPerAmount: double.parse(jsonData['p']),
        //       updatedValueToPairPerAmount:
        //           _childAsset.updatedValueToPairPerAmount,
        //       updatedAt: DateTime.now(),
        //     );

        //     _assets.removeAt(_childIndex);
        //     _assets.add(_childAsset);
        //   }
      }

// TODO - hardcoded update all btc pairs
      for (var child in _assets) {
        if (assetCode == 'BTC' && child.pairCode == 'BTC') {
          int _childIndex = _assets.indexWhere((a) => a.code == child.code);
          Asset _childAsset = _assets[_childIndex];
          _childAsset = _childAsset.update(
            updatedPairValueToUSDPerAmount: price,
            updatedValueToPairPerAmount:
                _childAsset.updatedValueToPairPerAmount,
            updatedAt: DateTime.now(),
            debugUIUpdate: _childAsset.debugUIUpdate,
          );

          _assets[_childIndex] = _childAsset;
        }
      }

      return _calculatePortfolio(portfolio.copyWith(assets: _assets));
    }

    return portfolio.copyWith(account: _account, assets: _assets);
  }

  Portfolio _calculatePortfolio(Portfolio portfolio) {
    Portfolio _portfolio = portfolio;
    Account _account = portfolio.account;
    List<Asset> _assets = portfolio.assets;

    _assets = _calculateAssets(_assets);
    _portfolio = _portfolio.copyWith(assets: _assets);
    _portfolio = sortAssets(_portfolio, _portfolio.settings.sortOrder,
        _portfolio.settings.descending);

    _account = _calculateAccount(portfolio.copyWith(assets: _assets));

    return _portfolio.copyWith(account: _account);
  }

  List<Asset> _calculateAssets(List<Asset> assets) {
    List<Asset> _assets = [];

    assets.forEach((_asset) {
      if (_asset.updatedAt.isAfter(_asset.calculatedAt)) {
        double currentAmount = _asset.currentAmount;
        double assetToUSD = _asset.assetToUSD;
        double assetToUSDTotal = _asset.assetToUSDTotal;
        double assetToPair = _asset.assetToPair;
        double assetToPairTotal = _asset.assetToPairTotal;
        double updatedValueToPairPerAmount = _asset.updatedValueToPairPerAmount;

        double updatedPairValueToUSDPerAmount =
            _asset.updatedPairValueToUSDPerAmount;

        bool usdUp = false;
        double currentUSDPercentage = 0;
        double currentValueToUSDPerAmount =
            updatedValueToPairPerAmount * updatedPairValueToUSDPerAmount;
        double currentValueToUSDTotal = 0;
        double currentUSDPL = 0;
        bool pairUp = false;
        double currentPairPercentage = 0;
        double currentValueToPairTotal = 0;
        double currentPairPL = 0;

        currentValueToUSDTotal = currentAmount * currentValueToUSDPerAmount;
        if (currentValueToUSDPerAmount > assetToUSD) {
          usdUp = true;
          currentUSDPercentage =
              ((currentValueToUSDPerAmount / assetToUSD) - 1) * 100;
        } else if (currentValueToUSDPerAmount < assetToUSD) {
          currentUSDPercentage =
              (1 - (currentValueToUSDPerAmount / assetToUSD)) * 100;
          currentUSDPercentage *= -1;
        }
        currentUSDPL = currentValueToUSDTotal - assetToUSDTotal;

        currentValueToPairTotal = currentAmount * updatedValueToPairPerAmount;
        if (updatedValueToPairPerAmount > assetToPair) {
          pairUp = true;
          currentPairPercentage =
              ((updatedValueToPairPerAmount / assetToPair) - 1) * 100;
        } else if (updatedValueToPairPerAmount < assetToPair) {
          currentPairPercentage =
              (1 - (updatedValueToPairPerAmount / assetToPair)) * 100;
          currentPairPercentage *= -1;
        }
        currentPairPL = currentValueToPairTotal - assetToPairTotal;

        Asset a = _asset.calculate(
            usdUp: usdUp,
            currentUSDPercentage: currentUSDPercentage,
            currentValueToUSDPerAmount: currentValueToUSDPerAmount,
            currentValueToUSDTotal: currentValueToUSDTotal,
            currentUSDPL: currentUSDPL,
            pairUp: pairUp,
            currentPairPercentage: currentPairPercentage,
            currentValueToPairTotal: currentValueToPairTotal,
            currentPairPL: currentPairPL,
            calculatedAt: DateTime.now());

        _assets.add(a);
      } else
        _assets.add(_asset);
    });

    return _assets;
  }

  Account _calculateAccount(Portfolio portfolio) {
    double investedFiat = 0;
    double currentFiat = 0;
    double investedCrypto = 0;
    double currentCrypto = 0;
    double currentUSDTotal = 0;
    double currentUSDPL = 0;
    double profitUSDTotal = 0;
    double profitUSDTotalPercent = 0;

    for (var fiat in portfolio.fiats) {
      investedFiat += fiat.depositedAmount;
      currentFiat += fiat.currentAmount;
    }

    for (var asset in portfolio.assets) {
      investedCrypto += asset.assetToUSDTotal;
      currentCrypto += asset.currentValueToUSDTotal;
      currentUSDPL += asset.currentUSDPL;
    }
// TODO - disabled for debugging
    // double totalInvested = investedFiat + investedCrypto;
    double totalInvested = investedFiat;

    // currentUSDTotal = currentFiat + currentCrypto;
    currentUSDTotal = currentCrypto;
    profitUSDTotal = currentUSDTotal - totalInvested;

// TODO - disabled for debugging
    // profitUSDTotalPercent = ((profitUSDTotal / investedFiat)) * 100;

    return portfolio.account.copyWith(
      investedFiat: investedFiat,
      currentFiat: currentFiat,
      investedCrypto: investedCrypto,
      currentCrypto: currentCrypto,
      currentUSDTotal: currentUSDTotal,
      currentUSDPL: currentUSDPL,
      profitUSDTotal: profitUSDTotal,
      profitUSDTotalPercent: profitUSDTotalPercent,
    );
  }

  /// End Update & Calculate functions
  ///
  /// Start Debug funcions

  @override

  /// CREATE DEBUG PORTFOLIO
  Portfolio debugCreate() {
    print('DEBUG: debugCreate');
    Portfolio portfolio = Portfolio.empty();

    Transaction f1 = Transaction.usd(
        type: TransactionType.deposit,
        assetAmount: 606,
        dateTime: DateTime.now());

    portfolio = addFiatTransaction(portfolio, f1);

    // Transaction t0 = Transaction(
    //     isMain: true,
    //     id: nanoid(),
    //     type: TransactionType.deposit,
    //     assetCode: 'BTC',
    //     assetName: 'Bitcoin',
    //     assetAmount: 0.02674521,
    //     assetType: AssetType.crypto,
    //     assetToPair: 46704.92,
    //     assetToPairTotal: 1249.1328934332,
    //     assetToUSD: 46704.92,
    //     assetToUSDTotal: 1249.1328934332,
    //     pairType: AssetType.fiat,
    //     pairCode: 'USD',
    //     pairAmount: 1249.1328934332,
    //     pairToUSD: 1,
    //     deduct: true,
    //     dateTime: DateTime.parse("2021-04-02"),
    //     pairName: 'US Dollar');

    // portfolio = addCryptoTransaction(portfolio, t0);

    Transaction t1 = Transaction(
        isMain: true,
        id: nanoid(),
        type: TransactionType.deposit,
        assetCode: 'SFP',
        assetAmount: 137,
        assetType: AssetType.crypto,
        assetToPair: 0.00005137,
        assetToUSD: 2.58704457,
        assetToUSDTotal: 354.42510609,
        pairType: AssetType.crypto,
        pairCode: 'BTC',
        pairAmount: 0.00703884,
        pairToUSD: 50361.00,
        deduct: true,
        dateTime: DateTime.parse("2021-04-02"),
        exchange: 'binance');

    Transaction t2 = Transaction(
        isMain: true,
        id: nanoid(),
        type: TransactionType.deposit,
        assetCode: 'ORN',
        assetAmount: 14.38,
        assetType: AssetType.crypto,
        assetToPair: 0.00029991,
        assetToUSD: 14.76936786,
        assetToUSDTotal: 212.3835098268,
        pairType: AssetType.crypto,
        pairCode: 'BTC',
        pairAmount: 0.0043126,
        pairToUSD: 49246.00,
        deduct: true,
        dateTime: DateTime.parse("2021-04-07"),
        exchange: 'binance');

    Transaction t3 = Transaction(
        isMain: true,
        id: nanoid(),
        type: TransactionType.deposit,
        assetCode: 'BLZ',
        assetAmount: 363,
        assetType: AssetType.crypto,
        assetToPair: 0.00000827,
        assetToUSD: 0.41785829,
        assetToUSDTotal: 151.68255927,
        pairType: AssetType.crypto,
        pairCode: 'BTC',
        pairAmount: 0.00300201,
        pairToUSD: 50527.00,
        deduct: true,
        dateTime: DateTime.parse("2021-04-12"),
        exchange: 'binance');

    Transaction t4 = Transaction(
        isMain: true,
        id: nanoid(),
        type: TransactionType.deposit,
        assetCode: 'TVK',
        assetAmount: 383,
        assetType: AssetType.crypto,
        assetToPair: 0.00001259,
        assetToUSD: 0.6293741,
        assetToUSDTotal: 241.05,
        pairType: AssetType.crypto,
        pairCode: 'BTC',
        pairAmount: 0.00482197,
        pairToUSD: 49990.00,
        deduct: true,
        dateTime: DateTime.parse("2021-04-01"),
        exchange: 'binance');

    Transaction t5 = Transaction(
        isMain: true,
        id: nanoid(),
        type: TransactionType.deposit,
        assetCode: 'TVK',
        assetAmount: 202,
        assetType: AssetType.crypto,
        assetToPair: 0.00000915,
        assetToUSD: 0.4267743,
        assetToUSDTotal: 86.21,
        pairType: AssetType.crypto,
        pairCode: 'BTC',
        pairAmount: 0.0018483,
        pairToUSD: 46642.00,
        deduct: true,
        dateTime: DateTime.parse("2021-05-07"),
        exchange: 'binance');

    Transaction t6 = Transaction(
        isMain: true,
        id: nanoid(),
        type: TransactionType.deposit,
        assetCode: 'TVK',
        assetAmount: 727,
        assetType: AssetType.crypto,
        assetToPair: 0.00000787,
        assetToUSD: 0.27968406,
        assetToUSDTotal: 203.33,
        pairType: AssetType.crypto,
        pairCode: 'BTC',
        pairAmount: 0.00572149,
        pairToUSD: 35538.00,
        deduct: true,
        dateTime: DateTime.parse("2021-05-18"),
        exchange: 'binance');

    portfolio = addCryptoTransaction(portfolio, t1);
    portfolio = addCryptoTransaction(portfolio, t2);
    portfolio = addCryptoTransaction(portfolio, t3);
    portfolio = addCryptoTransaction(portfolio, t4);
    portfolio = addCryptoTransaction(portfolio, t5);
    portfolio = addCryptoTransaction(portfolio, t6);

    return portfolio;
  }

  @override
  Portfolio deleteAsset(Portfolio portfolio, String assetCode) {
    List<Asset> _assets = portfolio.assets;
    _assets.removeWhere((element) => element.code == assetCode);
    return portfolio.copyWith(assets: _assets);
  }

  @override
  Portfolio deleteTransaction(Portfolio portfolio, Transaction transaction) {
    List<Asset> _assets = portfolio.assets;
    var index =
        _assets.indexWhere((element) => element.code == transaction.assetCode);
    var asset = _assets[index];
    if (asset.transactions.length == 1) return portfolio;

    asset.transactions.removeWhere((element) => element.id == transaction.id);
    _assets[index] = asset;
    _assets = _calculateAssets(_assets);
    return portfolio.copyWith(assets: _assets);
  }
}
