import 'package:friends_fraternity_app/core/params/param_exporter.dart';
import 'package:friends_fraternity_app/core/usecase/usecase.dart';
import 'package:friends_fraternity_app/data/model/model.dart';
import 'package:friends_fraternity_app/domain/repository/repository.dart';

class DepositHistoryUseCase
    extends BaseUseCaseAsync<EachMonthDepositListModel, Params> {
  final DepositHistoryRepo _depositHistoryRepo;

  DepositHistoryUseCase(this._depositHistoryRepo);

  @override
  Future<EachMonthDepositListModel> call(Params params) async {
    return await _depositHistoryRepo.getPersonDepositHistory(params);
  }
}
