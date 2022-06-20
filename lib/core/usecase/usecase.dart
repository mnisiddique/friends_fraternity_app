import 'package:dartz/dartz.dart';
import 'package:friends_fraternity_app/core/error/export_error.dart';

abstract class Usecase<T, Params> {
  T call(Params params);
}

abstract class AsyncUsecase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}
