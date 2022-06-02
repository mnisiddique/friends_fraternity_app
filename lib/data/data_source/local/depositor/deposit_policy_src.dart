import 'package:friends_fraternity_app/data/model/model.dart';
import 'package:friends_fraternity_app/domain/entity/export_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class DepositPolicySrc {
  static const kKeyDepositPolicy = "DEPOSIT_POLICY";
  Future<bool> saveDepositPolicy(DepositPolicy policy);
  DepositPolicy retrieveDepositPolicy();
}

class DepositPolicySrcImpl implements DepositPolicySrc {
  final SharedPreferences _prefs;

  DepositPolicySrcImpl(this._prefs);

  @override
  Future<bool> saveDepositPolicy(DepositPolicy policy) {
    return _prefs.setString(
      DepositPolicySrc.kKeyDepositPolicy,
      DepositPolicyModel.fromDepositPolicy(policy).toJson(),
    );
  }

  @override
  DepositPolicy retrieveDepositPolicy() {
    String policyJson = _prefs.getString(DepositPolicySrc.kKeyDepositPolicy) ??
        DepositPolicyModel.toHardCodedJson();
    return DepositPolicyModel.fromJson(policyJson);
  }
}
