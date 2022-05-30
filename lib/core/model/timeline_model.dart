import 'package:friends_fraternity_app/core/params/export_param.dart';

class TimelineModel implements Params {
  final String firstDate;
  final String lastDate;
  final String currentDate;
  final int timelineInMonth;
  final num monthlyPayment;
  final num totalPayedAmount;

  TimelineModel({
    required this.firstDate,
    required this.lastDate,
    required this.currentDate,
    required this.timelineInMonth,
    required this.monthlyPayment,
    required this.totalPayedAmount,
  });
}
