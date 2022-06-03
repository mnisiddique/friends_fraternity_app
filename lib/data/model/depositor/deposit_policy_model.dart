import 'dart:convert';

import 'package:friends_fraternity_app/domain/export_entity.dart';

class DepositPolicyModel extends DepositPolicy {
  DepositPolicyModel({
    required super.amount,
    required super.penalty,
    required super.depositorshipRevocationTimeLimit,
  });

  factory DepositPolicyModel.fromDepositPolicy(DepositPolicy model) {
    return DepositPolicyModel(
      amount: model.amount,
      penalty: model.penalty,
      depositorshipRevocationTimeLimit: model.depositorshipRevocationTimeLimit,
    );
  }

  factory DepositPolicyModel.fromJson(String jsonResp) {
    final decodedJson = json.decode(jsonResp);
    return DepositPolicyModel(
      amount: decodedJson["amount"],
      penalty: decodedJson["penalty"],
      depositorshipRevocationTimeLimit:
          decodedJson["depositorshipRevocationTimeLimit"],
    );
  }

  String toJson() {
    return json.encode({
      "amount": amount,
      "penalty": penalty,
      "depositorshipRevocationTimeLimit": depositorshipRevocationTimeLimit,
    });
  }

  static String toHardCodedJson() {
    return json.encode({
      "amount": 1000,
      "penalty": 200,
      "depositorshipRevocationTimeLimit": 3,
    });
  }
}
