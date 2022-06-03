import 'package:friends_fraternity_app/core/params/export_param.dart';
import 'package:friends_fraternity_app/domain/export_entity.dart';

abstract class DepositPolicyRemote {
  Future<DepositPolicy> getDepositPolicy(Params params);
}

class DepositPolicyRemoteImpl implements DepositPolicyRemote {
  @override
  Future<DepositPolicy> getDepositPolicy(Params params) {
    // TODO: implement getDepositPolicy
    throw UnimplementedError();
  }
}
