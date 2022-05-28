import 'package:friends_fraternity_app/domain/entity/entity_exporter.dart';

abstract class DepositorHistoryRemote {
  Future<List<EachMonthDeposit>> call();
}

class DepositorHistoryRemoteImpl implements DepositorHistoryRemote {
  @override
  Future<List<EachMonthDeposit>> call() {
    // TODO: implement call
    throw UnimplementedError();
  }
}
