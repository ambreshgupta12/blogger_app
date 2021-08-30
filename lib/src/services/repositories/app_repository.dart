import 'package:blogger_app/src/constants/url_constants.dart';
import 'package:blogger_app/src/services/error_handle/handle_error.dart';
import 'package:blogger_app/src/services/rest_client/rest_client.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class AppRepository {
  RestClient? apiClient;
  late HandleError _handleError;

  AppRepository() {
    final _dio = Dio();
    _dio.options = BaseOptions(validateStatus: (val) => true);
    _dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: false,
        compact: true,
        maxWidth: 90));
    apiClient = RestClient(_dio, baseUrl: KUrl.baseURL);
    _handleError = HandleError();
  }

  Future<dynamic> getAllPost() async {
    try {
      var response = await apiClient!.getAllPost();
      return response;
    } on DioError catch (error) {
      _handleError.handleError(error);
    }
  }
}
