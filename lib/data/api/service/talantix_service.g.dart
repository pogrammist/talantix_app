// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'talantix_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _TalantixService implements TalantixService {
  _TalantixService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://api.binance.com/api/v3/ticker/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<List<ApiQuote>> getQuotes() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>('/24hr',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => ApiQuote.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }
}
