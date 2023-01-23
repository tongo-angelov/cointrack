import 'package:cointrack/data/enums/enums.dart';
import 'package:cointrack/utils/hive_constants.dart';
import 'package:hive/hive.dart';

part 'portfolio_settings.g.dart';

@HiveType(typeId: PORTFOLIO_SETTINGS_ID)
class PortfolioSettings {
  @HiveField(0)
  final SortOrder sortOrder;
  @HiveField(1)
  final bool descending;

  PortfolioSettings({
    required this.sortOrder,
    required this.descending,
  });

  PortfolioSettings.defaults()
      : sortOrder = SortOrder.percent,
        descending = true;

  PortfolioSettings copyWith({
    SortOrder? sortOrder,
    bool? descending,
  }) {
    return PortfolioSettings(
      sortOrder: sortOrder ?? this.sortOrder,
      descending: descending ?? this.descending,
    );
  }
}
