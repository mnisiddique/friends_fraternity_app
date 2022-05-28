import 'package:friends_fraternity_app/core/network/network_info.dart';
import 'package:friends_fraternity_app/core/params/param_exporter.dart';
import 'package:friends_fraternity_app/data/data_source/datasource_exporter.dart';
import 'package:friends_fraternity_app/data/model/depositor/each_month_deposit_model.dart';
import 'package:friends_fraternity_app/domain/entity/entity_exporter.dart';
import 'package:friends_fraternity_app/domain/repository/repository.dart';

class DepositHistoryRepoImpl implements DepositHistoryRepo {
  final DepositorHistoryRemote depositorHistoryRemote;
  final NetworkInfo networkInfo;

  DepositHistoryRepoImpl({
    required this.depositorHistoryRemote,
    required this.networkInfo,
  });

  @override
  Future<EachMonthDepositListModel> getPersonDepositHistory(
      Params param) async {
    await networkInfo.throwIfNoInternet();
    return await depositorHistoryRemote(param);
  }
}
