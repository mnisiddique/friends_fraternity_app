import 'dart:convert';

import 'package:friends_fraternity_app/domain/entity/export_entity.dart';

class EachMonthDepositModel extends EachMonthDeposit {
  EachMonthDepositModel({
    required super.depositorNID,
    required super.depositDate,
    required super.depositAmount,
    required super.penalty,
  });

  factory EachMonthDepositModel.fromMap(Map<String, dynamic> decodedJson) {
    return EachMonthDepositModel(
      depositAmount: decodedJson["depositAmount"],
      depositDate: decodedJson["depositDate"],
      depositorNID: decodedJson["depositorNID"],
      penalty: decodedJson["penalty"],
    );
  }
}

class EachMonthDepositListModel {
  final List<EachMonthDepositModel> emdList;

  EachMonthDepositListModel(this.emdList);

  factory EachMonthDepositListModel.fromJson(String response) {
    final List<dynamic> decodedJson = json.decode(response);
    List<EachMonthDepositModel> list =
        decodedJson.map((item) => EachMonthDepositModel.fromMap(item)).toList();
    // for (Map<String, dynamic> map in decodedJson) {
    //   list.add(EachMonthDepositModel.fromMap(map));
    // }
    return EachMonthDepositListModel(list);
  }
}
