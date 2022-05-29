import 'package:friends_fraternity_app/core/params/export_param.dart';
import 'package:friends_fraternity_app/core/usecase/usecase.dart';
import 'package:friends_fraternity_app/data/model/model.dart';
import 'package:friends_fraternity_app/domain/repository/export_repo.dart';

class DepositHistoryUseCase
    extends BaseUseCaseAsync<EachMonthDepositListModel, Params> {
  final DepositHistoryRepo _depositHistoryRepo;

  DepositHistoryUseCase(this._depositHistoryRepo);

  @override
  Future<EachMonthDepositListModel> call(Params params) async {
    return await _depositHistoryRepo.getPersonDepositHistory(params);
  }
}
