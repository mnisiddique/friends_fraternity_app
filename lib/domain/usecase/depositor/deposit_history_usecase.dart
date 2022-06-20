import 'package:dartz/dartz.dart';
import 'package:friends_fraternity_app/core/error/export_error.dart';
import 'package:friends_fraternity_app/core/params/export_param.dart';
import 'package:friends_fraternity_app/core/usecase/usecase.dart';
import 'package:friends_fraternity_app/data/export_model.dart';
import 'package:friends_fraternity_app/domain/export_repository.dart';

class DepositHistoryUseCase
    extends AsyncUsecase<EachMonthDepositListModel, Params> {
  final DepositHistoryRepo depositHistoryRepo;
  final MapExceptionToFailure mapExceptionToFailure;

  DepositHistoryUseCase({
    required this.depositHistoryRepo,
    required this.mapExceptionToFailure,
  });

  @override
  Future<Either<Failure, EachMonthDepositListModel>> call(Params params) async {
    try {
      return Right(await depositHistoryRepo.getPersonDepositHistory(params));
    } catch (e, stacktrace) {
      return Left(mapExceptionToFailure(e, stacktrace));
    }
  }
}
