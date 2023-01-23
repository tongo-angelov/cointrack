import 'package:cointrack/data/models/portfolio_settings.dart';

import 'fiat.dart';
import 'account.dart';
import 'asset.dart';
import 'package:cointrack/utils/hive_constants.dart';
import 'package:hive/hive.dart';

part 'portfolio.g.dart';

@HiveType(typeId: PORTFOLIO_ID)
class Portfolio {
  @HiveField(0)
  final Account account;
  @HiveField(1)
  final List<Asset> assets;
  @HiveField(2)
  final List<Fiat> fiats;
  @HiveField(3)
  final PortfolioSettings settings;

  Portfolio({
    required this.account,
    required this.assets,
    required this.fiats,
    required this.settings,
  });

  Portfolio.empty()
      : account = Account(),
        assets = [],
        fiats = [],
        settings = PortfolioSettings.defaults();

  Portfolio copyWith({
    Account? account,
    List<Asset>? assets,
    List<Fiat>? fiats,
    PortfolioSettings? settings,
  }) {
    return Portfolio(
      account: account ?? this.account,
      assets: assets ?? this.assets,
      fiats: fiats ?? this.fiats,
      settings: settings ?? this.settings,
    );
  }
}
