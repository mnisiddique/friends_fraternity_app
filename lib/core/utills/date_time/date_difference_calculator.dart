import 'package:jiffy/jiffy.dart';

abstract class DateDifferenceCalculator {
  int calculateDifferenceInMonth(DateTime fromDate, DateTime toDate);
}

class DateDifferenceCalculatorImpl implements DateDifferenceCalculator {
  int calculateDifferenceInMonth(DateTime fromDate, DateTime toDate) {
    final jiffyFromDate = Jiffy(fromDate);
    final jiffyTodate = Jiffy(toDate);

    return jiffyTodate.diff(jiffyFromDate, Units.MONTH).toInt();
  }
}
