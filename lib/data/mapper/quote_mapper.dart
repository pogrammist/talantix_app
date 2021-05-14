import 'package:talantix_app/data/api/model/api_quote.dart';
import 'package:talantix_app/domain/model/quote.dart';

class QuoteMapper {
  static List<Quote> fromApi(List<ApiQuote> quotes) {
    return quotes
        .map<Quote>((quote) => Quote(
              symbol: quote.symbol,
              priceChange: quote.priceChange,
              priceChangePercent: quote.priceChangePercent,
              weightedAvgPrice: quote.weightedAvgPrice,
              prevClosePrice: quote.prevClosePrice,
              lastPrice: quote.lastPrice,
              lastQty: quote.lastQty,
              bidPrice: quote.bidPrice,
              bidQty: quote.bidQty,
              askPrice: quote.askPrice,
              askQty: quote.askQty,
              openPrice: quote.openPrice,
              highPrice: quote.highPrice,
              lowPrice: quote.lowPrice,
              volume: quote.volume,
              quoteVolume: quote.quoteVolume,
              openTime: quote.openTime,
              closeTime: quote.closeTime,
              firstId: quote.firstId,
              lastId: quote.lastId,
              count: quote.count,
            ))
        .toList();
  }
}
