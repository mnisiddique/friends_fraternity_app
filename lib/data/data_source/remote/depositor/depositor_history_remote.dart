import 'package:friends_fraternity_app/core/params/param_exporter.dart';
import 'package:friends_fraternity_app/data/model/model.dart';

abstract class DepositHistoryRemote {
  Future<EachMonthDepositListModel> call(Params params);
}

class DepositorHistoryRemoteImpl implements DepositHistoryRemote {
  @override
  Future<EachMonthDepositListModel> call(Params param) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
