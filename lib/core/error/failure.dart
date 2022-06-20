import 'package:friends_fraternity_app/core/utills/res/resource.dart';

abstract class Failure {}

class ServerFailure extends Failure {
  final String? message;
  ServerFailure({this.message});
}

class CacheFailure extends Failure {
  final String? message;
  CacheFailure({this.message});
}

class NetworkFailure extends Failure {
  final String? message;
  NetworkFailure({this.message = ErrMsgRes.kNoInternet});
}

class UnexpectedFailure extends Failure {
  final String? message;
  UnexpectedFailure({this.message});
}
