import 'package:friends_fraternity_app/core/network/network_info.dart';
import 'package:friends_fraternity_app/core/params/param_exporter.dart';
import 'package:friends_fraternity_app/data/data_source/datasource_exporter.dart';
import 'package:friends_fraternity_app/domain/entity/entity_exporter.dart';
import 'package:friends_fraternity_app/domain/repository/repository.dart';

class DepositHistoryRepoImpl implements DepositHistoryRepo {
  final DepositorHistoryRemote depositorHistoryRemote;
  final NetworkInfo noInternetExceptionThrower;

  DepositHistoryRepoImpl({
    required this.depositorHistoryRemote,
    required this.noInternetExceptionThrower,
  });

  @override
  Future<List<EachMonthDeposit>> getPersonDepositHistory(Params param) async {
    await noInternetExceptionThrower.throwIfNoInternet();
    return await depositorHistoryRemote(param);
  }
}
