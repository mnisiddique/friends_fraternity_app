import 'package:friends_fraternity_app/core/utills/date_time/date_interval_counter.dart';
import 'package:friends_fraternity_app/data/model/model.dart';
import 'package:friends_fraternity_app/domain/entity/depositor/depositor_entities.dart';
import 'package:friends_fraternity_app/core/params/params.dart';
import 'package:friends_fraternity_app/domain/repository/export_repo.dart';

class DepositorTimelineObserverRepoImpl
    implements DepositorTimelineObserverRepo {
  @override
  DepositorshipObservation observeDepositorTimeline(Params param) {
    final DepositorListModel model = param as DepositorListModel;
    List<Depositor> depositorsObserved = [];
    List<String> depositorCancelled = [];

    model.depositors.forEach(
      (depositorItem) {
        final int dMonths = 0;
        // final int dMonths = workoutDueMonth(depositorItem);
        final bool active = dMonths >= 3;
        depositorsObserved.add(
          depositorItem.copyWith(
            dueMonths: dMonths,
            monthsDepositInAdvance: 0,
            // monthsDepositInAdvance: workoutAdvanceMonth(depositorItem),
            isActive: active,
          ),
        );
        if (active) {
          depositorCancelled.add(depositorItem.nid);
        }
      },
    );

    return DepositorshipObservation(
      observedDepositors: depositorsObserved,
      cancelledDepositors: depositorCancelled,
    );
  }
}
