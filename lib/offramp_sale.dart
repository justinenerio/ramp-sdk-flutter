class OfframpSale {
  String? createdAt;
  OfframpCrypto? crypto;
  OfframpFiat? fiat;
  String? id;

  static OfframpSale fromArguments(Map<String, dynamic> arguments) {
    OfframpSale sale = OfframpSale();
    sale.createdAt = arguments["createdAt"];
    sale.crypto = OfframpCrypto.fromArguments(arguments['crypto']);
    sale.fiat = OfframpFiat.fromArguments(arguments['fiat']);
    sale.id = arguments["id"];
    return sale;
  }
}

class OfframpCrypto {
  String? amount;
  OfframpAssetInfo? assetInfo;

  static OfframpCrypto fromArguments(Map<String, dynamic> arguments) {
    OfframpCrypto crypto = OfframpCrypto();
    crypto.amount = arguments["amount"];
    crypto.assetInfo = OfframpAssetInfo.fromArguments(arguments["assetInfo"]);
    return crypto;
  }
}

class OfframpAssetInfo {
  String? chain;
  int? decimals;
  String? name;
  String? symbol;
  String? type;

  static OfframpAssetInfo fromArguments(Map<String, dynamic> arguments) {
    OfframpAssetInfo assetInfo = OfframpAssetInfo();
    assetInfo.chain = arguments["chain"];
    assetInfo.decimals = arguments["decimals"];
    assetInfo.name = arguments["name"];
    assetInfo.symbol = arguments["symbol"];
    assetInfo.type = arguments["type"];
    return assetInfo;
  }
}

class OfframpFiat {
  String? amount;
  String? currencySymbol;

  static OfframpFiat fromArguments(Map<String, dynamic> arguments) {
    OfframpFiat fiat = OfframpFiat();
    fiat.amount = arguments["amount"];
    fiat.currencySymbol = arguments["currencySymbol"];
    return fiat;
  }
}
