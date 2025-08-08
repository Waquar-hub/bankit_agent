import 'package:dio/dio.dart';
import '../appExceptions/app_exceptions.dart';

class ApiClient {
  final Dio dio;
  ApiClient(this.dio);

  Future<dynamic> get(String url) async {
    try {
      final response = await dio.get(url);
      return response.data;
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  Future<dynamic> post(String url, {Map<String, dynamic>? data}) async {
    try {
      final response = await dio.post(url, data: data);
      return response.data;
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  Exception _handleError(DioException e) {
   if(e.type == DioExceptionType.connectionError){
     print("ssss${e.response}");
     return NoInternetException("Timeout occurred");
   }else if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      print("error Timeout occurred");

      return NoInternetException("Timeout occurred");
    } else if (e.type == DioExceptionType.badResponse) {
      switch (e.response?.statusCode) {
        case 400:
          return BadRequestException("Bad request");
        case 401:
        case 403:
          return UnauthorizedException("Unauthorized");
        case 404:
          print("ssss${e.response}");
          return NotFoundException(e.response?.data['message'] ?? 'Not found');
        case 500:
          return InternalServerErrorException("Server error");
        default:

          return AppException("Unknown error: ${e.response?.statusCode}");
      }
    } else {
     print("status code 22002022002");
      return AppException("Unexpected error: ${e.message}");
    }
  }
}
