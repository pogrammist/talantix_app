import 'package:dio/dio.dart';
import 'package:talantix_app/data/mapper/quote_mapper.dart';
import 'package:talantix_app/domain/model/quote.dart';

import 'service/talantix_service.dart';

class ApiUtil {
  final TalantixService _talantixService;

  ApiUtil(this._talantixService);

  // Future<List<Quote>> getQuotes() async {
  //   final response = await _talantixService.getQuotes();
  //   return response.map<Quote>((quote) => quote.fromApi()).toList();
  // }

  Future<List<Quote>> getQuotes() async {
    List<Quote> quotes;
    await _talantixService
        .getQuotes()
        .then((response) =>
            quotes = response.map<Quote>((quote) => quote.fromApi()).toList())
        .catchError((Object obj) {
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
          // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response;
          print("Got error : ${res.statusCode} -> ${res.statusMessage}");
          break;
        default:
      }
    });
    return quotes;
  }
}
