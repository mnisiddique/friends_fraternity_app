import 'package:friends_fraternity_app/core/params/param_exporter.dart';
import 'package:friends_fraternity_app/data/data_source/datasource_exporter.dart';
import 'package:friends_fraternity_app/domain/entity/entity_exporter.dart';
import 'package:friends_fraternity_app/domain/repository/repository.dart';

class DepositHistoryRepoImpl implements DepositHistoryRepo {
  final DepositorHistoryRemote _depositorHistoryRemote;

  DepositHistoryRepoImpl(this._depositorHistoryRemote);

  @override
  Future<List<EachMonthDeposit>> getPersonDepositHistory(Params param) async {
    return await _depositorHistoryRemote();
  }
}
