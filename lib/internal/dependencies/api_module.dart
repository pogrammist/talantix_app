import 'package:dio/dio.dart';
import 'package:talantix_app/data/api/api_util.dart';
import 'package:talantix_app/data/api/service/talantix_service.dart';

class ApiModule {
  static ApiUtil _apiUtil;

  static ApiUtil apiUtil() {
    if (_apiUtil == null) {
      final dio = Dio();
      _apiUtil = ApiUtil(TalantixService(dio));
    }
    return _apiUtil;
  }
}
