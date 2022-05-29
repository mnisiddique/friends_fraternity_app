import 'package:friends_fraternity_app/core/local_datasource/export_core_local_datasrc.dart';
import 'package:friends_fraternity_app/core/network/network_info.dart';
import 'package:friends_fraternity_app/core/utills/date_time/date_difference_calculator.dart';
import 'package:friends_fraternity_app/data/data_source/export_datasrc.dart';
import 'package:friends_fraternity_app/data/model/model.dart';
import 'package:friends_fraternity_app/domain/entity/depositor/depositor_entities.dart';
import 'package:friends_fraternity_app/core/params/params.dart';
import 'package:friends_fraternity_app/domain/repository/repository.dart';

class DepositorshipObserverRepoImpl implements DepositorRepo {
  final NetworkInfo networkInfo;
  final SourcePreference sourcePreference;
  final DepositorListRemote depListRemote;
  final DepositorshipCancelRemote depCacncelRemote;
  final DepositorListLocal depListLocal;
  final DepositorshipCancelLocal depCancelLocal;

  DepositorshipObserverRepoImpl({
    required this.networkInfo,
    required this.sourcePreference,
    required this.depListRemote,
    required this.depListLocal,
    required this.depCacncelRemote,
    required this.depCancelLocal,
  });
  @override
  Future<DepositorListModel> getDepositors(Params param) async {
    if (sourcePreference.isLocalDataSource()) {
      return await depListLocal.retrieveDepositorList(param);
    }
    await networkInfo.throwIfNoInternet();
    final result = await depListRemote(param);
    depListLocal.saveDepositorList(result);
    return result;
  }

  @override
  Future<DepositorshipCancelStatus> cancelDepositorship(Params param) async {
    // Cancel operation must require internet
    // Optionally it will update local database too
    if (sourcePreference.isLocalDataSource()) {
      depCancelLocal(param);
    }
    await networkInfo.throwIfNoInternet();
    return await cancelDepositorship(param);
  }
}
