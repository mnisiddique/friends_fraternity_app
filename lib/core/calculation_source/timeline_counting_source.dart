import 'package:friends_fraternity_app/core/params/export_param.dart';
import 'package:friends_fraternity_app/core/utills/date_time/date_interval_counter.dart';
import 'package:friends_fraternity_app/data/export_model.dart';

abstract class TimelineCountingSource {
  int countDueMonth(Params params);
  int countAdvanceMonth(Params params);
}

class TimelineCountingSourceSourceImpl implements TimelineCountingSource {
  final DateIntervalCounter _dateIntervalCounter;

  TimelineCountingSourceSourceImpl(this._dateIntervalCounter);
  @override
  int countDueMonth(Params params) {
    final TimelineModel timelineModel = params as TimelineModel;
    final int dueMonth = _dateIntervalCounter.countIntervalInMonth(
      timelineModel.lastDate,
      timelineModel.currentDate,
    );
    return dueMonth > 0 ? dueMonth - 1 : 0;
  }

  @override
  int countAdvanceMonth(Params params) {
    final TimelineModel timelineModel = params as TimelineModel;
    final int totalElapsedMonth = _dateIntervalCounter.countIntervalInMonth(
      timelineModel.firstDate,
      timelineModel.currentDate,
    );
    num totalExpectedPayment = totalElapsedMonth * timelineModel.monthlyPayment;
    if (timelineModel.totalPayedAmount > totalExpectedPayment) {
      return (timelineModel.totalPayedAmount - totalExpectedPayment) ~/
          timelineModel.monthlyPayment;
    }
    return 0;
  }
}
