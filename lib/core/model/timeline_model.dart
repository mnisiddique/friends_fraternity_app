import 'package:friends_fraternity_app/core/params/export_param.dart';

class TimelineModel implements Params {
  final String firstDate;
  final String lastDate;
  final int timelineInMonth;
  final num monthlyPayment;

  TimelineModel({
    required this.firstDate,
    required this.lastDate,
    required this.timelineInMonth,
    required this.monthlyPayment,
  });
}
