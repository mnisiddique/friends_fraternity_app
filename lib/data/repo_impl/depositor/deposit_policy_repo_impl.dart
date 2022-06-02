import 'package:friends_fraternity_app/core/network/network_info.dart';
import 'package:friends_fraternity_app/core/params/params.dart';
import 'package:friends_fraternity_app/data/data_source/export_datasrc.dart';
import 'package:friends_fraternity_app/domain/repository/export_repo.dart';

class DepositPolicyRepoImpl implements DepositPolicyRepo {
  final DepositPolicySrc policyLocal;
  final DepositPolicyRemote policyRemote;
  final NetworkInfo networkInfo;

  DepositPolicyRepoImpl({
    required this.policyLocal,
    required this.policyRemote,
    required this.networkInfo,
  });
  @override
  Future<bool> getDepositPolicy(Params param) async {
    await networkInfo.throwIfNoInternet();
    final policy = await policyRemote.getDepositPolicy(param);
    return await policyLocal.saveDepositPolicy(policy);
  }
}
