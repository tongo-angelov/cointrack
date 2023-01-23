import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:cointrack/data/enums/enums.dart';
import 'package:cointrack/utils/hive_constants.dart';

part 'transaction.g.dart';

@HiveType(typeId: TRANSACTION_ID)
@JsonSerializable()
class Transaction {
  @HiveField(0)
  final bool isMain;
  @HiveField(1)
  final String id;
  @HiveField(2)
  final TransactionType type;
  @HiveField(3)
  final String assetCode;
  @HiveField(5)
  final double assetAmount;
  @HiveField(6)
  final AssetType assetType;
  @HiveField(7)
  final double assetToPair;
  @HiveField(9)
  final double assetToUSD;
  @HiveField(10)
  final double assetToUSDTotal;
  @HiveField(11)
  final AssetType pairType;
  @HiveField(12)
  final String pairCode;
  @HiveField(14)
  final double pairAmount;
  @HiveField(15)
  final double pairToUSD;
  @HiveField(16)
  final bool deduct;
  @HiveField(17)
  final DateTime dateTime;
  @HiveField(18)
  final String exchange;

  Transaction({
    required this.isMain,
    required this.id,
    required this.type,
    required this.assetCode,
    required this.assetAmount,
    required this.assetType,
    required this.assetToPair,
    required this.assetToUSD,
    required this.assetToUSDTotal,
    required this.pairType,
    required this.pairCode,
    required this.pairAmount,
    required this.pairToUSD,
    required this.deduct,
    required this.dateTime,
    required this.exchange,
  });

// Used in transaction cubit for default state
  Transaction.empty(
      {required this.assetCode, this.pairCode = '', this.exchange = ''})
      : isMain = true,
        pairType = AssetType.crypto,
        deduct = false,
        id = '',
        type = TransactionType.buy,
        assetAmount = 0,
        assetType = AssetType.none,
        assetToUSD = 0,
        assetToUSDTotal = 0,
        assetToPair = 0,
        pairAmount = 0,
        pairToUSD = 0,
        dateTime = DateTime.now();

  Transaction.usd({
    required this.type,
    required this.assetAmount,
    required this.dateTime,
  })  : isMain = true,
        deduct = false,
        id = '',
        assetCode = 'USD',
        assetType = AssetType.fiat,
        assetToUSD = 1,
        assetToUSDTotal = assetAmount,
        assetToPair = 0,
        pairType = AssetType.none,
        pairCode = '',
        pairAmount = 0,
        pairToUSD = 0,
        exchange = '';

  Transaction.fiat({
    required this.type,
    required this.assetCode,
    required this.assetAmount,
    required this.assetToUSD,
    required this.assetToUSDTotal,
    required this.dateTime,
  })  : isMain = true,
        deduct = false,
        id = '',
        assetType = AssetType.fiat,
        assetToPair = 0,
        pairType = AssetType.none,
        pairCode = '',
        pairAmount = 0,
        pairToUSD = 0,
        exchange = '';

  Transaction.assetBase({
    required this.type,
    required this.deduct,
    required this.assetCode,
    required this.assetAmount,
    required this.dateTime,
    required this.assetToPair,
    required this.pairType,
    required this.pairCode,
    required this.pairToUSD,
    required this.exchange,
  })  : isMain = true,
        id = '',
        this.assetToUSD = assetToPair * pairToUSD,
        this.assetToUSDTotal = assetToPair * pairToUSD * assetAmount,
        this.pairAmount = assetToPair * assetAmount,
        this.assetType = AssetType.crypto;

  Transaction.assetUSD({
    required this.type,
    required this.deduct,
    required this.assetCode,
    required this.assetAmount,
    required this.dateTime,
    required this.assetToPair,
    required this.exchange,
  })  : isMain = true,
        id = '',
        this.pairType = AssetType.fiat,
        this.pairCode = 'BUSD',
        this.pairToUSD = 1,
        this.assetToUSD = assetToPair,
        this.assetToUSDTotal = assetToPair * assetAmount,
        this.pairAmount = assetToPair * assetAmount,
        this.assetType = AssetType.crypto;

  Transaction.assetFull({
    required this.type,
    required this.deduct,
    required this.assetCode,
    required this.assetAmount,
    required this.assetToUSD,
    required this.assetToUSDTotal,
    required this.dateTime,
    required this.assetToPair,
    required this.pairType,
    required this.pairCode,
    required this.pairAmount,
    required this.pairToUSD,
    required this.exchange,
  })  : isMain = true,
        id = '',
        this.assetType = AssetType.crypto;

  Transaction.toSellTransaction(Transaction _transaction)
      : isMain = false,
        this.id = _transaction.id,
        this.type = TransactionType.sell,
        this.assetCode = _transaction.assetCode,
        this.assetAmount = _transaction.assetAmount,
        this.assetType = _transaction.assetType,
        this.assetToPair = _transaction.assetToPair,
        this.assetToUSD = _transaction.assetToUSD,
        this.assetToUSDTotal = _transaction.assetToUSDTotal,
        this.pairType = _transaction.pairType,
        this.pairCode = _transaction.pairCode,
        this.pairAmount = _transaction.pairAmount,
        this.pairToUSD = _transaction.pairToUSD,
        this.deduct = _transaction.deduct,
        this.dateTime = _transaction.dateTime,
        this.exchange = _transaction.exchange;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
  Map<String, dynamic> toJson() => _$TransactionToJson(this);

  @override
  String toString() {
    String _type = '';
    switch (type) {
      case TransactionType.buy:
        _type = 'Buy';
        break;
      case TransactionType.sell:
        _type = 'Sell';
        break;
      case TransactionType.deposit:
        _type = 'Deposit';
        break;
      case TransactionType.withdraw:
        _type = 'Withdraw';
        break;
      default:
        break;
    }

    return '$_type transaction\nassetCode: $assetCode\nassetAmount: $assetAmount\nassetType: $assetType\nassetToPair: $assetToPair\nassetToUSD: $assetToUSD\nassetToUSDTotal: $assetToUSDTotal\npairType: $pairType\npairCode: $pairCode\npairAmount: $pairAmount\npairToUSD: $pairToUSD\ndeduct: $deduct\ndateTime: $dateTime\nexchange: $exchange';
  }

  Transaction copyWith({
    bool? isMain,
    String? id,
    TransactionType? type,
    String? assetCode,
    double? assetAmount,
    AssetType? assetType,
    double? assetToPair,
    double? assetToUSD,
    double? assetToUSDTotal,
    AssetType? pairType,
    String? pairCode,
    double? pairAmount,
    double? pairToUSD,
    bool? deduct,
    DateTime? dateTime,
    String? exchange,
  }) {
    return Transaction(
      isMain: isMain ?? this.isMain,
      id: id ?? this.id,
      type: type ?? this.type,
      assetCode: assetCode ?? this.assetCode,
      assetAmount: assetAmount ?? this.assetAmount,
      assetType: assetType ?? this.assetType,
      assetToPair: assetToPair ?? this.assetToPair,
      assetToUSD: assetToUSD ?? this.assetToUSD,
      assetToUSDTotal: assetToUSDTotal ?? this.assetToUSDTotal,
      pairType: pairType ?? this.pairType,
      pairCode: pairCode ?? this.pairCode,
      pairAmount: pairAmount ?? this.pairAmount,
      pairToUSD: pairToUSD ?? this.pairToUSD,
      deduct: deduct ?? this.deduct,
      dateTime: dateTime ?? this.dateTime,
      exchange: exchange ?? this.exchange,
    );
  }
}
