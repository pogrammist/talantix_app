import 'package:meta/meta.dart';

class Quote {
  final String symbol;
  final String priceChange;
  final String priceChangePercent;
  final String weightedAvgPrice;
  final String prevClosePrice;
  final String lastPrice;
  final String lastQty;
  final String bidPrice;
  final String bidQty;
  final String askPrice;
  final String askQty;
  final String openPrice;
  final String highPrice;
  final String lowPrice;
  final String volume;
  final String quoteVolume;
  final int openTime;
  final int closeTime;
  final int firstId;
  final int lastId;
  final int count;

  Quote({
    @required this.symbol,
    @required this.priceChange,
    @required this.priceChangePercent,
    @required this.weightedAvgPrice,
    @required this.prevClosePrice,
    @required this.lastPrice,
    @required this.lastQty,
    @required this.bidPrice,
    @required this.bidQty,
    @required this.askPrice,
    @required this.askQty,
    @required this.openPrice,
    @required this.highPrice,
    @required this.lowPrice,
    @required this.volume,
    @required this.quoteVolume,
    @required this.openTime,
    @required this.closeTime,
    @required this.firstId,
    @required this.lastId,
    @required this.count,
  });
}
