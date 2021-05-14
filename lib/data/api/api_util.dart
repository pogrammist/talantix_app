import 'package:talantix_app/data/mapper/quote_mapper.dart';
import 'package:talantix_app/domain/model/quote.dart';

import 'service/talantix_service.dart';

class ApiUtil {
  final TalantixService _talantixService;

  ApiUtil(this._talantixService);

  Future<List<Quote>> getQuotes() async {
    final result = await _talantixService.getQuotes();
    return QuoteMapper.fromApi(result);
  }
}
