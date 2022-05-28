import 'package:friends_fraternity_app/core/network/internet_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final GetIt sl = GetIt.instance;

class Dependency {
  Dependency._init();
  static void initDependency() {
    //Libraries
    sl.registerLazySingleton<ConnectionCheckerImpl>(
      () => ConnectionCheckerImpl(
        InternetConnectionChecker(),
      ),
    );
  }
}
