import 'package:friends_fraternity_app/core/network/network_info.dart';
import 'package:friends_fraternity_app/data/data_source/datasource_exporter.dart';
import 'package:friends_fraternity_app/data/repo_impl/repo_impl_exporter.dart';
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
