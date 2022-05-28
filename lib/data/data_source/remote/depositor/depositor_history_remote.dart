import 'package:friends_fraternity_app/core/params/param_exporter.dart';
import 'package:friends_fraternity_app/domain/entity/entity_exporter.dart';

abstract class DepositorHistoryRemote {
  Future<List<EachMonthDeposit>> call(Params params);
}

class DepositorHistoryRemoteImpl implements DepositorHistoryRemote {
  @override
  Future<List<EachMonthDeposit>> call(Params param) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
