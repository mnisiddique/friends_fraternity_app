import 'package:friends_fraternity_app/core/calculation_source/export_core_counting_source.dart';
import 'package:friends_fraternity_app/core/local_datasource/shared_preference/current_date_local_source.dart';
import 'package:friends_fraternity_app/core/model/export_core_model.dart';
import 'package:friends_fraternity_app/data/data_source/export_datasrc.dart';
import 'package:friends_fraternity_app/data/model/model.dart';
import 'package:friends_fraternity_app/domain/entity/depositor/depositor_entities.dart';
import 'package:friends_fraternity_app/core/params/params.dart';
import 'package:friends_fraternity_app/domain/repository/export_repo.dart';

class DepositorTimelineObserverRepoImpl
    implements DepositorTimelineObserverRepo {
  final TimelineCountingSourceSourceImpl timelineCountingSrc;
  final CurrentDateLocalSource localDateSrc;
  final DepositPolicySrc policyLocal;

  DepositorTimelineObserverRepoImpl({
    required this.timelineCountingSrc,
    required this.localDateSrc,
    required this.policyLocal,
  });

  @override
  DepositorshipObservation observeDepositorTimeline(Params param) {
    final DepositorListModel model = param as DepositorListModel;
    List<Depositor> depositorsObserved = [];
    List<String> depositorCancelled = [];

    model.depositors.forEach((depositorItem) {
      depositorsObserved.add(observe(depositorItem));
      if (!depositorItem.isActive) {
        depositorCancelled.add(depositorItem.nid);
      }
    });
    return DepositorshipObservation(
      observedDepositors: depositorsObserved,
      cancelledDepositors: depositorCancelled,
    );
  }

  DepositorModel observe(DepositorModel depositor) {
    DepositPolicy policy = policyLocal.retrieveDepositPolicy();
    final timeline = TimelineModel(
      firstDate: depositor.firstDepositDate,
      lastDate: depositor.lastDepositDate,
      currentDate: localDateSrc.getCurrentDate(),
      timelineInMonth: policy.depositorshipRevocationTimeLimit,
      monthlyPayment: policy.amount,
      totalPayedAmount: depositor.totalDeposit,
    );
    final dueMonth = timelineCountingSrc.countDueMonth(timeline);
    return depositor.copyWith(
      dueMonths: dueMonth,
      monthsDepositInAdvance: timelineCountingSrc.countAdvanceMonth(timeline),
      isActive: dueMonth >= policy.depositorshipRevocationTimeLimit,
    );
  }
}
