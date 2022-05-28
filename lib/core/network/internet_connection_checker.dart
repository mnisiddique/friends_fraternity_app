import 'package:friends_fraternity_app/core/error/exception.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class ConnectionChecker {
  Future<void> throwIfNoInternet();
}

class ConnectionCheckerImpl extends ConnectionChecker {
  final InternetConnectionChecker _checker;
  ConnectionCheckerImpl(this._checker);

  @override
  Future<void> throwIfNoInternet() async {
    if (!(await _checker.hasConnection)) {
      throw NoInternetException();
    }
  }
}
