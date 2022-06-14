import 'package:friends_fraternity_app/core/params/export_param.dart';
import 'package:friends_fraternity_app/data/export_model.dart';
import 'package:friends_fraternity_app/domain/entity/depositor/depositor_entities.dart';

//Implemented tested
abstract class DepositHistoryRepo {
  Future<EachMonthDepositListModel> getPersonDepositHistory(Params param);
}

//Implemented
abstract class DepositorRepo {
  Future<DepositorListModel> getDepositors(Params param);
  Future<DepositorshipCancelStatus> cancelDepositorship(Params param);
}

//Implemented
abstract class DepositorTimelineObserverRepo {
  DepositorshipObservation observeDepositorTimeline(Params param);
}

abstract class DepositRepo {
  //TODO exact return type will be decided later
  Future<void> doDeposit(Params param);
  Future<Depositor> workOutExpectedDeposit(Params param);
}

//Implemented
abstract class DepositPolicyRepo {
  Future<bool> getDepositPolicy(Params param);
}
