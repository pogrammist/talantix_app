import 'package:talantix_app/domain/model/quote.dart';

abstract class QuotesRepository {
  Future<List<Quote>> getQuotes();
}
