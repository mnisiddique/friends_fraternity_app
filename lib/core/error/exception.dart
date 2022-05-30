class ServerException implements Exception {}

class CacheException implements Exception {}

class NoInternetException implements Exception {}

class InvalidDateException implements Exception {
  String? message;
  InvalidDateException({this.message});
}
