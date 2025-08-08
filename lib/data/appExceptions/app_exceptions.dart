class AppException implements Exception {
  final String message;
  AppException(this.message);

  @override
  String toString() => message;
}

class BadRequestException extends AppException {
  BadRequestException(String message) : super(message);
}

class UnauthorizedException extends AppException {
  UnauthorizedException(String message) : super(message);
}

class NotFoundException extends AppException {
  NotFoundException(String message) : super(message);
}

class InternalServerErrorException extends AppException {
  InternalServerErrorException(String message) : super(message);
}

class NoInternetException extends AppException {
  NoInternetException(String message) : super(message);
}
