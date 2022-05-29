import 'package:friends_fraternity_app/core/params/param_exporter.dart';
import 'package:friends_fraternity_app/core/repo/timeline_observer_repo.dart';
import 'package:friends_fraternity_app/data/model/model.dart';
import 'package:friends_fraternity_app/domain/entity/depositor/depositor_entities.dart';

abstract class DepositHistoryRepo {
  Future<EachMonthDepositListModel> getPersonDepositHistory(Params param);
}

abstract class DepositorRepo {
  Future<DepositorListModel> getDepositors(Params param);

  Future<DepositorshipCancelStatus> cancelDepositorship(Params param);
}

abstract class DepositorTimelineObserverRepo extends TimelineObserverRepo {
  DepositorshipObservation observeDepositorTimeline(Params param);
}

abstract class DepositRepo {
  //TODO exact return type will be decided later
  Future<void> doDeposit(Params param);
  Future<Depositor> workOutExpectedDeposit(Params param);
}
