import 'package:hive/hive.dart';
import 'package:cointrack/utils/hive_constants.dart';
import 'package:cointrack/data/models/portfolio.dart';

abstract class PortfolioDatabaseManager {
  Portfolio getPortfolio();
  void savePortfolio(Portfolio portfolio);
}

class HivePortfolioDatabaseManager implements PortfolioDatabaseManager {
  final _box = Hive.box(PORTFOLIO_BOX);

  @override
  Portfolio getPortfolio() {
    return _box.get(PORTFOLIO_BOX, defaultValue: Portfolio.empty());
  }

  @override
  void savePortfolio(Portfolio portfolio) {
    _box.put(PORTFOLIO_BOX, portfolio);
  }
}
