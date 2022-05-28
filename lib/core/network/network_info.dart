import 'package:friends_fraternity_app/core/error/exception.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<void> throwIfNoInternet();
}

class NetworkInfoImpl extends NetworkInfo {
  final InternetConnectionChecker _checker;
  NetworkInfoImpl(this._checker);

  @override
  Future<void> throwIfNoInternet() async {
    if (!(await _checker.hasConnection)) {
      throw NoInternetException();
    }
  }
}
