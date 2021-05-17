import 'package:json_annotation/json_annotation.dart';

part 'api_quote.g.dart';

@JsonSerializable()
class ApiQuote {
  String symbol;
  String priceChange;
  String priceChangePercent;
  String weightedAvgPrice;
  String prevClosePrice;
  String lastPrice;
  String lastQty;
  String bidPrice;
  String bidQty;
  String askPrice;
  String askQty;
  String openPrice;
  String highPrice;
  String lowPrice;
  String volume;
  String quoteVolume;
  int openTime;
  int closeTime;
  int firstId;
  int lastId;
  int count;

  ApiQuote(
      {this.symbol,
      this.priceChange,
      this.priceChangePercent,
      this.weightedAvgPrice,
      this.prevClosePrice,
      this.lastPrice,
      this.lastQty,
      this.bidPrice,
      this.bidQty,
      this.askPrice,
      this.askQty,
      this.openPrice,
      this.highPrice,
      this.lowPrice,
      this.volume,
      this.quoteVolume,
      this.openTime,
      this.closeTime,
      this.firstId,
      this.lastId,
      this.count});

  factory ApiQuote.fromJson(Map<String, dynamic> json) =>
      _$ApiQuoteFromJson(json);

  Map<String, dynamic> toJson() => _$ApiQuoteToJson(this);
}
