import 'package:cointrack/utils/hive_constants.dart';
import 'package:hive/hive.dart';

part 'account.g.dart';

@HiveType(typeId: ACCOUNT_ID)
class Account {
  @HiveField(0)
  final double investedFiat;
  @HiveField(1)
  final double currentFiat;
  @HiveField(2)
  final double investedCrypto;
  @HiveField(3)
  final double currentCrypto;
  @HiveField(4)
  final double currentUSDTotal;
  @HiveField(5)
  final double currentUSDPL;
  @HiveField(6)
  final double profitUSDTotal;
  @HiveField(7)
  final double profitUSDTotalPercent;

  Account({
    this.investedFiat = 0,
    this.currentFiat = 0,
    this.investedCrypto = 0,
    this.currentCrypto = 0,
    this.currentUSDTotal = 0,
    this.currentUSDPL = 0,
    this.profitUSDTotal = 0,
    this.profitUSDTotalPercent = 0,
  });
  Account copyWith({
    double? investedFiat,
    double? currentFiat,
    double? investedCrypto,
    double? currentCrypto,
    double? currentUSDTotal,
    double? currentUSDPL,
    double? profitUSDTotal,
    double? profitUSDTotalPercent,
  }) {
    return Account(
      investedFiat: investedFiat ?? this.investedFiat,
      currentFiat: currentFiat ?? this.currentFiat,
      investedCrypto: investedCrypto ?? this.investedCrypto,
      currentCrypto: currentCrypto ?? this.currentCrypto,
      currentUSDTotal: currentUSDTotal ?? this.currentUSDTotal,
      currentUSDPL: currentUSDPL ?? this.currentUSDPL,
      profitUSDTotal: profitUSDTotal ?? this.profitUSDTotal,
      profitUSDTotalPercent:
          profitUSDTotalPercent ?? this.profitUSDTotalPercent,
    );
  }
}
