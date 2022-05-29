import 'package:friends_fraternity_app/core/network/network_info.dart';
import 'package:friends_fraternity_app/data/data_source/export_datasrc.dart';
import 'package:friends_fraternity_app/data/repo_impl/export_repo_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final GetIt sl = GetIt.instance;

class Dependency {
  Dependency._init();
  static void initDependency() {
    sl.registerLazySingleton<DepositorHistoryRemoteImpl>(
      () => DepositorHistoryRemoteImpl(),
    );

    sl.registerLazySingleton<DepositHistoryRepoImpl>(
      () => DepositHistoryRepoImpl(
        depositHistoryRemote: sl(),
        networkInfo: sl(),
      ),
    );

    //Libraries
    sl.registerLazySingleton<NetworkInfoImpl>(
      () => NetworkInfoImpl(
        InternetConnectionChecker(),
      ),
    );
  }
}
