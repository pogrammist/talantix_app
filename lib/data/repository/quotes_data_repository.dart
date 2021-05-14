import 'package:talantix_app/data/api/api_util.dart';
import 'package:talantix_app/domain/model/quote.dart';
import 'package:talantix_app/domain/repository/quotes_repository.dart';

class QuotesDataRepository extends QuotesRepository {
  final ApiUtil _apiUtil;

  QuotesDataRepository(this._apiUtil);

  @override
  Future<List<Quote>> getQuotes() {
    return _apiUtil.getQuotes();
  }
}
