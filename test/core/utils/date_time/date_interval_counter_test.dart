import 'package:flutter_test/flutter_test.dart';
import 'package:friends_fraternity_app/core/error/exception.dart';
import 'package:friends_fraternity_app/core/utills/date_time/date_interval_counter.dart';

import '../../../fixture/fixture_reader.dart';

void main() {
  late DateIntervalCounter intervalCounter;
  late List<String> fromDates;
  late List<String> toDates;
  late List<int> intervalsInMonth;
  setUp(() {
    intervalCounter = DateIntervalCounterImpl();
    fromDates = ["22-10-1990", "01-01-2022", "02-02-2022"];
    toDates = ["22-10-2022", "01-02-2022", "25-02-2022"];
    intervalsInMonth = [384, 1, 0];
  });
  group(_group, () {
    test("${testCaseNo(1, _testee)} should count correct date interval", () {
      int monthInterval = -1;
      for (int i = 0; i < intervalsInMonth.length; i++) {
        monthInterval =
            intervalCounter.countIntervalInMonth(fromDates[i], toDates[i]);
        expect(intervalsInMonth[i], monthInterval);
      }
    });

    test(
        "${testCaseNo(2, _testee)} should throw [FormatException] on unexpected date format",
        () {
      Exception ex = Exception();
      try {
        intervalCounter.countIntervalInMonth("25/11/2022", "25/12/2022");
      } on Exception catch (e) {
        ex = e;
      }
      expect(ex, isA<FormatException>());
    });
    test(
        "${testCaseNo(3, _testee)} should throw [InvalidDateException] on toDate is smaller than fromDate",
        () {
      Exception ex = Exception();
      try {
        intervalCounter.countIntervalInMonth("25-12-2022", "25-11-022");
      } on Exception catch (e) {
        ex = e;
      }
      expect(ex, isA<InvalidDateException>());
    });
    //End of group
  });
}

final String _testee = "DateIntervalCounter";
final String _group = "Date Interval Counting ";
