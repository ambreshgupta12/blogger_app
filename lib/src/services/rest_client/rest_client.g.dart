// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<TopHeadlinesNewsResponse> getTopHeadlinesNews(
      {country, pageSize, page, apiKey, category = ''}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'country': country,
      r'pageSize': pageSize,
      r'page': page,
      r'apiKey': apiKey,
      r'category': category
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<TopHeadlinesNewsResponse>(Options(
                method: 'GET',
                headers: <String, dynamic>{r'Accept': 'application/json'},
                extra: _extra)
            .compose(_dio.options, '/top-headlines',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = TopHeadlinesNewsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<TopHeadlinesNewsResponse> searchTopHeadlinesNews(
      {country, apiKey, keyword}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'country': country,
      r'apiKey': apiKey,
      r'q': keyword
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<TopHeadlinesNewsResponse>(Options(
                method: 'GET',
                headers: <String, dynamic>{r'Accept': 'application/json'},
                extra: _extra)
            .compose(_dio.options, '/top-headlines',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = TopHeadlinesNewsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AllPostResponse> getAllPost() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AllPostResponse>(Options(
                method: 'GET',
                headers: <String, dynamic>{r'Accept': 'application/json'},
                extra: _extra)
            .compose(_dio.options, '',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AllPostResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
