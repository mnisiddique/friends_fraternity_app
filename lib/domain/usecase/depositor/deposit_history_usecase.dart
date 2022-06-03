import 'package:friends_fraternity_app/core/params/export_param.dart';
import 'package:friends_fraternity_app/core/usecase/usecase.dart';
import 'package:friends_fraternity_app/data/export_model.dart';
import 'package:friends_fraternity_app/domain/export_repository.dart';

class DepositHistoryUseCase
    extends BaseUseCaseAsync<EachMonthDepositListModel, Params> {
  final DepositHistoryRepo _depositHistoryRepo;

  DepositHistoryUseCase(this._depositHistoryRepo);

  @override
  Future<EachMonthDepositListModel> call(Params params) async {
    return await _depositHistoryRepo.getPersonDepositHistory(params);
  }
}
