import 'package:dartz/dartz.dart';
import 'package:friends_fraternity_app/core/error/export_error.dart';
import 'package:friends_fraternity_app/core/params/export_param.dart';
import 'package:friends_fraternity_app/core/usecase/usecase.dart';
import 'package:friends_fraternity_app/domain/export_repository.dart';

class UsecaseDepositPolicy extends AsyncUsecase<bool, Params> {
  final DepositPolicyRepo depositPolicyRepo;
  final MapExceptionToFailure exceptionToFailure;
  UsecaseDepositPolicy({
    required this.depositPolicyRepo,
    required this.exceptionToFailure,
  });

  @override
  Future<Either<Failure, bool>> call(Params params) async {
    try {
      return Right(await depositPolicyRepo.getDepositPolicy(params));
    } catch (e, stacktrace) {
      return Left(exceptionToFailure(e, stacktrace));
    }
  }
}
