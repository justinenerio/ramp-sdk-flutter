class OfframpPurchase {
  String? id;
  String? createdAt;
  OfframpCrypto? crypto;
  OfframpFiat? fiat;

  static OfframpPurchase fromArguments(Map<String, dynamic> arguments) {
    OfframpPurchase purchase = OfframpPurchase();
    purchase.id = arguments["id"];
    purchase.createdAt = arguments["createdAt"];
    purchase.crypto = OfframpCrypto.fromArguments(arguments['crypto']);
    purchase.fiat = OfframpFiat.fromArguments(arguments['fiat']);
    return purchase;
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
  String? address;
  String? symbol;
  String? chain;
  String? type;
  String? name;
  int? decimals;

  static OfframpAssetInfo fromArguments(Map<String, dynamic> arguments) {
    OfframpAssetInfo assetInfo = OfframpAssetInfo();
    assetInfo.address = arguments["address"];
    assetInfo.symbol = arguments["symbol"];
    assetInfo.chain = arguments["chain"];
    assetInfo.type = arguments["type"];
    assetInfo.name = arguments["name"];
    assetInfo.decimals = arguments["decimals"];
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
