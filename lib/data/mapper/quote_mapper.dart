import 'package:talantix_app/data/api/model/api_quote.dart';
import 'package:talantix_app/domain/model/quote.dart';

extension QuoteMapper on ApiQuote {
  Quote fromApi() => Quote(
        symbol: symbol,
        priceChange: priceChange,
        priceChangePercent: priceChangePercent,
        weightedAvgPrice: weightedAvgPrice,
        prevClosePrice: prevClosePrice,
        lastPrice: lastPrice,
        lastQty: lastQty,
        bidPrice: bidPrice,
        bidQty: bidQty,
        askPrice: askPrice,
        askQty: askQty,
        openPrice: openPrice,
        highPrice: highPrice,
        lowPrice: lowPrice,
        volume: volume,
        quoteVolume: quoteVolume,
        openTime: openTime,
        closeTime: closeTime,
        firstId: firstId,
        lastId: lastId,
        count: count,
      );
}
