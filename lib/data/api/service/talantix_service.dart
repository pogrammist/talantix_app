import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:talantix_app/data/api/model/api_quote.dart';

part 'talantix_service.g.dart';

@RestApi(baseUrl: 'https://api.binance.com/api/v3/ticker/')
abstract class TalantixService {
  factory TalantixService(Dio dio, {String baseUrl}) = _TalantixService;

  @GET('/24hr')
  Future<List<ApiQuote>> getQuotes();
}
