import 'package:friends_fraternity_app/core/error/exception.dart';
import 'package:friends_fraternity_app/core/utills/res/resource.dart';
import 'package:jiffy/jiffy.dart';

import 'export_date_time.dart';

abstract class DateIntervalCounter {
  int countIntervalInMonth(String fromDate, String toDate);
}

class DateIntervalCounterImpl implements DateIntervalCounter {
  int countIntervalInMonth(String fromDate, String toDate) {
    final jiffyFromDate = Jiffy(fromDate, DateFormatter.kExpectedFormat);
    final jiffyTodate = Jiffy(toDate, DateFormatter.kExpectedFormat);

    int months = jiffyTodate.diff(jiffyFromDate, Units.MONTH).toInt();
    if (months < 0) {
      throw InvalidDateException(message: StringRes.invalidDateInputMsg);
    }
    return months;
  }
}
