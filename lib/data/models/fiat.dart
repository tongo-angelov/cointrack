import 'package:cointrack/data/models/transaction.dart';
import 'package:cointrack/utils/hive_constants.dart';
import 'package:hive/hive.dart';

part 'fiat.g.dart';

@HiveType(typeId: FIAT_ID)
class Fiat {
  @HiveField(0)
  final String code; // eur , usd
  @HiveField(1)
  final String title; // euro , dollar

  @HiveField(2)
  final double depositedAmount; // 1000 eur , 1000 usd
  @HiveField(3)
  final double depositedValueToUSDPerAmount; // 1 usd = 0.818 eur
  @HiveField(4)
  final double depositedValueToUSDTotal; // 1000*0.818
  @HiveField(5)
  final double currentAmount; // 500 usd free
  @HiveField(6)
  final double currentValueToUSDPerAmount; // 1 usd = 0.82 eur
  @HiveField(7)
  final double currentValueToUSDTotal; // 500*0.82

  @HiveField(8)
  final List<Transaction> transactions;

  @HiveField(9)
  final DateTime updatedAt;

  Fiat({
    required this.depositedValueToUSDPerAmount,
    required this.depositedValueToUSDTotal,
    required this.currentValueToUSDPerAmount,
    required this.currentValueToUSDTotal,
    required this.code,
    required this.title,
    required this.depositedAmount,
    required this.currentAmount,
    required this.transactions,
    required this.updatedAt,
  });

  Fiat copyWith({
    String? code,
    String? title,
    double? depositedAmount,
    double? depositedValueToUSDTotal,
    double? currentAmount,
    double? currentValueToUSDTotal,
    double? currentValueToUSDPerAmount,
    double? depositedValueToUSDPerAmount,
    List<Transaction>? transactions,
    DateTime? updatedAt,
  }) {
    return Fiat(
      code: code ?? this.code,
      title: title ?? this.title,
      depositedAmount: depositedAmount ?? this.depositedAmount,
      depositedValueToUSDTotal:
          depositedValueToUSDTotal ?? this.depositedValueToUSDTotal,
      currentAmount: currentAmount ?? this.currentAmount,
      currentValueToUSDTotal:
          currentValueToUSDTotal ?? this.currentValueToUSDTotal,
      transactions: transactions ?? this.transactions,
      updatedAt: updatedAt ?? this.updatedAt,
      currentValueToUSDPerAmount:
          currentValueToUSDPerAmount ?? this.currentValueToUSDPerAmount,
      depositedValueToUSDPerAmount:
          depositedValueToUSDPerAmount ?? this.depositedValueToUSDPerAmount,
    );
  }
}
