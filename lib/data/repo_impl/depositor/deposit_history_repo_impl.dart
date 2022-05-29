import 'package:friends_fraternity_app/core/network/network_info.dart';
import 'package:friends_fraternity_app/core/params/export_param.dart';
import 'package:friends_fraternity_app/data/data_source/export_datasrc.dart';
import 'package:friends_fraternity_app/data/model/depositor/each_month_deposit_model.dart';
import 'package:friends_fraternity_app/domain/repository/export_repo.dart';

class DepositHistoryRepoImpl implements DepositHistoryRepo {
  final DepositHistoryRemote depositHistoryRemote;
  final NetworkInfo networkInfo;

  DepositHistoryRepoImpl({
    required this.depositHistoryRemote,
    required this.networkInfo,
  });

  @override
  Future<EachMonthDepositListModel> getPersonDepositHistory(
      Params param) async {
    await networkInfo.throwIfNoInternet();
    return await depositHistoryRemote(param);
  }
}
