import 'package:jiffy/jiffy.dart';

class DateFormatter {
  final String formttedDate;
  static const kExpectedFormat = "dd-MM-yyyy";

  DateFormatter(this.formttedDate);

  factory DateFormatter.fromDateTime(DateTime dt) {
    return DateFormatter(Jiffy(dt).format(kExpectedFormat));
  }
}
