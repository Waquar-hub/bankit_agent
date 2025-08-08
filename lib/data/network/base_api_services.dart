import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../../core/app_url.dart';

class DioService{
  final Dio dio;
  DioService()
      : dio = Dio(BaseOptions(
    baseUrl: AppUrl.serverUrl, // Update your base URL
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    headers: {
      'Content-Type': 'application/json',
    },
  )) {
    dio.interceptors.addAll([
      PrettyDioLogger(requestBody: true, responseBody: true),
    ]);
  }
}
