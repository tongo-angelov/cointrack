import 'package:cointrack/data/cubit/assets_cubit.dart';
import 'package:cointrack/data/cubit/transaction_cubit.dart';
import 'package:cointrack/data/models/app_settings.dart';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cointrack/data/cubit/settings_cubit.dart';
import 'package:cointrack/utils/hive_constants.dart';
import 'package:cointrack/data/managers/portfolio_manager.dart';
import 'package:cointrack/data/models/account.dart';
import 'package:cointrack/data/models/portfolio.dart';
import 'package:cointrack/data/models/portfolio_settings.dart';
import 'package:cointrack/data/models/fiat.dart';
import 'package:cointrack/data/models/transaction.dart';
import 'package:cointrack/data/models/asset.dart';
import 'package:cointrack/data/enums/enums.dart';
import 'package:cointrack/data/cubit/portfolio_cubit.dart';
import 'package:cointrack/app.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(AppFiatAdapter());
  Hive.registerAdapter(AppSettingsAdapter());
  await Hive.openBox(SETTINGS_BOX);

  Hive.registerAdapter(ExchangePairsAdapter());
  Hive.registerAdapter(BaseAssetAdapter());
  await Hive.openBox<List>(ASSETS_BOX);

  Hive.registerAdapter(SortOrderAdapter());
  Hive.registerAdapter(AssetTypeAdapter());
  Hive.registerAdapter(TransactionTypeAdapter());

  Hive.registerAdapter(PortfolioSettingsAdapter());
  Hive.registerAdapter(AccountAdapter());
  Hive.registerAdapter(AssetAdapter());
  Hive.registerAdapter(FiatAdapter());
  Hive.registerAdapter(PortfolioAdapter());
  Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox(PORTFOLIO_BOX);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<SettingsCubit>(
          create: (context) => SettingsCubit(),
        ),
        BlocProvider<AssetsCubit>(
          create: (context) => AssetsCubit(),
        ),
        BlocProvider<PortfolioCubit>(
          create: (context) => PortfolioCubit(
            HivePortfolioDatabaseManager(),
            BlocProvider.of<AssetsCubit>(context),
          ),
        ),
        BlocProvider<TransactionCubit>(
          create: (context) => TransactionCubit(
            pCubit: BlocProvider.of<PortfolioCubit>(context),
            aCubit: BlocProvider.of<AssetsCubit>(context),
          ),
        ),
      ],
      child: App(),
    ),
  );
}
