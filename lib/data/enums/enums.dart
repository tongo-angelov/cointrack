import 'package:cointrack/utils/hive_constants.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

part 'enums.g.dart';

@HiveType(typeId: SORT_ORDER_ID)
enum SortOrder {
  @HiveField(0)
  amount,
  @HiveField(1)
  value,
  @HiveField(2)
  percent
}

@HiveType(typeId: ASSET_TYPE_ID)
enum AssetType {
  @HiveField(0)
  @JsonValue("fiat")
  fiat,
  @HiveField(1)
  @JsonValue("crypto")
  crypto,
  @HiveField(2)
  @JsonValue("none")
  none
}

@HiveType(typeId: TRANSACTION_TYPE_ID)
enum TransactionType {
  @HiveField(0)
  @JsonValue("deposit")
  deposit,
  @HiveField(1)
  @JsonValue("withdraw")
  withdraw,
  @HiveField(2)
  @JsonValue("buy")
  buy,
  @HiveField(3)
  @JsonValue("sell")
  sell
}

const Map<TransactionType, String> TransactionsStringMap = {
  TransactionType.buy: 'Buy',
  TransactionType.sell: 'Sell',
  TransactionType.deposit: 'Deposit',
  TransactionType.withdraw: 'Withdraw'
};
