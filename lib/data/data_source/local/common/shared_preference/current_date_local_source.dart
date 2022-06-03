import 'package:friends_fraternity_app/core/utills/date_time/export_date_time.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class CurrentDateLocalSource {
  static const String kKeyCurrentDatePreference = "CURRENT_DATE_PREFERENCE";
  Future<bool> saveCurrentDate(String currentDate);
  String getCurrentDate();
}

class CurrentDateLocalSourceImpl extends CurrentDateLocalSource {
  final SharedPreferences prefs;

  CurrentDateLocalSourceImpl(this.prefs);

  @override
  String getCurrentDate() {
    return prefs.getString(CurrentDateLocalSource.kKeyCurrentDatePreference) ??
        DateFormatter.fromDateTime(DateTime.now()).formttedDate;
  }

  @override
  Future<bool> saveCurrentDate(String currentDate) async {
    return await prefs.setString(
      CurrentDateLocalSource.kKeyCurrentDatePreference,
      currentDate,
    );
  }
}
