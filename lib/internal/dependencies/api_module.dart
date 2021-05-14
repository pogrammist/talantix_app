import 'package:talantix_app/data/api/api_util.dart';
import 'package:talantix_app/data/api/service/talantix_service.dart';

class ApiModule {
  static ApiUtil _apiUtil;

  static ApiUtil apiUtil() {
    if (_apiUtil == null) {
      _apiUtil = ApiUtil(TalantixService());
    }
    return _apiUtil;
  }
}
