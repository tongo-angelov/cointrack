// will be used on supported assets query
const List<String> AppExchanges = ['nomics', 'binance'];

const List<Map<String, String>> AppFilteredExchanges = [
  {
    "symbol": "ETHBTC",
    "baseAsset": "ETH",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "LTCBTC",
    "baseAsset": "LTC",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BNBBTC",
    "baseAsset": "BNB",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "NEOBTC",
    "baseAsset": "NEO",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "QTUMETH",
    "baseAsset": "QTUM",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "EOSETH",
    "baseAsset": "EOS",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "SNTETH",
    "baseAsset": "SNT",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "BNTETH",
    "baseAsset": "BNT",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "GASBTC",
    "baseAsset": "GAS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BNBETH",
    "baseAsset": "BNB",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "BTCUSDT",
    "baseAsset": "BTC",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ETHUSDT",
    "baseAsset": "ETH",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "WTCBTC",
    "baseAsset": "WTC",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "LRCBTC",
    "baseAsset": "LRC",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "LRCETH",
    "baseAsset": "LRC",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "QTUMBTC",
    "baseAsset": "QTUM",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "YOYOBTC",
    "baseAsset": "YOYO",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "OMGBTC",
    "baseAsset": "OMG",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "OMGETH",
    "baseAsset": "OMG",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "ZRXBTC",
    "baseAsset": "ZRX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ZRXETH",
    "baseAsset": "ZRX",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "SNGLSBTC",
    "baseAsset": "SNGLS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BQXBTC",
    "baseAsset": "BQX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BQXETH",
    "baseAsset": "BQX",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "KNCBTC",
    "baseAsset": "KNC",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "KNCETH",
    "baseAsset": "KNC",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "FUNBTC",
    "baseAsset": "FUN",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "FUNETH",
    "baseAsset": "FUN",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "SNMBTC",
    "baseAsset": "SNM",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "NEOETH",
    "baseAsset": "NEO",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "IOTABTC",
    "baseAsset": "IOTA",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "IOTAETH",
    "baseAsset": "IOTA",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "LINKBTC",
    "baseAsset": "LINK",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "LINKETH",
    "baseAsset": "LINK",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "XVGBTC",
    "baseAsset": "XVG",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "XVGETH",
    "baseAsset": "XVG",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "MDABTC",
    "baseAsset": "MDA",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "MTLBTC",
    "baseAsset": "MTL",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "MTLETH",
    "baseAsset": "MTL",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "EOSBTC",
    "baseAsset": "EOS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "SNTBTC",
    "baseAsset": "SNT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ETCETH",
    "baseAsset": "ETC",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "ETCBTC",
    "baseAsset": "ETC",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "MTHBTC",
    "baseAsset": "MTH",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "DNTBTC",
    "baseAsset": "DNT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ZECBTC",
    "baseAsset": "ZEC",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ZECETH",
    "baseAsset": "ZEC",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "BNTBTC",
    "baseAsset": "BNT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ASTBTC",
    "baseAsset": "AST",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "DASHBTC",
    "baseAsset": "DASH",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "DASHETH",
    "baseAsset": "DASH",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "OAXBTC",
    "baseAsset": "OAX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BTGBTC",
    "baseAsset": "BTG",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "EVXBTC",
    "baseAsset": "EVX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "REQBTC",
    "baseAsset": "REQ",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "VIBBTC",
    "baseAsset": "VIB",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "VIBETH",
    "baseAsset": "VIB",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "TRXBTC",
    "baseAsset": "TRX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "TRXETH",
    "baseAsset": "TRX",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "POWRBTC",
    "baseAsset": "POWR",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "POWRETH",
    "baseAsset": "POWR",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "ARKBTC",
    "baseAsset": "ARK",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "XRPBTC",
    "baseAsset": "XRP",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "XRPETH",
    "baseAsset": "XRP",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "ENJBTC",
    "baseAsset": "ENJ",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ENJETH",
    "baseAsset": "ENJ",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "STORJBTC",
    "baseAsset": "STORJ",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BNBUSDT",
    "baseAsset": "BNB",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "KMDBTC",
    "baseAsset": "KMD",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "KMDETH",
    "baseAsset": "KMD",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "RCNBTC",
    "baseAsset": "RCN",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "NULSBTC",
    "baseAsset": "NULS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "RDNBTC",
    "baseAsset": "RDN",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "XMRBTC",
    "baseAsset": "XMR",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "XMRETH",
    "baseAsset": "XMR",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "WTCBNB",
    "baseAsset": "WTC",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "DLTBTC",
    "baseAsset": "DLT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "AMBBTC",
    "baseAsset": "AMB",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BATBTC",
    "baseAsset": "BAT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BATETH",
    "baseAsset": "BAT",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "BATBNB",
    "baseAsset": "BAT",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "GVTBTC",
    "baseAsset": "GVT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "CDTBTC",
    "baseAsset": "CDT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "CDTETH",
    "baseAsset": "CDT",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "GXSBTC",
    "baseAsset": "GXS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "GXSETH",
    "baseAsset": "GXS",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "NEOUSDT",
    "baseAsset": "NEO",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "NEOBNB",
    "baseAsset": "NEO",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "QSPBTC",
    "baseAsset": "QSP",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "QSPETH",
    "baseAsset": "QSP",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "BTSBTC",
    "baseAsset": "BTS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "LSKBTC",
    "baseAsset": "LSK",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "LSKETH",
    "baseAsset": "LSK",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "MANABTC",
    "baseAsset": "MANA",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "MANAETH",
    "baseAsset": "MANA",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "BCDBTC",
    "baseAsset": "BCD",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "IOTABNB",
    "baseAsset": "IOTA",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "ADXBTC",
    "baseAsset": "ADX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ADXETH",
    "baseAsset": "ADX",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "ADABTC",
    "baseAsset": "ADA",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ADAETH",
    "baseAsset": "ADA",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "PPTBTC",
    "baseAsset": "PPT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "XLMBTC",
    "baseAsset": "XLM",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "XLMETH",
    "baseAsset": "XLM",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "XLMBNB",
    "baseAsset": "XLM",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "CNDBTC",
    "baseAsset": "CND",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "WABIBTC",
    "baseAsset": "WABI",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "WABIBNB",
    "baseAsset": "WABI",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "LTCETH",
    "baseAsset": "LTC",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "LTCUSDT",
    "baseAsset": "LTC",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "LTCBNB",
    "baseAsset": "LTC",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "WAVESBTC",
    "baseAsset": "WAVES",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "WAVESETH",
    "baseAsset": "WAVES",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "WAVESBNB",
    "baseAsset": "WAVES",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "GTOBTC",
    "baseAsset": "GTO",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ICXBTC",
    "baseAsset": "ICX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ICXETH",
    "baseAsset": "ICX",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "ICXBNB",
    "baseAsset": "ICX",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "OSTBTC",
    "baseAsset": "OST",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "OSTETH",
    "baseAsset": "OST",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "ELFBTC",
    "baseAsset": "ELF",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ELFETH",
    "baseAsset": "ELF",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "AIONBTC",
    "baseAsset": "AION",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "AIONETH",
    "baseAsset": "AION",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "NEBLBTC",
    "baseAsset": "NEBL",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "NEBLETH",
    "baseAsset": "NEBL",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "BRDBTC",
    "baseAsset": "BRD",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BRDETH",
    "baseAsset": "BRD",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "NAVBTC",
    "baseAsset": "NAV",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "NAVETH",
    "baseAsset": "NAV",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "APPCBTC",
    "baseAsset": "APPC",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "RLCBTC",
    "baseAsset": "RLC",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "RLCETH",
    "baseAsset": "RLC",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "PIVXBTC",
    "baseAsset": "PIVX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "PIVXETH",
    "baseAsset": "PIVX",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "IOSTBTC",
    "baseAsset": "IOST",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "IOSTETH",
    "baseAsset": "IOST",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "STEEMBTC",
    "baseAsset": "STEEM",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "STEEMETH",
    "baseAsset": "STEEM",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "NANOBTC",
    "baseAsset": "NANO",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "NANOETH",
    "baseAsset": "NANO",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "VIABTC",
    "baseAsset": "VIA",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BLZBTC",
    "baseAsset": "BLZ",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BLZETH",
    "baseAsset": "BLZ",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "BLZBNB",
    "baseAsset": "BLZ",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "NCASHETH",
    "baseAsset": "NCASH",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "POABTC",
    "baseAsset": "POA",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ZILBTC",
    "baseAsset": "ZIL",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ZILETH",
    "baseAsset": "ZIL",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "ZILBNB",
    "baseAsset": "ZIL",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "ONTBTC",
    "baseAsset": "ONT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ONTETH",
    "baseAsset": "ONT",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "ONTBNB",
    "baseAsset": "ONT",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "QTUMUSDT",
    "baseAsset": "QTUM",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "XEMBTC",
    "baseAsset": "XEM",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "XEMETH",
    "baseAsset": "XEM",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "WANBTC",
    "baseAsset": "WAN",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "WANETH",
    "baseAsset": "WAN",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "WANBNB",
    "baseAsset": "WAN",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "WPRBTC",
    "baseAsset": "WPR",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "QLCBTC",
    "baseAsset": "QLC",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "QLCETH",
    "baseAsset": "QLC",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "SYSBTC",
    "baseAsset": "SYS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "GRSBTC",
    "baseAsset": "GRS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ADAUSDT",
    "baseAsset": "ADA",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ADABNB",
    "baseAsset": "ADA",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "LOOMBTC",
    "baseAsset": "LOOM",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "LOOMETH",
    "baseAsset": "LOOM",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "XRPUSDT",
    "baseAsset": "XRP",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "REPBTC",
    "baseAsset": "REP",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "REPETH",
    "baseAsset": "REP",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "BTCTUSD",
    "baseAsset": "BTC",
    "quoteAsset": "TUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ETHTUSD",
    "baseAsset": "ETH",
    "quoteAsset": "TUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ZENBTC",
    "baseAsset": "ZEN",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ZENETH",
    "baseAsset": "ZEN",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "ZENBNB",
    "baseAsset": "ZEN",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "SKYBTC",
    "baseAsset": "SKY",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "EOSUSDT",
    "baseAsset": "EOS",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "EOSBNB",
    "baseAsset": "EOS",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "CVCBTC",
    "baseAsset": "CVC",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "CVCETH",
    "baseAsset": "CVC",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "THETABTC",
    "baseAsset": "THETA",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "THETAETH",
    "baseAsset": "THETA",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "THETABNB",
    "baseAsset": "THETA",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "XRPBNB",
    "baseAsset": "XRP",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "TUSDUSDT",
    "baseAsset": "TUSD",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "IOTAUSDT",
    "baseAsset": "IOTA",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "XLMUSDT",
    "baseAsset": "XLM",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "IOTXBTC",
    "baseAsset": "IOTX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "IOTXETH",
    "baseAsset": "IOTX",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "QKCBTC",
    "baseAsset": "QKC",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "QKCETH",
    "baseAsset": "QKC",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "NXSBTC",
    "baseAsset": "NXS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ENJBNB",
    "baseAsset": "ENJ",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "DATABTC",
    "baseAsset": "DATA",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "DATAETH",
    "baseAsset": "DATA",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "ONTUSDT",
    "baseAsset": "ONT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "TRXBNB",
    "baseAsset": "TRX",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "TRXUSDT",
    "baseAsset": "TRX",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ETCUSDT",
    "baseAsset": "ETC",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ETCBNB",
    "baseAsset": "ETC",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "ICXUSDT",
    "baseAsset": "ICX",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SCBTC",
    "baseAsset": "SC",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "SCETH",
    "baseAsset": "SC",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "SCBNB",
    "baseAsset": "SC",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "KEYETH",
    "baseAsset": "KEY",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "NASBTC",
    "baseAsset": "NAS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "NASETH",
    "baseAsset": "NAS",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "MFTETH",
    "baseAsset": "MFT",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "MFTBNB",
    "baseAsset": "MFT",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "DENTETH",
    "baseAsset": "DENT",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "ARDRBTC",
    "baseAsset": "ARDR",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "NULSUSDT",
    "baseAsset": "NULS",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "HOTETH",
    "baseAsset": "HOT",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "VETBTC",
    "baseAsset": "VET",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "VETETH",
    "baseAsset": "VET",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "VETUSDT",
    "baseAsset": "VET",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "VETBNB",
    "baseAsset": "VET",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "DOCKBTC",
    "baseAsset": "DOCK",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "POLYBTC",
    "baseAsset": "POLY",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "GOBTC",
    "baseAsset": "GO",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "PAXUSDT",
    "baseAsset": "PAX",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "RVNBTC",
    "baseAsset": "RVN",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "RVNBNB",
    "baseAsset": "RVN",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "DCRBTC",
    "baseAsset": "DCR",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "MITHBTC",
    "baseAsset": "MITH",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "MITHBNB",
    "baseAsset": "MITH",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "BNBPAX",
    "baseAsset": "BNB",
    "quoteAsset": "PAX",
    "exchange": "binance"
  },
  {
    "symbol": "BTCPAX",
    "baseAsset": "BTC",
    "quoteAsset": "PAX",
    "exchange": "binance"
  },
  {
    "symbol": "ETHPAX",
    "baseAsset": "ETH",
    "quoteAsset": "PAX",
    "exchange": "binance"
  },
  {
    "symbol": "RENBTC",
    "baseAsset": "REN",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BNBTUSD",
    "baseAsset": "BNB",
    "quoteAsset": "TUSD",
    "exchange": "binance"
  },
  {
    "symbol": "XRPTUSD",
    "baseAsset": "XRP",
    "quoteAsset": "TUSD",
    "exchange": "binance"
  },
  {
    "symbol": "EOSTUSD",
    "baseAsset": "EOS",
    "quoteAsset": "TUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BNBUSDC",
    "baseAsset": "BNB",
    "quoteAsset": "USDC",
    "exchange": "binance"
  },
  {
    "symbol": "BTCUSDC",
    "baseAsset": "BTC",
    "quoteAsset": "USDC",
    "exchange": "binance"
  },
  {
    "symbol": "ETHUSDC",
    "baseAsset": "ETH",
    "quoteAsset": "USDC",
    "exchange": "binance"
  },
  {
    "symbol": "XRPUSDC",
    "baseAsset": "XRP",
    "quoteAsset": "USDC",
    "exchange": "binance"
  },
  {
    "symbol": "EOSUSDC",
    "baseAsset": "EOS",
    "quoteAsset": "USDC",
    "exchange": "binance"
  },
  {
    "symbol": "USDCUSDT",
    "baseAsset": "USDC",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ADATUSD",
    "baseAsset": "ADA",
    "quoteAsset": "TUSD",
    "exchange": "binance"
  },
  {
    "symbol": "TRXTUSD",
    "baseAsset": "TRX",
    "quoteAsset": "TUSD",
    "exchange": "binance"
  },
  {
    "symbol": "TRXXRP",
    "baseAsset": "TRX",
    "quoteAsset": "XRP",
    "exchange": "binance"
  },
  {
    "symbol": "LINKUSDT",
    "baseAsset": "LINK",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "LINKTUSD",
    "baseAsset": "LINK",
    "quoteAsset": "TUSD",
    "exchange": "binance"
  },
  {
    "symbol": "LINKUSDC",
    "baseAsset": "LINK",
    "quoteAsset": "USDC",
    "exchange": "binance"
  },
  {
    "symbol": "WAVESUSDT",
    "baseAsset": "WAVES",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "LTCTUSD",
    "baseAsset": "LTC",
    "quoteAsset": "TUSD",
    "exchange": "binance"
  },
  {
    "symbol": "LTCUSDC",
    "baseAsset": "LTC",
    "quoteAsset": "USDC",
    "exchange": "binance"
  },
  {
    "symbol": "TRXUSDC",
    "baseAsset": "TRX",
    "quoteAsset": "USDC",
    "exchange": "binance"
  },
  {
    "symbol": "BTTBNB",
    "baseAsset": "BTT",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "BTTUSDT",
    "baseAsset": "BTT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BTTTUSD",
    "baseAsset": "BTT",
    "quoteAsset": "TUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BTTUSDC",
    "baseAsset": "BTT",
    "quoteAsset": "USDC",
    "exchange": "binance"
  },
  {
    "symbol": "ONGBTC",
    "baseAsset": "ONG",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ONGUSDT",
    "baseAsset": "ONG",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "HOTBNB",
    "baseAsset": "HOT",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "HOTUSDT",
    "baseAsset": "HOT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ZILUSDT",
    "baseAsset": "ZIL",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ZRXUSDT",
    "baseAsset": "ZRX",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "FETBNB",
    "baseAsset": "FET",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "FETBTC",
    "baseAsset": "FET",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "FETUSDT",
    "baseAsset": "FET",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BATUSDT",
    "baseAsset": "BAT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "XMRBNB",
    "baseAsset": "XMR",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "XMRUSDT",
    "baseAsset": "XMR",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ZECBNB",
    "baseAsset": "ZEC",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "ZECUSDT",
    "baseAsset": "ZEC",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ZECUSDC",
    "baseAsset": "ZEC",
    "quoteAsset": "USDC",
    "exchange": "binance"
  },
  {
    "symbol": "IOSTBNB",
    "baseAsset": "IOST",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "IOSTUSDT",
    "baseAsset": "IOST",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "CELRBNB",
    "baseAsset": "CELR",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "CELRBTC",
    "baseAsset": "CELR",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "CELRUSDT",
    "baseAsset": "CELR",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ADAUSDC",
    "baseAsset": "ADA",
    "quoteAsset": "USDC",
    "exchange": "binance"
  },
  {
    "symbol": "NEOUSDC",
    "baseAsset": "NEO",
    "quoteAsset": "USDC",
    "exchange": "binance"
  },
  {
    "symbol": "DASHBNB",
    "baseAsset": "DASH",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "DASHUSDT",
    "baseAsset": "DASH",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "NANOUSDT",
    "baseAsset": "NANO",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "OMGUSDT",
    "baseAsset": "OMG",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "THETAUSDT",
    "baseAsset": "THETA",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ENJUSDT",
    "baseAsset": "ENJ",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "MITHUSDT",
    "baseAsset": "MITH",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "MATICBNB",
    "baseAsset": "MATIC",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "MATICBTC",
    "baseAsset": "MATIC",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "MATICUSDT",
    "baseAsset": "MATIC",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ATOMBNB",
    "baseAsset": "ATOM",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "ATOMBTC",
    "baseAsset": "ATOM",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ATOMUSDT",
    "baseAsset": "ATOM",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ATOMUSDC",
    "baseAsset": "ATOM",
    "quoteAsset": "USDC",
    "exchange": "binance"
  },
  {
    "symbol": "BATUSDC",
    "baseAsset": "BAT",
    "quoteAsset": "USDC",
    "exchange": "binance"
  },
  {
    "symbol": "PHBBTC",
    "baseAsset": "PHB",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "PHBTUSD",
    "baseAsset": "PHB",
    "quoteAsset": "TUSD",
    "exchange": "binance"
  },
  {
    "symbol": "TFUELBTC",
    "baseAsset": "TFUEL",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "TFUELUSDT",
    "baseAsset": "TFUEL",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ONEBNB",
    "baseAsset": "ONE",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "ONEBTC",
    "baseAsset": "ONE",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ONEUSDT",
    "baseAsset": "ONE",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "FTMBNB",
    "baseAsset": "FTM",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "FTMBTC",
    "baseAsset": "FTM",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "FTMUSDT",
    "baseAsset": "FTM",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ALGOBNB",
    "baseAsset": "ALGO",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "ALGOBTC",
    "baseAsset": "ALGO",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ALGOUSDT",
    "baseAsset": "ALGO",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "GTOUSDT",
    "baseAsset": "GTO",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "DOGEBTC",
    "baseAsset": "DOGE",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "DOGEUSDT",
    "baseAsset": "DOGE",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "DUSKBTC",
    "baseAsset": "DUSK",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "DUSKUSDT",
    "baseAsset": "DUSK",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ANKRBNB",
    "baseAsset": "ANKR",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "ANKRBTC",
    "baseAsset": "ANKR",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ANKRUSDT",
    "baseAsset": "ANKR",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "WINBNB",
    "baseAsset": "WIN",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "WINUSDT",
    "baseAsset": "WIN",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "WINUSDC",
    "baseAsset": "WIN",
    "quoteAsset": "USDC",
    "exchange": "binance"
  },
  {
    "symbol": "COSBNB",
    "baseAsset": "COS",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "COSBTC",
    "baseAsset": "COS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "COSUSDT",
    "baseAsset": "COS",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "COCOSBNB",
    "baseAsset": "COCOS",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "COCOSUSDT",
    "baseAsset": "COCOS",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "MTLUSDT",
    "baseAsset": "MTL",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "TOMOBTC",
    "baseAsset": "TOMO",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "TOMOUSDT",
    "baseAsset": "TOMO",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "PERLBNB",
    "baseAsset": "PERL",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "PERLBTC",
    "baseAsset": "PERL",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "PERLUSDT",
    "baseAsset": "PERL",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "DENTUSDT",
    "baseAsset": "DENT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "MFTUSDT",
    "baseAsset": "MFT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "KEYUSDT",
    "baseAsset": "KEY",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "DOCKUSDT",
    "baseAsset": "DOCK",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "WANUSDT",
    "baseAsset": "WAN",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "FUNUSDT",
    "baseAsset": "FUN",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "CVCUSDT",
    "baseAsset": "CVC",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BTTTRX",
    "baseAsset": "BTT",
    "quoteAsset": "TRX",
    "exchange": "binance"
  },
  {
    "symbol": "WINTRX",
    "baseAsset": "WIN",
    "quoteAsset": "TRX",
    "exchange": "binance"
  },
  {
    "symbol": "CHZBNB",
    "baseAsset": "CHZ",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "CHZBTC",
    "baseAsset": "CHZ",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "CHZUSDT",
    "baseAsset": "CHZ",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BANDBNB",
    "baseAsset": "BAND",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "BANDBTC",
    "baseAsset": "BAND",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BANDUSDT",
    "baseAsset": "BAND",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BNBBUSD",
    "baseAsset": "BNB",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BTCBUSD",
    "baseAsset": "BTC",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BUSDUSDT",
    "baseAsset": "BUSD",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BEAMBTC",
    "baseAsset": "BEAM",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BEAMUSDT",
    "baseAsset": "BEAM",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "XTZBNB",
    "baseAsset": "XTZ",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "XTZBTC",
    "baseAsset": "XTZ",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "XTZUSDT",
    "baseAsset": "XTZ",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "RENUSDT",
    "baseAsset": "REN",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "RVNUSDT",
    "baseAsset": "RVN",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "HBARBNB",
    "baseAsset": "HBAR",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "HBARBTC",
    "baseAsset": "HBAR",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "HBARUSDT",
    "baseAsset": "HBAR",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "NKNBTC",
    "baseAsset": "NKN",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "NKNUSDT",
    "baseAsset": "NKN",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "XRPBUSD",
    "baseAsset": "XRP",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ETHBUSD",
    "baseAsset": "ETH",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "LTCBUSD",
    "baseAsset": "LTC",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "LINKBUSD",
    "baseAsset": "LINK",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ETCBUSD",
    "baseAsset": "ETC",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "STXBNB",
    "baseAsset": "STX",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "STXBTC",
    "baseAsset": "STX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "STXUSDT",
    "baseAsset": "STX",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "KAVABNB",
    "baseAsset": "KAVA",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "KAVABTC",
    "baseAsset": "KAVA",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "KAVAUSDT",
    "baseAsset": "KAVA",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BTCNGN",
    "baseAsset": "BTC",
    "quoteAsset": "NGN",
    "exchange": "binance"
  },
  {
    "symbol": "ARPABNB",
    "baseAsset": "ARPA",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "ARPABTC",
    "baseAsset": "ARPA",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ARPAUSDT",
    "baseAsset": "ARPA",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "TRXBUSD",
    "baseAsset": "TRX",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "EOSBUSD",
    "baseAsset": "EOS",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "IOTXUSDT",
    "baseAsset": "IOTX",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "RLCUSDT",
    "baseAsset": "RLC",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "XLMBUSD",
    "baseAsset": "XLM",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ADABUSD",
    "baseAsset": "ADA",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "CTXCBTC",
    "baseAsset": "CTXC",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "CTXCUSDT",
    "baseAsset": "CTXC",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BCHBNB",
    "baseAsset": "BCH",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "BCHBTC",
    "baseAsset": "BCH",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BCHUSDT",
    "baseAsset": "BCH",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BCHUSDC",
    "baseAsset": "BCH",
    "quoteAsset": "USDC",
    "exchange": "binance"
  },
  {
    "symbol": "BCHTUSD",
    "baseAsset": "BCH",
    "quoteAsset": "TUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BCHBUSD",
    "baseAsset": "BCH",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BTCRUB",
    "baseAsset": "BTC",
    "quoteAsset": "RUB",
    "exchange": "binance"
  },
  {
    "symbol": "ETHRUB",
    "baseAsset": "ETH",
    "quoteAsset": "RUB",
    "exchange": "binance"
  },
  {
    "symbol": "XRPRUB",
    "baseAsset": "XRP",
    "quoteAsset": "RUB",
    "exchange": "binance"
  },
  {
    "symbol": "BNBRUB",
    "baseAsset": "BNB",
    "quoteAsset": "RUB",
    "exchange": "binance"
  },
  {
    "symbol": "TROYBNB",
    "baseAsset": "TROY",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "TROYBTC",
    "baseAsset": "TROY",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "TROYUSDT",
    "baseAsset": "TROY",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BUSDRUB",
    "baseAsset": "BUSD",
    "quoteAsset": "RUB",
    "exchange": "binance"
  },
  {
    "symbol": "QTUMBUSD",
    "baseAsset": "QTUM",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "VETBUSD",
    "baseAsset": "VET",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "VITEBTC",
    "baseAsset": "VITE",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "VITEUSDT",
    "baseAsset": "VITE",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "FTTBNB",
    "baseAsset": "FTT",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "FTTBTC",
    "baseAsset": "FTT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "FTTUSDT",
    "baseAsset": "FTT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BTCTRY",
    "baseAsset": "BTC",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "BNBTRY",
    "baseAsset": "BNB",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "BUSDTRY",
    "baseAsset": "BUSD",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "ETHTRY",
    "baseAsset": "ETH",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "XRPTRY",
    "baseAsset": "XRP",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "USDTTRY",
    "baseAsset": "USDT",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "USDTRUB",
    "baseAsset": "USDT",
    "quoteAsset": "RUB",
    "exchange": "binance"
  },
  {
    "symbol": "BTCEUR",
    "baseAsset": "BTC",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "ETHEUR",
    "baseAsset": "ETH",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "BNBEUR",
    "baseAsset": "BNB",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "XRPEUR",
    "baseAsset": "XRP",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "EURBUSD",
    "baseAsset": "EUR",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "EURUSDT",
    "baseAsset": "EUR",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "OGNBNB",
    "baseAsset": "OGN",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "OGNBTC",
    "baseAsset": "OGN",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "OGNUSDT",
    "baseAsset": "OGN",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "DREPBTC",
    "baseAsset": "DREP",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "DREPUSDT",
    "baseAsset": "DREP",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "TCTBTC",
    "baseAsset": "TCT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "TCTUSDT",
    "baseAsset": "TCT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "WRXBNB",
    "baseAsset": "WRX",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "WRXBTC",
    "baseAsset": "WRX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "WRXUSDT",
    "baseAsset": "WRX",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ICXBUSD",
    "baseAsset": "ICX",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BTSUSDT",
    "baseAsset": "BTS",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "LSKUSDT",
    "baseAsset": "LSK",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BNTUSDT",
    "baseAsset": "BNT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BNTBUSD",
    "baseAsset": "BNT",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "LTOBTC",
    "baseAsset": "LTO",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "LTOUSDT",
    "baseAsset": "LTO",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ATOMBUSD",
    "baseAsset": "ATOM",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "DASHBUSD",
    "baseAsset": "DASH",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "NEOBUSD",
    "baseAsset": "NEO",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "WAVESBUSD",
    "baseAsset": "WAVES",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "XTZBUSD",
    "baseAsset": "XTZ",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BATBUSD",
    "baseAsset": "BAT",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ENJBUSD",
    "baseAsset": "ENJ",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "NANOBUSD",
    "baseAsset": "NANO",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ONTBUSD",
    "baseAsset": "ONT",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "RVNBUSD",
    "baseAsset": "RVN",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "AIONUSDT",
    "baseAsset": "AION",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "MBLBNB",
    "baseAsset": "MBL",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "MBLUSDT",
    "baseAsset": "MBL",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "COTIBNB",
    "baseAsset": "COTI",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "COTIBTC",
    "baseAsset": "COTI",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "COTIUSDT",
    "baseAsset": "COTI",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ALGOBUSD",
    "baseAsset": "ALGO",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BTTBUSD",
    "baseAsset": "BTT",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "TOMOBUSD",
    "baseAsset": "TOMO",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "XMRBUSD",
    "baseAsset": "XMR",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ZECBUSD",
    "baseAsset": "ZEC",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "STPTBTC",
    "baseAsset": "STPT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "STPTUSDT",
    "baseAsset": "STPT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "WTCUSDT",
    "baseAsset": "WTC",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "DATABUSD",
    "baseAsset": "DATA",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "DATAUSDT",
    "baseAsset": "DATA",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SOLBNB",
    "baseAsset": "SOL",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "SOLBTC",
    "baseAsset": "SOL",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "SOLUSDT",
    "baseAsset": "SOL",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SOLBUSD",
    "baseAsset": "SOL",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BTCIDRT",
    "baseAsset": "BTC",
    "quoteAsset": "IDRT",
    "exchange": "binance"
  },
  {
    "symbol": "BNBIDRT",
    "baseAsset": "BNB",
    "quoteAsset": "IDRT",
    "exchange": "binance"
  },
  {
    "symbol": "USDTIDRT",
    "baseAsset": "USDT",
    "quoteAsset": "IDRT",
    "exchange": "binance"
  },
  {
    "symbol": "CTSIBTC",
    "baseAsset": "CTSI",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "CTSIUSDT",
    "baseAsset": "CTSI",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "CTSIBNB",
    "baseAsset": "CTSI",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "CTSIBUSD",
    "baseAsset": "CTSI",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "HIVEBTC",
    "baseAsset": "HIVE",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "HIVEUSDT",
    "baseAsset": "HIVE",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "CHRBNB",
    "baseAsset": "CHR",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "CHRBTC",
    "baseAsset": "CHR",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "CHRUSDT",
    "baseAsset": "CHR",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "GXSUSDT",
    "baseAsset": "GXS",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ARDRUSDT",
    "baseAsset": "ARDR",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "HBARBUSD",
    "baseAsset": "HBAR",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "MATICBUSD",
    "baseAsset": "MATIC",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "WRXBUSD",
    "baseAsset": "WRX",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ZILBUSD",
    "baseAsset": "ZIL",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "MDTBTC",
    "baseAsset": "MDT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "MDTUSDT",
    "baseAsset": "MDT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "STMXBNB",
    "baseAsset": "STMX",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "STMXBTC",
    "baseAsset": "STMX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "STMXETH",
    "baseAsset": "STMX",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "STMXUSDT",
    "baseAsset": "STMX",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "KNCBUSD",
    "baseAsset": "KNC",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "KNCUSDT",
    "baseAsset": "KNC",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "REPUSDT",
    "baseAsset": "REP",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "LRCBUSD",
    "baseAsset": "LRC",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "LRCUSDT",
    "baseAsset": "LRC",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "IQBNB",
    "baseAsset": "IQ",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "IQBUSD",
    "baseAsset": "IQ",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "PNTBTC",
    "baseAsset": "PNT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "PNTUSDT",
    "baseAsset": "PNT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BTCGBP",
    "baseAsset": "BTC",
    "quoteAsset": "GBP",
    "exchange": "binance"
  },
  {
    "symbol": "ETHGBP",
    "baseAsset": "ETH",
    "quoteAsset": "GBP",
    "exchange": "binance"
  },
  {
    "symbol": "XRPGBP",
    "baseAsset": "XRP",
    "quoteAsset": "GBP",
    "exchange": "binance"
  },
  {
    "symbol": "BNBGBP",
    "baseAsset": "BNB",
    "quoteAsset": "GBP",
    "exchange": "binance"
  },
  {
    "symbol": "GBPBUSD",
    "baseAsset": "GBP",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "DGBBNB",
    "baseAsset": "DGB",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "DGBBTC",
    "baseAsset": "DGB",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "DGBBUSD",
    "baseAsset": "DGB",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BTCUAH",
    "baseAsset": "BTC",
    "quoteAsset": "UAH",
    "exchange": "binance"
  },
  {
    "symbol": "USDTUAH",
    "baseAsset": "USDT",
    "quoteAsset": "UAH",
    "exchange": "binance"
  },
  {
    "symbol": "COMPBTC",
    "baseAsset": "COMP",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "COMPBUSD",
    "baseAsset": "COMP",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "COMPUSDT",
    "baseAsset": "COMP",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BTCBIDR",
    "baseAsset": "BTC",
    "quoteAsset": "BIDR",
    "exchange": "binance"
  },
  {
    "symbol": "ETHBIDR",
    "baseAsset": "ETH",
    "quoteAsset": "BIDR",
    "exchange": "binance"
  },
  {
    "symbol": "BNBBIDR",
    "baseAsset": "BNB",
    "quoteAsset": "BIDR",
    "exchange": "binance"
  },
  {
    "symbol": "BUSDBIDR",
    "baseAsset": "BUSD",
    "quoteAsset": "BIDR",
    "exchange": "binance"
  },
  {
    "symbol": "USDTBIDR",
    "baseAsset": "USDT",
    "quoteAsset": "BIDR",
    "exchange": "binance"
  },
  {
    "symbol": "SCUSDT",
    "baseAsset": "SC",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ZENUSDT",
    "baseAsset": "ZEN",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SXPBTC",
    "baseAsset": "SXP",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "SXPBNB",
    "baseAsset": "SXP",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "SXPBUSD",
    "baseAsset": "SXP",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "SNXBTC",
    "baseAsset": "SNX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "SNXBNB",
    "baseAsset": "SNX",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "SNXBUSD",
    "baseAsset": "SNX",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "SNXUSDT",
    "baseAsset": "SNX",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "VTHOBNB",
    "baseAsset": "VTHO",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "VTHOUSDT",
    "baseAsset": "VTHO",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "DGBUSDT",
    "baseAsset": "DGB",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "GBPUSDT",
    "baseAsset": "GBP",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SXPUSDT",
    "baseAsset": "SXP",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "IRISBTC",
    "baseAsset": "IRIS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "MKRBNB",
    "baseAsset": "MKR",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "MKRBTC",
    "baseAsset": "MKR",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "MKRUSDT",
    "baseAsset": "MKR",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "MKRBUSD",
    "baseAsset": "MKR",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "RUNEBNB",
    "baseAsset": "RUNE",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "RUNEBTC",
    "baseAsset": "RUNE",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "RUNEBUSD",
    "baseAsset": "RUNE",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "MANABUSD",
    "baseAsset": "MANA",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "DOGEBUSD",
    "baseAsset": "DOGE",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ZRXBUSD",
    "baseAsset": "ZRX",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "DCRUSDT",
    "baseAsset": "DCR",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "STORJUSDT",
    "baseAsset": "STORJ",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BTCAUD",
    "baseAsset": "BTC",
    "quoteAsset": "AUD",
    "exchange": "binance"
  },
  {
    "symbol": "ETHAUD",
    "baseAsset": "ETH",
    "quoteAsset": "AUD",
    "exchange": "binance"
  },
  {
    "symbol": "AUDBUSD",
    "baseAsset": "AUD",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "FIOBNB",
    "baseAsset": "FIO",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "FIOBTC",
    "baseAsset": "FIO",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "FIOBUSD",
    "baseAsset": "FIO",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "AVABNB",
    "baseAsset": "AVA",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "AVABTC",
    "baseAsset": "AVA",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "AVABUSD",
    "baseAsset": "AVA",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "IOTABUSD",
    "baseAsset": "IOTA",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "MANAUSDT",
    "baseAsset": "MANA",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "XRPAUD",
    "baseAsset": "XRP",
    "quoteAsset": "AUD",
    "exchange": "binance"
  },
  {
    "symbol": "BNBAUD",
    "baseAsset": "BNB",
    "quoteAsset": "AUD",
    "exchange": "binance"
  },
  {
    "symbol": "AUDUSDT",
    "baseAsset": "AUD",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BALBTC",
    "baseAsset": "BAL",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BALBUSD",
    "baseAsset": "BAL",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "YFIBNB",
    "baseAsset": "YFI",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "YFIBTC",
    "baseAsset": "YFI",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "YFIBUSD",
    "baseAsset": "YFI",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "YFIUSDT",
    "baseAsset": "YFI",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BALUSDT",
    "baseAsset": "BAL",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BLZUSDT",
    "baseAsset": "BLZ",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "IRISUSDT",
    "baseAsset": "IRIS",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "KMDUSDT",
    "baseAsset": "KMD",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BTCDAI",
    "baseAsset": "BTC",
    "quoteAsset": "DAI",
    "exchange": "binance"
  },
  {
    "symbol": "ETHDAI",
    "baseAsset": "ETH",
    "quoteAsset": "DAI",
    "exchange": "binance"
  },
  {
    "symbol": "BNBDAI",
    "baseAsset": "BNB",
    "quoteAsset": "DAI",
    "exchange": "binance"
  },
  {
    "symbol": "USDTDAI",
    "baseAsset": "USDT",
    "quoteAsset": "DAI",
    "exchange": "binance"
  },
  {
    "symbol": "BUSDDAI",
    "baseAsset": "BUSD",
    "quoteAsset": "DAI",
    "exchange": "binance"
  },
  {
    "symbol": "JSTBNB",
    "baseAsset": "JST",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "JSTBTC",
    "baseAsset": "JST",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "JSTBUSD",
    "baseAsset": "JST",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "JSTUSDT",
    "baseAsset": "JST",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SRMBNB",
    "baseAsset": "SRM",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "SRMBTC",
    "baseAsset": "SRM",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "SRMBUSD",
    "baseAsset": "SRM",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "SRMUSDT",
    "baseAsset": "SRM",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ANTBNB",
    "baseAsset": "ANT",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "ANTBTC",
    "baseAsset": "ANT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ANTBUSD",
    "baseAsset": "ANT",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ANTUSDT",
    "baseAsset": "ANT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "CRVBNB",
    "baseAsset": "CRV",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "CRVBTC",
    "baseAsset": "CRV",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "CRVBUSD",
    "baseAsset": "CRV",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "CRVUSDT",
    "baseAsset": "CRV",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SANDBNB",
    "baseAsset": "SAND",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "SANDBTC",
    "baseAsset": "SAND",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "SANDUSDT",
    "baseAsset": "SAND",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SANDBUSD",
    "baseAsset": "SAND",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "OCEANBNB",
    "baseAsset": "OCEAN",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "OCEANBTC",
    "baseAsset": "OCEAN",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "OCEANBUSD",
    "baseAsset": "OCEAN",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "OCEANUSDT",
    "baseAsset": "OCEAN",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "NMRBNB",
    "baseAsset": "NMR",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "NMRBTC",
    "baseAsset": "NMR",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "NMRBUSD",
    "baseAsset": "NMR",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "NMRUSDT",
    "baseAsset": "NMR",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "DOTBNB",
    "baseAsset": "DOT",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "DOTBTC",
    "baseAsset": "DOT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "DOTBUSD",
    "baseAsset": "DOT",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "DOTUSDT",
    "baseAsset": "DOT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "LUNABNB",
    "baseAsset": "LUNA",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "LUNABTC",
    "baseAsset": "LUNA",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "LUNABUSD",
    "baseAsset": "LUNA",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "LUNAUSDT",
    "baseAsset": "LUNA",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "IDEXBTC",
    "baseAsset": "IDEX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "IDEXBUSD",
    "baseAsset": "IDEX",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "RSRBNB",
    "baseAsset": "RSR",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "RSRBTC",
    "baseAsset": "RSR",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "RSRBUSD",
    "baseAsset": "RSR",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "RSRUSDT",
    "baseAsset": "RSR",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "PAXGBNB",
    "baseAsset": "PAXG",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "PAXGBTC",
    "baseAsset": "PAXG",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "PAXGUSDT",
    "baseAsset": "PAXG",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "WNXMBNB",
    "baseAsset": "WNXM",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "WNXMBTC",
    "baseAsset": "WNXM",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "WNXMUSDT",
    "baseAsset": "WNXM",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "TRBBTC",
    "baseAsset": "TRB",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "TRBBUSD",
    "baseAsset": "TRB",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "TRBUSDT",
    "baseAsset": "TRB",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "DOTBIDR",
    "baseAsset": "DOT",
    "quoteAsset": "BIDR",
    "exchange": "binance"
  },
  {
    "symbol": "LINKAUD",
    "baseAsset": "LINK",
    "quoteAsset": "AUD",
    "exchange": "binance"
  },
  {
    "symbol": "SXPAUD",
    "baseAsset": "SXP",
    "quoteAsset": "AUD",
    "exchange": "binance"
  },
  {
    "symbol": "BZRXBTC",
    "baseAsset": "BZRX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BZRXBUSD",
    "baseAsset": "BZRX",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BZRXUSDT",
    "baseAsset": "BZRX",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "WBTCBTC",
    "baseAsset": "WBTC",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "WBTCETH",
    "baseAsset": "WBTC",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "SUSHIBNB",
    "baseAsset": "SUSHI",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "SUSHIBTC",
    "baseAsset": "SUSHI",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "SUSHIBUSD",
    "baseAsset": "SUSHI",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "SUSHIUSDT",
    "baseAsset": "SUSHI",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "YFIIBNB",
    "baseAsset": "YFII",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "YFIIBTC",
    "baseAsset": "YFII",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "YFIIBUSD",
    "baseAsset": "YFII",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "YFIIUSDT",
    "baseAsset": "YFII",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "KSMBNB",
    "baseAsset": "KSM",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "KSMBTC",
    "baseAsset": "KSM",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "KSMBUSD",
    "baseAsset": "KSM",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "KSMUSDT",
    "baseAsset": "KSM",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "EGLDBNB",
    "baseAsset": "EGLD",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "EGLDBTC",
    "baseAsset": "EGLD",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "EGLDBUSD",
    "baseAsset": "EGLD",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "EGLDUSDT",
    "baseAsset": "EGLD",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "DIABNB",
    "baseAsset": "DIA",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "DIABTC",
    "baseAsset": "DIA",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "DIABUSD",
    "baseAsset": "DIA",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "DIAUSDT",
    "baseAsset": "DIA",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "RUNEUSDT",
    "baseAsset": "RUNE",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "FIOUSDT",
    "baseAsset": "FIO",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "UMABTC",
    "baseAsset": "UMA",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "UMAUSDT",
    "baseAsset": "UMA",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "LINKTRY",
    "baseAsset": "LINK",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "USDTNGN",
    "baseAsset": "USDT",
    "quoteAsset": "NGN",
    "exchange": "binance"
  },
  {
    "symbol": "BELBNB",
    "baseAsset": "BEL",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "BELBTC",
    "baseAsset": "BEL",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BELBUSD",
    "baseAsset": "BEL",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BELUSDT",
    "baseAsset": "BEL",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "WINGBNB",
    "baseAsset": "WING",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "WINGBTC",
    "baseAsset": "WING",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "SWRVBNB",
    "baseAsset": "SWRV",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "SWRVBUSD",
    "baseAsset": "SWRV",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "WINGBUSD",
    "baseAsset": "WING",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "WINGUSDT",
    "baseAsset": "WING",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SXPEUR",
    "baseAsset": "SXP",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "CREAMBNB",
    "baseAsset": "CREAM",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "CREAMBUSD",
    "baseAsset": "CREAM",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "UNIBNB",
    "baseAsset": "UNI",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "UNIBTC",
    "baseAsset": "UNI",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "UNIBUSD",
    "baseAsset": "UNI",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "UNIUSDT",
    "baseAsset": "UNI",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "NBSBTC",
    "baseAsset": "NBS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "NBSUSDT",
    "baseAsset": "NBS",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "OXTBTC",
    "baseAsset": "OXT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "OXTUSDT",
    "baseAsset": "OXT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SUNBTC",
    "baseAsset": "SUN",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "SUNUSDT",
    "baseAsset": "SUN",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "AVAXBNB",
    "baseAsset": "AVAX",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "AVAXBTC",
    "baseAsset": "AVAX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "AVAXBUSD",
    "baseAsset": "AVAX",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "AVAXUSDT",
    "baseAsset": "AVAX",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "HNTBTC",
    "baseAsset": "HNT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "HNTUSDT",
    "baseAsset": "HNT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BAKEBNB",
    "baseAsset": "BAKE",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "BURGERBNB",
    "baseAsset": "BURGER",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "SXPBIDR",
    "baseAsset": "SXP",
    "quoteAsset": "BIDR",
    "exchange": "binance"
  },
  {
    "symbol": "FLMBTC",
    "baseAsset": "FLM",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "FLMBUSD",
    "baseAsset": "FLM",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "FLMUSDT",
    "baseAsset": "FLM",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SCRTBTC",
    "baseAsset": "SCRT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "SCRTETH",
    "baseAsset": "SCRT",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "CAKEBNB",
    "baseAsset": "CAKE",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "CAKEBUSD",
    "baseAsset": "CAKE",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "SPARTABNB",
    "baseAsset": "SPARTA",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "ORNBTC",
    "baseAsset": "ORN",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ORNUSDT",
    "baseAsset": "ORN",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SXPTRY",
    "baseAsset": "SXP",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "UTKBTC",
    "baseAsset": "UTK",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "UTKUSDT",
    "baseAsset": "UTK",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "XVSBNB",
    "baseAsset": "XVS",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "XVSBTC",
    "baseAsset": "XVS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "XVSBUSD",
    "baseAsset": "XVS",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "XVSUSDT",
    "baseAsset": "XVS",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ALPHABNB",
    "baseAsset": "ALPHA",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "ALPHABTC",
    "baseAsset": "ALPHA",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ALPHABUSD",
    "baseAsset": "ALPHA",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ALPHAUSDT",
    "baseAsset": "ALPHA",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "VIDTBTC",
    "baseAsset": "VIDT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "VIDTBUSD",
    "baseAsset": "VIDT",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "AAVEBNB",
    "baseAsset": "AAVE",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "BTCBRL",
    "baseAsset": "BTC",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "USDTBRL",
    "baseAsset": "USDT",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "AAVEBTC",
    "baseAsset": "AAVE",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "AAVEETH",
    "baseAsset": "AAVE",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "AAVEBUSD",
    "baseAsset": "AAVE",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "AAVEUSDT",
    "baseAsset": "AAVE",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "NEARBNB",
    "baseAsset": "NEAR",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "NEARBTC",
    "baseAsset": "NEAR",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "NEARBUSD",
    "baseAsset": "NEAR",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "NEARUSDT",
    "baseAsset": "NEAR",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SXPGBP",
    "baseAsset": "SXP",
    "quoteAsset": "GBP",
    "exchange": "binance"
  },
  {
    "symbol": "FILBNB",
    "baseAsset": "FIL",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "FILBTC",
    "baseAsset": "FIL",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "FILBUSD",
    "baseAsset": "FIL",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "FILUSDT",
    "baseAsset": "FIL",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "INJBNB",
    "baseAsset": "INJ",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "INJBTC",
    "baseAsset": "INJ",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "INJBUSD",
    "baseAsset": "INJ",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "INJUSDT",
    "baseAsset": "INJ",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "AERGOBTC",
    "baseAsset": "AERGO",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "AERGOBUSD",
    "baseAsset": "AERGO",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "LINKEUR",
    "baseAsset": "LINK",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "ONEBUSD",
    "baseAsset": "ONE",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "AUDIOBTC",
    "baseAsset": "AUDIO",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "AUDIOBUSD",
    "baseAsset": "AUDIO",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "AUDIOUSDT",
    "baseAsset": "AUDIO",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "CTKBNB",
    "baseAsset": "CTK",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "CTKBTC",
    "baseAsset": "CTK",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "CTKBUSD",
    "baseAsset": "CTK",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "CTKUSDT",
    "baseAsset": "CTK",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ETHBRL",
    "baseAsset": "ETH",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "DOTEUR",
    "baseAsset": "DOT",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "AKROBTC",
    "baseAsset": "AKRO",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "AKROUSDT",
    "baseAsset": "AKRO",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "KP3RBNB",
    "baseAsset": "KP3R",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "KP3RBUSD",
    "baseAsset": "KP3R",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "AXSBNB",
    "baseAsset": "AXS",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "AXSBTC",
    "baseAsset": "AXS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "AXSBUSD",
    "baseAsset": "AXS",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "AXSUSDT",
    "baseAsset": "AXS",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "HARDBNB",
    "baseAsset": "HARD",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "HARDBTC",
    "baseAsset": "HARD",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "HARDBUSD",
    "baseAsset": "HARD",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "HARDUSDT",
    "baseAsset": "HARD",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BNBBRL",
    "baseAsset": "BNB",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "LTCEUR",
    "baseAsset": "LTC",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "RENBTCBTC",
    "baseAsset": "RENBTC",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "RENBTCETH",
    "baseAsset": "RENBTC",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "DNTBUSD",
    "baseAsset": "DNT",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "DNTUSDT",
    "baseAsset": "DNT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SLPETH",
    "baseAsset": "SLP",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "ADAEUR",
    "baseAsset": "ADA",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "CVPETH",
    "baseAsset": "CVP",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "CVPBUSD",
    "baseAsset": "CVP",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "STRAXBTC",
    "baseAsset": "STRAX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "STRAXETH",
    "baseAsset": "STRAX",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "STRAXBUSD",
    "baseAsset": "STRAX",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "STRAXUSDT",
    "baseAsset": "STRAX",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "FORBTC",
    "baseAsset": "FOR",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "FORBUSD",
    "baseAsset": "FOR",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "UNFIBNB",
    "baseAsset": "UNFI",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "UNFIBTC",
    "baseAsset": "UNFI",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "UNFIBUSD",
    "baseAsset": "UNFI",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "UNFIUSDT",
    "baseAsset": "UNFI",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "FRONTETH",
    "baseAsset": "FRONT",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "FRONTBUSD",
    "baseAsset": "FRONT",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BCHABUSD",
    "baseAsset": "BCHA",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ROSEBTC",
    "baseAsset": "ROSE",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ROSEBUSD",
    "baseAsset": "ROSE",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ROSEUSDT",
    "baseAsset": "ROSE",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "AVAXTRY",
    "baseAsset": "AVAX",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "BUSDBRL",
    "baseAsset": "BUSD",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "AVAUSDT",
    "baseAsset": "AVA",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SYSBUSD",
    "baseAsset": "SYS",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "XEMUSDT",
    "baseAsset": "XEM",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "HEGICETH",
    "baseAsset": "HEGIC",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "HEGICBUSD",
    "baseAsset": "HEGIC",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "PROMBNB",
    "baseAsset": "PROM",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "PROMBUSD",
    "baseAsset": "PROM",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "XRPBRL",
    "baseAsset": "XRP",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "SKLBTC",
    "baseAsset": "SKL",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "SKLBUSD",
    "baseAsset": "SKL",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "SKLUSDT",
    "baseAsset": "SKL",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BCHEUR",
    "baseAsset": "BCH",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "YFIEUR",
    "baseAsset": "YFI",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "ZILBIDR",
    "baseAsset": "ZIL",
    "quoteAsset": "BIDR",
    "exchange": "binance"
  },
  {
    "symbol": "SUSDBTC",
    "baseAsset": "SUSD",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "SUSDUSDT",
    "baseAsset": "SUSD",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "COVERETH",
    "baseAsset": "COVER",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "COVERBUSD",
    "baseAsset": "COVER",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "GLMBTC",
    "baseAsset": "GLM",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "GLMETH",
    "baseAsset": "GLM",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "GHSTETH",
    "baseAsset": "GHST",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "GHSTBUSD",
    "baseAsset": "GHST",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "LINKBRL",
    "baseAsset": "LINK",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "LTCRUB",
    "baseAsset": "LTC",
    "quoteAsset": "RUB",
    "exchange": "binance"
  },
  {
    "symbol": "TRXTRY",
    "baseAsset": "TRX",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "XLMEUR",
    "baseAsset": "XLM",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "DFETH",
    "baseAsset": "DF",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "DFBUSD",
    "baseAsset": "DF",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "GRTBTC",
    "baseAsset": "GRT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "GRTETH",
    "baseAsset": "GRT",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "GRTUSDT",
    "baseAsset": "GRT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "JUVBTC",
    "baseAsset": "JUV",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "JUVBUSD",
    "baseAsset": "JUV",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "JUVUSDT",
    "baseAsset": "JUV",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "PSGBTC",
    "baseAsset": "PSG",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "PSGBUSD",
    "baseAsset": "PSG",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "PSGUSDT",
    "baseAsset": "PSG",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BUSDBVND",
    "baseAsset": "BUSD",
    "quoteAsset": "BVND",
    "exchange": "binance"
  },
  {
    "symbol": "USDTBVND",
    "baseAsset": "USDT",
    "quoteAsset": "BVND",
    "exchange": "binance"
  },
  {
    "symbol": "1INCHBTC",
    "baseAsset": "1INCH",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "1INCHUSDT",
    "baseAsset": "1INCH",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "REEFBTC",
    "baseAsset": "REEF",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "REEFUSDT",
    "baseAsset": "REEF",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "OGBTC",
    "baseAsset": "OG",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "OGUSDT",
    "baseAsset": "OG",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ATMBTC",
    "baseAsset": "ATM",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ATMUSDT",
    "baseAsset": "ATM",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ASRBTC",
    "baseAsset": "ASR",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ASRUSDT",
    "baseAsset": "ASR",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "CELOBTC",
    "baseAsset": "CELO",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "CELOUSDT",
    "baseAsset": "CELO",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "RIFBTC",
    "baseAsset": "RIF",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "RIFUSDT",
    "baseAsset": "RIF",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "CHZTRY",
    "baseAsset": "CHZ",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "XLMTRY",
    "baseAsset": "XLM",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "LINKGBP",
    "baseAsset": "LINK",
    "quoteAsset": "GBP",
    "exchange": "binance"
  },
  {
    "symbol": "GRTEUR",
    "baseAsset": "GRT",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "BTCSTBTC",
    "baseAsset": "BTCST",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BTCSTBUSD",
    "baseAsset": "BTCST",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BTCSTUSDT",
    "baseAsset": "BTCST",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "TRUBTC",
    "baseAsset": "TRU",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "TRUBUSD",
    "baseAsset": "TRU",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "TRUUSDT",
    "baseAsset": "TRU",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "DEXEETH",
    "baseAsset": "DEXE",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "DEXEBUSD",
    "baseAsset": "DEXE",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "EOSEUR",
    "baseAsset": "EOS",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "LTCBRL",
    "baseAsset": "LTC",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "USDCBUSD",
    "baseAsset": "USDC",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "TUSDBUSD",
    "baseAsset": "TUSD",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "PAXBUSD",
    "baseAsset": "PAX",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "CKBBTC",
    "baseAsset": "CKB",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "CKBBUSD",
    "baseAsset": "CKB",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "CKBUSDT",
    "baseAsset": "CKB",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "TWTBTC",
    "baseAsset": "TWT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "TWTBUSD",
    "baseAsset": "TWT",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "TWTUSDT",
    "baseAsset": "TWT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "FIROBTC",
    "baseAsset": "FIRO",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "FIROETH",
    "baseAsset": "FIRO",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "FIROUSDT",
    "baseAsset": "FIRO",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BETHETH",
    "baseAsset": "BETH",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "DOGEEUR",
    "baseAsset": "DOGE",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "DOGETRY",
    "baseAsset": "DOGE",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "DOGEAUD",
    "baseAsset": "DOGE",
    "quoteAsset": "AUD",
    "exchange": "binance"
  },
  {
    "symbol": "DOGEBRL",
    "baseAsset": "DOGE",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "PROSETH",
    "baseAsset": "PROS",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "LITBTC",
    "baseAsset": "LIT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "LITBUSD",
    "baseAsset": "LIT",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "LITUSDT",
    "baseAsset": "LIT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BTCVAI",
    "baseAsset": "BTC",
    "quoteAsset": "VAI",
    "exchange": "binance"
  },
  {
    "symbol": "BUSDVAI",
    "baseAsset": "BUSD",
    "quoteAsset": "VAI",
    "exchange": "binance"
  },
  {
    "symbol": "SFPBTC",
    "baseAsset": "SFP",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "SFPBUSD",
    "baseAsset": "SFP",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "SFPUSDT",
    "baseAsset": "SFP",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "DOGEGBP",
    "baseAsset": "DOGE",
    "quoteAsset": "GBP",
    "exchange": "binance"
  },
  {
    "symbol": "DOTTRY",
    "baseAsset": "DOT",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "FXSBTC",
    "baseAsset": "FXS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "FXSBUSD",
    "baseAsset": "FXS",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "DODOBTC",
    "baseAsset": "DODO",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "DODOBUSD",
    "baseAsset": "DODO",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "DODOUSDT",
    "baseAsset": "DODO",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "FRONTBTC",
    "baseAsset": "FRONT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "CAKEBTC",
    "baseAsset": "CAKE",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "CAKEUSDT",
    "baseAsset": "CAKE",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BAKEBUSD",
    "baseAsset": "BAKE",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "UFTETH",
    "baseAsset": "UFT",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "UFTBUSD",
    "baseAsset": "UFT",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "1INCHBUSD",
    "baseAsset": "1INCH",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BANDBUSD",
    "baseAsset": "BAND",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "GRTBUSD",
    "baseAsset": "GRT",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "IOSTBUSD",
    "baseAsset": "IOST",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "OMGBUSD",
    "baseAsset": "OMG",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "REEFBUSD",
    "baseAsset": "REEF",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ACMBTC",
    "baseAsset": "ACM",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ACMBUSD",
    "baseAsset": "ACM",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ACMUSDT",
    "baseAsset": "ACM",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "AUCTIONBTC",
    "baseAsset": "AUCTION",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "AUCTIONBUSD",
    "baseAsset": "AUCTION",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "PHABTC",
    "baseAsset": "PHA",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "PHABUSD",
    "baseAsset": "PHA",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "DOTGBP",
    "baseAsset": "DOT",
    "quoteAsset": "GBP",
    "exchange": "binance"
  },
  {
    "symbol": "ADATRY",
    "baseAsset": "ADA",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "ADABRL",
    "baseAsset": "ADA",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "ADAGBP",
    "baseAsset": "ADA",
    "quoteAsset": "GBP",
    "exchange": "binance"
  },
  {
    "symbol": "TVKBTC",
    "baseAsset": "TVK",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "TVKBUSD",
    "baseAsset": "TVK",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BADGERBTC",
    "baseAsset": "BADGER",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BADGERBUSD",
    "baseAsset": "BADGER",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BADGERUSDT",
    "baseAsset": "BADGER",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "FISBTC",
    "baseAsset": "FIS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "FISBUSD",
    "baseAsset": "FIS",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "FISUSDT",
    "baseAsset": "FIS",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "DOTBRL",
    "baseAsset": "DOT",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "ADAAUD",
    "baseAsset": "ADA",
    "quoteAsset": "AUD",
    "exchange": "binance"
  },
  {
    "symbol": "HOTTRY",
    "baseAsset": "HOT",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "EGLDEUR",
    "baseAsset": "EGLD",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "OMBTC",
    "baseAsset": "OM",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "OMBUSD",
    "baseAsset": "OM",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "OMUSDT",
    "baseAsset": "OM",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "PONDBTC",
    "baseAsset": "POND",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "PONDBUSD",
    "baseAsset": "POND",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "PONDUSDT",
    "baseAsset": "POND",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "DEGOBTC",
    "baseAsset": "DEGO",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "DEGOBUSD",
    "baseAsset": "DEGO",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "DEGOUSDT",
    "baseAsset": "DEGO",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "AVAXEUR",
    "baseAsset": "AVAX",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "BTTTRY",
    "baseAsset": "BTT",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "CHZBRL",
    "baseAsset": "CHZ",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "UNIEUR",
    "baseAsset": "UNI",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "ALICEBTC",
    "baseAsset": "ALICE",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ALICEBUSD",
    "baseAsset": "ALICE",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ALICEUSDT",
    "baseAsset": "ALICE",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "CHZBUSD",
    "baseAsset": "CHZ",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "CHZEUR",
    "baseAsset": "CHZ",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "CHZGBP",
    "baseAsset": "CHZ",
    "quoteAsset": "GBP",
    "exchange": "binance"
  },
  {
    "symbol": "BIFIBNB",
    "baseAsset": "BIFI",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "BIFIBUSD",
    "baseAsset": "BIFI",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "LINABTC",
    "baseAsset": "LINA",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "LINABUSD",
    "baseAsset": "LINA",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "LINAUSDT",
    "baseAsset": "LINA",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ADARUB",
    "baseAsset": "ADA",
    "quoteAsset": "RUB",
    "exchange": "binance"
  },
  {
    "symbol": "ENJBRL",
    "baseAsset": "ENJ",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "ENJEUR",
    "baseAsset": "ENJ",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "MATICEUR",
    "baseAsset": "MATIC",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "NEOTRY",
    "baseAsset": "NEO",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "PERPBTC",
    "baseAsset": "PERP",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "PERPBUSD",
    "baseAsset": "PERP",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "PERPUSDT",
    "baseAsset": "PERP",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "RAMPBTC",
    "baseAsset": "RAMP",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "RAMPBUSD",
    "baseAsset": "RAMP",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "RAMPUSDT",
    "baseAsset": "RAMP",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SUPERBTC",
    "baseAsset": "SUPER",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "SUPERBUSD",
    "baseAsset": "SUPER",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "SUPERUSDT",
    "baseAsset": "SUPER",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "CFXBTC",
    "baseAsset": "CFX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "CFXBUSD",
    "baseAsset": "CFX",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "CFXUSDT",
    "baseAsset": "CFX",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ENJGBP",
    "baseAsset": "ENJ",
    "quoteAsset": "GBP",
    "exchange": "binance"
  },
  {
    "symbol": "EOSTRY",
    "baseAsset": "EOS",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "LTCGBP",
    "baseAsset": "LTC",
    "quoteAsset": "GBP",
    "exchange": "binance"
  },
  {
    "symbol": "LUNAEUR",
    "baseAsset": "LUNA",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "RVNTRY",
    "baseAsset": "RVN",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "THETAEUR",
    "baseAsset": "THETA",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "XVGBUSD",
    "baseAsset": "XVG",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "EPSBTC",
    "baseAsset": "EPS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "EPSBUSD",
    "baseAsset": "EPS",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "EPSUSDT",
    "baseAsset": "EPS",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "AUTOBTC",
    "baseAsset": "AUTO",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "AUTOBUSD",
    "baseAsset": "AUTO",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "AUTOUSDT",
    "baseAsset": "AUTO",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "TKOBTC",
    "baseAsset": "TKO",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "TKOBIDR",
    "baseAsset": "TKO",
    "quoteAsset": "BIDR",
    "exchange": "binance"
  },
  {
    "symbol": "TKOBUSD",
    "baseAsset": "TKO",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "TKOUSDT",
    "baseAsset": "TKO",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "PUNDIXETH",
    "baseAsset": "PUNDIX",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "PUNDIXUSDT",
    "baseAsset": "PUNDIX",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BTTBRL",
    "baseAsset": "BTT",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "BTTEUR",
    "baseAsset": "BTT",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "HOTEUR",
    "baseAsset": "HOT",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "WINEUR",
    "baseAsset": "WIN",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "TLMBTC",
    "baseAsset": "TLM",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "TLMBUSD",
    "baseAsset": "TLM",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "TLMUSDT",
    "baseAsset": "TLM",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BTGBUSD",
    "baseAsset": "BTG",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BTGUSDT",
    "baseAsset": "BTG",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "HOTBUSD",
    "baseAsset": "HOT",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BNBUAH",
    "baseAsset": "BNB",
    "quoteAsset": "UAH",
    "exchange": "binance"
  },
  {
    "symbol": "ONTTRY",
    "baseAsset": "ONT",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "VETEUR",
    "baseAsset": "VET",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "VETGBP",
    "baseAsset": "VET",
    "quoteAsset": "GBP",
    "exchange": "binance"
  },
  {
    "symbol": "WINBRL",
    "baseAsset": "WIN",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "MIRBTC",
    "baseAsset": "MIR",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "MIRBUSD",
    "baseAsset": "MIR",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "MIRUSDT",
    "baseAsset": "MIR",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BARBTC",
    "baseAsset": "BAR",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "BARBUSD",
    "baseAsset": "BAR",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BARUSDT",
    "baseAsset": "BAR",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "FORTHBTC",
    "baseAsset": "FORTH",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "FORTHBUSD",
    "baseAsset": "FORTH",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "FORTHUSDT",
    "baseAsset": "FORTH",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "CAKEGBP",
    "baseAsset": "CAKE",
    "quoteAsset": "GBP",
    "exchange": "binance"
  },
  {
    "symbol": "DOGERUB",
    "baseAsset": "DOGE",
    "quoteAsset": "RUB",
    "exchange": "binance"
  },
  {
    "symbol": "HOTBRL",
    "baseAsset": "HOT",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "WRXEUR",
    "baseAsset": "WRX",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "EZBTC",
    "baseAsset": "EZ",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "EZETH",
    "baseAsset": "EZ",
    "quoteAsset": "ETH",
    "exchange": "binance"
  },
  {
    "symbol": "BAKEUSDT",
    "baseAsset": "BAKE",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "BURGERBUSD",
    "baseAsset": "BURGER",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BURGERUSDT",
    "baseAsset": "BURGER",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SLPBUSD",
    "baseAsset": "SLP",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "SLPUSDT",
    "baseAsset": "SLP",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "TRXAUD",
    "baseAsset": "TRX",
    "quoteAsset": "AUD",
    "exchange": "binance"
  },
  {
    "symbol": "TRXEUR",
    "baseAsset": "TRX",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "VETTRY",
    "baseAsset": "VET",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "SHIBUSDT",
    "baseAsset": "SHIB",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SHIBBUSD",
    "baseAsset": "SHIB",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ICPBTC",
    "baseAsset": "ICP",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ICPBNB",
    "baseAsset": "ICP",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "ICPBUSD",
    "baseAsset": "ICP",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ICPUSDT",
    "baseAsset": "ICP",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "SHIBEUR",
    "baseAsset": "SHIB",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "SHIBRUB",
    "baseAsset": "SHIB",
    "quoteAsset": "RUB",
    "exchange": "binance"
  },
  {
    "symbol": "ETCEUR",
    "baseAsset": "ETC",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "ETCBRL",
    "baseAsset": "ETC",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "DOGEBIDR",
    "baseAsset": "DOGE",
    "quoteAsset": "BIDR",
    "exchange": "binance"
  },
  {
    "symbol": "ARBTC",
    "baseAsset": "AR",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ARBNB",
    "baseAsset": "AR",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "ARBUSD",
    "baseAsset": "AR",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ARUSDT",
    "baseAsset": "AR",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "POLSBTC",
    "baseAsset": "POLS",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "POLSBNB",
    "baseAsset": "POLS",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "POLSBUSD",
    "baseAsset": "POLS",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "POLSUSDT",
    "baseAsset": "POLS",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "MDXBTC",
    "baseAsset": "MDX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "MDXBNB",
    "baseAsset": "MDX",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "MDXBUSD",
    "baseAsset": "MDX",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "MDXUSDT",
    "baseAsset": "MDX",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "MASKBNB",
    "baseAsset": "MASK",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "MASKBUSD",
    "baseAsset": "MASK",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "MASKUSDT",
    "baseAsset": "MASK",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "LPTBTC",
    "baseAsset": "LPT",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "LPTBNB",
    "baseAsset": "LPT",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "LPTBUSD",
    "baseAsset": "LPT",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "LPTUSDT",
    "baseAsset": "LPT",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "ETHUAH",
    "baseAsset": "ETH",
    "quoteAsset": "UAH",
    "exchange": "binance"
  },
  {
    "symbol": "MATICBRL",
    "baseAsset": "MATIC",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "SOLEUR",
    "baseAsset": "SOL",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "SHIBBRL",
    "baseAsset": "SHIB",
    "quoteAsset": "BRL",
    "exchange": "binance"
  },
  {
    "symbol": "AGIXBTC",
    "baseAsset": "AGIX",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ICPEUR",
    "baseAsset": "ICP",
    "quoteAsset": "EUR",
    "exchange": "binance"
  },
  {
    "symbol": "MATICGBP",
    "baseAsset": "MATIC",
    "quoteAsset": "GBP",
    "exchange": "binance"
  },
  {
    "symbol": "SHIBTRY",
    "baseAsset": "SHIB",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "MATICBIDR",
    "baseAsset": "MATIC",
    "quoteAsset": "BIDR",
    "exchange": "binance"
  },
  {
    "symbol": "MATICRUB",
    "baseAsset": "MATIC",
    "quoteAsset": "RUB",
    "exchange": "binance"
  },
  {
    "symbol": "NUBTC",
    "baseAsset": "NU",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "NUBNB",
    "baseAsset": "NU",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "NUBUSD",
    "baseAsset": "NU",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "NUUSDT",
    "baseAsset": "NU",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "XVGUSDT",
    "baseAsset": "XVG",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "RLCBUSD",
    "baseAsset": "RLC",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "CELRBUSD",
    "baseAsset": "CELR",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ATMBUSD",
    "baseAsset": "ATM",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ZENBUSD",
    "baseAsset": "ZEN",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "FTMBUSD",
    "baseAsset": "FTM",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "THETABUSD",
    "baseAsset": "THETA",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "WINBUSD",
    "baseAsset": "WIN",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "KAVABUSD",
    "baseAsset": "KAVA",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "XEMBUSD",
    "baseAsset": "XEM",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ATABTC",
    "baseAsset": "ATA",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "ATABNB",
    "baseAsset": "ATA",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "ATABUSD",
    "baseAsset": "ATA",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "ATAUSDT",
    "baseAsset": "ATA",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "GTCBTC",
    "baseAsset": "GTC",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "GTCBNB",
    "baseAsset": "GTC",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "GTCBUSD",
    "baseAsset": "GTC",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "GTCUSDT",
    "baseAsset": "GTC",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "TORNBTC",
    "baseAsset": "TORN",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "TORNBNB",
    "baseAsset": "TORN",
    "quoteAsset": "BNB",
    "exchange": "binance"
  },
  {
    "symbol": "TORNBUSD",
    "baseAsset": "TORN",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "TORNUSDT",
    "baseAsset": "TORN",
    "quoteAsset": "USDT",
    "exchange": "binance"
  },
  {
    "symbol": "MATICTRY",
    "baseAsset": "MATIC",
    "quoteAsset": "TRY",
    "exchange": "binance"
  },
  {
    "symbol": "ETCGBP",
    "baseAsset": "ETC",
    "quoteAsset": "GBP",
    "exchange": "binance"
  },
  {
    "symbol": "SOLGBP",
    "baseAsset": "SOL",
    "quoteAsset": "GBP",
    "exchange": "binance"
  },
  {
    "symbol": "BAKEBTC",
    "baseAsset": "BAKE",
    "quoteAsset": "BTC",
    "exchange": "binance"
  },
  {
    "symbol": "COTIBUSD",
    "baseAsset": "COTI",
    "quoteAsset": "BUSD",
    "exchange": "binance"
  },
  {
    "symbol": "BTCUSD",
    "baseAsset": "BTC",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "ETHUSD",
    "baseAsset": "ETH",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "USDTUSD",
    "baseAsset": "USDT",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "BNBUSD",
    "baseAsset": "BNB",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "ADAUSD",
    "baseAsset": "ADA",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "HEXUSD",
    "baseAsset": "HEX",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "DOGEUSD",
    "baseAsset": "DOGE",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "XRPUSD",
    "baseAsset": "XRP",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "USDCUSD",
    "baseAsset": "USDC",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "DOTUSD",
    "baseAsset": "DOT",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "UNIUSD",
    "baseAsset": "UNI",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "BCHUSD",
    "baseAsset": "BCH",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "LTCUSD",
    "baseAsset": "LTC",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "SOLUSD",
    "baseAsset": "SOL",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "LINKUSD",
    "baseAsset": "LINK",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "MATICUSD",
    "baseAsset": "MATIC",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "BUSDUSD",
    "baseAsset": "BUSD",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "THETAUSD",
    "baseAsset": "THETA",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "SHIBUSD",
    "baseAsset": "SHIB",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "ICPUSD",
    "baseAsset": "ICP",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "XLMUSD",
    "baseAsset": "XLM",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "WBTCUSD",
    "baseAsset": "WBTC",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "ETCUSD",
    "baseAsset": "ETC",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "VETUSD",
    "baseAsset": "VET",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "ALGOUSD",
    "baseAsset": "ALGO",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "AMP2USD",
    "baseAsset": "AMP2",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "FILUSD",
    "baseAsset": "FIL",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "DAIUSD",
    "baseAsset": "DAI",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "TRXUSD",
    "baseAsset": "TRX",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "XMRUSD",
    "baseAsset": "XMR",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "EOSUSD",
    "baseAsset": "EOS",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "CDAIUSD",
    "baseAsset": "CDAI",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "FTXTOKENUSD",
    "baseAsset": "FTXTOKEN",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "AAVEUSD",
    "baseAsset": "AAVE",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "OKBUSD",
    "baseAsset": "OKB",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "NEOUSD",
    "baseAsset": "NEO",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "KSMUSD",
    "baseAsset": "KSM",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "CUSDCUSD",
    "baseAsset": "CUSDC",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "BSVUSD",
    "baseAsset": "BSV",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "ATOMUSD",
    "baseAsset": "ATOM",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "IOTUSD",
    "baseAsset": "IOT",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "CROUSD",
    "baseAsset": "CRO",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "CAKEUSD",
    "baseAsset": "CAKE",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "CETHUSD",
    "baseAsset": "CETH",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "KLAYUSD",
    "baseAsset": "KLAY",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "CELUSD",
    "baseAsset": "CEL",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "MKRUSD",
    "baseAsset": "MKR",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "XTZUSD",
    "baseAsset": "XTZ",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "TFUELUSD",
    "baseAsset": "TFUEL",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "LUNAUSD",
    "baseAsset": "LUNA",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "RUNEUSD",
    "baseAsset": "RUNE",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "AVAXUSD",
    "baseAsset": "AVAX",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "SAFEMOONUSD",
    "baseAsset": "SAFEMOON",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "LEOUSD",
    "baseAsset": "LEO",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "HTUSD",
    "baseAsset": "HT",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "BITTORRENTUSD",
    "baseAsset": "BITTORRENT",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "UST2USD",
    "baseAsset": "UST2",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "SUSHIUSD",
    "baseAsset": "SUSHI",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "CHZUSD",
    "baseAsset": "CHZ",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "DCRUSD",
    "baseAsset": "DCR",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "TELUSD",
    "baseAsset": "TEL",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "WAVESUSD",
    "baseAsset": "WAVES",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "HBARUSD",
    "baseAsset": "HBAR",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "DASHUSD",
    "baseAsset": "DASH",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "TTT2USD",
    "baseAsset": "TTT2",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "COMPUSD",
    "baseAsset": "COMP",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "EGLDUSD",
    "baseAsset": "EGLD",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "ZECUSD",
    "baseAsset": "ZEC",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "XEMUSD",
    "baseAsset": "XEM",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "HBTCUSD",
    "baseAsset": "HBTC",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "SNXUSD",
    "baseAsset": "SNX",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "TUSDUSD",
    "baseAsset": "TUSD",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "HOTUSD",
    "baseAsset": "HOT",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "ENJUSD",
    "baseAsset": "ENJ",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "YFIUSD",
    "baseAsset": "YFI",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "ZILUSD",
    "baseAsset": "ZIL",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "STETHUSD",
    "baseAsset": "STETH",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "NEARUSD",
    "baseAsset": "NEAR",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "HELIUMUSD",
    "baseAsset": "HELIUM",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "XWCUSD",
    "baseAsset": "XWC",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "BLOCKSTACKUSD",
    "baseAsset": "BLOCKSTACK",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "BTGUSD",
    "baseAsset": "BTG",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "BATUSD",
    "baseAsset": "BAT",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "QNTUSD",
    "baseAsset": "QNT",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "NEXOUSD",
    "baseAsset": "NEXO",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "ZENUSD",
    "baseAsset": "ZEN",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "MANAUSD",
    "baseAsset": "MANA",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "PAXUSD",
    "baseAsset": "PAX",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "QTUMUSD",
    "baseAsset": "QTUM",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "GRTUSD",
    "baseAsset": "GRT",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "NANOUSD",
    "baseAsset": "NANO",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "BNTUSD",
    "baseAsset": "BNT",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "HARMONYUSD",
    "baseAsset": "HARMONY",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "ONTUSD",
    "baseAsset": "ONT",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "DGBUSD",
    "baseAsset": "DGB",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "ARRRUSD",
    "baseAsset": "ARRR",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "CRVUSD",
    "baseAsset": "CRV",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "FND2USD",
    "baseAsset": "FND2",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "UMAUSD",
    "baseAsset": "UMA",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
  {
    "symbol": "ZRXUSD",
    "baseAsset": "ZRX",
    "quoteAsset": "USD",
    "exchange": "nomics"
  },
];

const List<String> AppCurrencies = ['USD'];
