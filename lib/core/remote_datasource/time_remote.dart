import 'package:friends_fraternity_app/core/utills/date_time/export_date_time.dart';
import 'package:ntp/ntp.dart';

abstract class TimeRemote {
  Future<String> getCurrentDateTime();
}

class TimeRemoteNTPImpl implements TimeRemote {
  @override
  Future<String> getCurrentDateTime() async {
    final currentDate = await NTP.now();
    return DateFormatter.fromDateTime(currentDate).formttedDate;
  }
}
