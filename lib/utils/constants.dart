import 'package:cointrack/data/models/app_settings.dart';

// settings dropdown values
const List<String> AppLanguages = ['EN', 'BG'];

// settings dropdown values
const List<String> AppFiats = ['USD', 'EUR', 'BGN'];

// on app currency change get rates
final List<AppFiat> appFiatsList = [
  AppFiat(title: 'USD', symbol: '\$', usdToFiat: 1, isStringLeading: true),
  AppFiat(title: 'EUR', symbol: '\€', usdToFiat: 0.8252, isStringLeading: true),
  AppFiat(
      title: 'BGN', symbol: 'лв', usdToFiat: 1.6113, isStringLeading: false),
];

const String HTTP_STRING = 'https://www.cryptocompare.com/';
