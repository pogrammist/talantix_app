import 'package:talantix_app/data/repository/quotes_data_repository.dart';
import 'package:talantix_app/domain/repository/quotes_repository.dart';
import 'api_module.dart';

class RepositoryModule {
  static QuotesRepository _mediaRepository;

  static QuotesRepository mediaRepository() {
    if (_mediaRepository == null) {
      _mediaRepository = QuotesDataRepository(
        ApiModule.apiUtil(),
      );
    }
    return _mediaRepository;
  }
}
