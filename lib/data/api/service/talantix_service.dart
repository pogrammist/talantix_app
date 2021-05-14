import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:talantix_app/data/api/model/api_quote.dart';

List<ApiQuote> parseQuotes(dynamic responseBody) {
  // final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return responseBody.map<ApiQuote>((json) => ApiQuote.fromApi(json)).toList();
}

class TalantixService {
  static const _BASE_URL = 'https://api.binance.com/api/v3/ticker/';

  final Dio _dio = Dio(
    BaseOptions(baseUrl: _BASE_URL),
  );

  Future<List<ApiQuote>> getQuotes() async {
    final response = await _dio.get('24hr');
    switch (response.statusCode) {
      case 200:
        print(response.data);
        return compute(parseQuotes, response.data);
        break;
      default:
        throw response.data;
        break;
    }
  }
}
