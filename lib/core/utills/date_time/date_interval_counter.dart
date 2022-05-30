import 'package:friends_fraternity_app/core/error/exception.dart';
import 'package:friends_fraternity_app/core/utills/res/resource.dart';
import 'package:jiffy/jiffy.dart';

abstract class DateIntervalCounter {
  static const kExpectedFormat = "dd-MM-yyyy";
  int countIntervalInMonth(String fromDate, String toDate);
}

class DateIntervalCounterImpl implements DateIntervalCounter {
  int countIntervalInMonth(String fromDate, String toDate) {
    final jiffyFromDate = Jiffy(fromDate, DateIntervalCounter.kExpectedFormat);
    final jiffyTodate = Jiffy(toDate, DateIntervalCounter.kExpectedFormat);

    int months = jiffyTodate.diff(jiffyFromDate, Units.MONTH).toInt();
    if (months < 0) {
      throw InvalidDateException(message: StringRes.invalidDateInputMsg);
    }
    return months;
  }
}
