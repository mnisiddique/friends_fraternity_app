import 'package:friends_fraternity_app/core/error/export_error.dart';

class MapExceptionToFailure {
  Failure call(Object obj, StackTrace stackTrace) {
    if (obj is NoInternetException) {
      return NetworkFailure();
    } else if (obj is ServerException) {
      return ServerFailure(message: obj.message);
    } else if (obj is CacheException) {
      return CacheFailure(message: obj.message);
    } else if (obj is Exception) {
      print(stackTrace);
      return UnexpectedFailure(message: obj.toString());
    } else if (obj is Error) {
      print(stackTrace);
      return UnexpectedFailure(message: obj.toString());
    }
    throw UnsupportedError("${obj.runtimeType} is not supported");
  }
}
