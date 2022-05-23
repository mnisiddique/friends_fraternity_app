import 'dart:convert';

import 'package:friends_fraternity_app/domain/entity/entity_exporter.dart';

class DepositorModel extends Depositor {
  final int dueMonths;
  final int monthsDepositInAdvance;

  DepositorModel({
    required String nid,
    required String name,
    required String mobileNo,
    required DateTime firstDepositDate,
    required DateTime lastDepositDate,
    required num totalDeposit,
    required num totalDepositWithPenalty,
    required bool isActive,
    required this.dueMonths,
    required this.monthsDepositInAdvance,
  }) : super(
          nid: nid,
          name: name,
          mobileNo: mobileNo,
          firstDepositDate: firstDepositDate,
          lastDepositDate: lastDepositDate,
          totalDeposit: totalDeposit,
          totalDepositWithPenalty: totalDepositWithPenalty,
          isActive: isActive,
        );
}

class DepositorshipCancelStatusModel extends DepositorshipCancelStatus {
  DepositorshipCancelStatusModel(bool isCancelled, String message)
      : super(isCancelled, message);

  factory DepositorshipCancelStatusModel.fromJson(String json) {
    final decodedJson = jsonDecode(json);
    return DepositorshipCancelStatusModel(
      decodedJson["isCancelled"],
      decodedJson["message"],
    );
  }
}
