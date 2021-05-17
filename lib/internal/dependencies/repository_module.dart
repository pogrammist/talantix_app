import 'package:talantix_app/data/repository/quotes_data_repository.dart';
import 'package:talantix_app/domain/repository/quotes_repository.dart';
import 'api_module.dart';

class RepositoryModule {
  static QuotesRepository _quoteRepository;

  static QuotesRepository quoteRepository() {
    if (_quoteRepository == null) {
      _quoteRepository = QuotesDataRepository(
        ApiModule.apiUtil(),
      );
    }
    return _quoteRepository;
  }
}
