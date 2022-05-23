import 'package:friends_fraternity_app/core/base/base_exporter.dart';
import 'package:friends_fraternity_app/domain/entity/depositor/depositor_entities.dart';

abstract class DepositHistoryRepo {
  Future<List<EachMonthDeposit>> getPersonDepositHistory(Params param);
}

abstract class DepositorshipObserverRepo {
  Future<Depositor> getDepositors(Params param);
  DepositorshipObservation observeDepositorship(Params param);
  Future<DepositorshipCancelStatus> cancelDepositorship(Params param);
}

abstract class DepositRepo {
  //TODO exact return type will be decided later
  Future<void> doDeposit(Params param);
  Future<Depositor> workOutExpectedDeposit(Params param);
}
