import 'package:cointrack/data/cubit/transaction_cubit.dart';
import 'package:cointrack/data/models/app_settings.dart';
import 'package:cointrack/ui/transaction/fiat_transaction_screen.dart';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cointrack/data/cubit/settings_cubit.dart';
import 'package:cointrack/ui/details/asset_details_screen.dart';
import 'package:cointrack/data/models/fiat.dart';
import 'package:cointrack/data/models/transaction.dart';
import 'package:cointrack/ui/details/fiat_details_screen.dart';
import 'package:cointrack/ui/home/home_screen.dart';
import 'package:cointrack/data/models/asset.dart';
import 'package:cointrack/data/enums/enums.dart';
import 'package:cointrack/ui/transaction/asset_transaction_screen.dart';
import 'package:cointrack/data/cubit/portfolio_cubit.dart';
import 'package:cointrack/bottom_navigation.dart';
import 'package:cointrack/ui/explore/explore_screen.dart';
import 'package:cointrack/ui/settings/settings_screen.dart';
import 'package:cointrack/utils/theme.dart';

import 'l10n/index.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> with WidgetsBindingObserver {
  TabItem _currentTab = defaultTab; // TabItem.portfolio
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  final Map<TabItem, GlobalKey<NavigatorState>> _navigatorKeys = {
    TabItem.explore: GlobalKey<NavigatorState>(),
    TabItem.portfolio: GlobalKey<NavigatorState>(),
    TabItem.settings: GlobalKey<NavigatorState>(),
  };

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    print(state);
    if (state == AppLifecycleState.paused)
      BlocProvider.of<PortfolioCubit>(context).onPaused();
    else if (state == AppLifecycleState.resumed)
      BlocProvider.of<PortfolioCubit>(context).onResumed();
  }

  @override
  void dispose() {
    Hive.close();
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  void showAddScreen(AssetType assetType, String assetCode) {
    if (assetType == AssetType.fiat)
      _navigatorKey.currentState!.push(
        MaterialPageRoute(
          builder: (_) => FiatTransactionScreen(),
        ),
      );
    else {
      BlocProvider.of<TransactionCubit>(context).setTransaction(
          transaction: Transaction.empty(assetCode: assetCode), isNew: true);
      _navigatorKey.currentState!.push(
        MaterialPageRoute(
          builder: (_) => AssetTransactionScreen(),
        ),
      );
    }
  }

  void showFiatDetailsScreen(Fiat fiat) {
    _navigatorKey.currentState!.push(
      MaterialPageRoute(
        builder: (BuildContext context) => FiatDetailsScreen(fiat),
      ),
    );
  }

  void showAssetDetailsScreen(String assetCode) {
    _navigatorKey.currentState!.push(
      MaterialPageRoute(
        builder: (BuildContext context) =>
            AssetDetailsScreen(assetCode, showTransactionDetailsScreen),
      ),
    );
  }

  void showTransactionDetailsScreen(Transaction transaction) {
    BlocProvider.of<TransactionCubit>(context)
        .setTransaction(transaction: transaction, isNew: false);
    _navigatorKey.currentState!.push(
      MaterialPageRoute(
        builder: (_) => AssetTransactionScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, AppSettings>(
      builder: (context, settings) {
        return MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: Locale(settings.appLocale),
          navigatorKey: _navigatorKey,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: settings.systemTheme
              ? ThemeMode.system
              : settings.darkTheme
                  ? ThemeMode.dark
                  : ThemeMode.light,
          home: WillPopScope(
            onWillPop: () async {
              final isFirstRouteInCurrentTab =
                  !await _navigatorKeys[_currentTab]!.currentState!.maybePop();
              if (isFirstRouteInCurrentTab) {
                if (_currentTab != defaultTab) {
                  _selectTab(defaultTab);
                  return false;
                }
              }
              return isFirstRouteInCurrentTab;
            },
            child: Scaffold(
              body: Stack(children: <Widget>[
                _buildOffstageNavigator(TabItem.explore),
                _buildOffstageNavigator(TabItem.portfolio),
                _buildOffstageNavigator(TabItem.settings),
              ]),
              bottomNavigationBar: BottomNavigation(
                currentTab: _currentTab,
                onSelectTab: _selectTab,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
        offstage: _currentTab != tabItem, child: _getChild(tabItem));
  }

  Widget _getChild(TabItem tabItem) {
    Widget screen = Center(
      child: Text('Error'),
    );
    switch (tabItem) {
      case TabItem.explore:
        screen = ExploreScreen(
            showAssetDetailsScreen: showAssetDetailsScreen,
            navigatorKey: _navigatorKeys[tabItem]!);
        break;
      case TabItem.portfolio:
        screen = HomeScreen(
            showAddScreen: showAddScreen,
            showAssetDetailsScreen: showAssetDetailsScreen,
            showFiatDetailsScreen: showFiatDetailsScreen,
            navigatorKey: _navigatorKeys[tabItem]!);
        break;
      case TabItem.settings:
        screen = SettingsScreen(navigatorKey: _navigatorKeys[tabItem]!);
        break;
      default:
        return screen;
    }
    return screen;
  }
}
