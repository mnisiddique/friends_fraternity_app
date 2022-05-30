import 'dart:convert';

import 'package:friends_fraternity_app/core/params/params.dart';
import 'package:friends_fraternity_app/domain/entity/export_entity.dart';

class DepositorModel extends Depositor implements Params {
  DepositorModel({
    required String nid,
    required String name,
    required String mobileNo,
    required String firstDepositDate,
    required String lastDepositDate,
    required num totalDeposit,
    required num totalDepositWithPenalty,
    required bool isActive,
    required int dueMonths,
    required int monthsDepositInAdvance,
  }) : super(
          nid: nid,
          name: name,
          mobileNo: mobileNo,
          firstDepositDate: firstDepositDate,
          lastDepositDate: lastDepositDate,
          totalDeposit: totalDeposit,
          totalDepositWithPenalty: totalDepositWithPenalty,
          dueMonths: dueMonths,
          monthsDepositInAdvance: monthsDepositInAdvance,
          isActive: isActive,
        );

  DepositorModel copyWith({
    String? nid,
    String? name,
    String? mobileNo,
    String? firstDepositDate,
    String? lastDepositDate,
    num? totalDeposit,
    num? totalDepositWithPenalty,
    bool? isActive,
    int? dueMonths,
    int? monthsDepositInAdvance,
  }) {
    return DepositorModel(
      nid: nid ?? this.nid,
      name: name ?? this.name,
      mobileNo: mobileNo ?? this.mobileNo,
      firstDepositDate: firstDepositDate ?? this.firstDepositDate,
      lastDepositDate: lastDepositDate ?? this.lastDepositDate,
      totalDeposit: totalDeposit ?? this.totalDeposit,
      totalDepositWithPenalty: totalDepositWithPenalty ?? this.totalDeposit,
      isActive: isActive ?? this.isActive,
      dueMonths: dueMonths ?? this.dueMonths,
      monthsDepositInAdvance:
          monthsDepositInAdvance ?? this.monthsDepositInAdvance,
    );
  }

  factory DepositorModel.fromJson(String stringResp) {
    final Map<String, dynamic> decodedJson = json.decode(stringResp);
    return DepositorModel(
      nid: decodedJson["nid"],
      name: decodedJson["name"],
      mobileNo: decodedJson["mobileNo"],
      firstDepositDate: decodedJson["firstDepositDate"],
      lastDepositDate: decodedJson["lastDepositDate"],
      totalDeposit: decodedJson["totalDeposit"],
      totalDepositWithPenalty: decodedJson["totalDepositWithPenalty"],
      isActive: decodedJson["isActive"],
      dueMonths: decodedJson["dueMonths"],
      monthsDepositInAdvance: decodedJson["monthsDepositInAdvance"],
    );
  }

  factory DepositorModel.fromMap(Map<String, dynamic> decodedJson) {
    return DepositorModel(
      nid: decodedJson["nid"],
      name: decodedJson["name"],
      mobileNo: decodedJson["mobileNo"],
      firstDepositDate: decodedJson["firstDepositDate"],
      lastDepositDate: decodedJson["lastDepositDate"],
      totalDeposit: decodedJson["totalDeposit"],
      totalDepositWithPenalty: decodedJson["totalDepositWithPenalty"],
      isActive: decodedJson["isActive"],
      dueMonths: decodedJson["dueMonths"],
      monthsDepositInAdvance: decodedJson["monthsDepositInAdvance"],
    );
  }

  String toJson() {
    return json.encode({
      "nid": this.nid,
      "name": this.name,
      "mobileNo": this.mobileNo,
      "firstDepositDate": this.firstDepositDate,
      "lastDepositDate": this.lastDepositDate,
      "totalDeposit": this.totalDeposit,
      "totalDepositWithPenalty": this.totalDepositWithPenalty,
      "isActive": this.isActive,
      "dueMonths": this.dueMonths,
      "monthsDepositInAdvance": this.monthsDepositInAdvance,
    });
  }
}

class DepositorListModel implements Params {
  final List<DepositorModel> depositors;

  DepositorListModel(this.depositors);

  factory DepositorListModel.fromJson(String jsonResp) {
    final List<dynamic> decodedJson = json.decode(jsonResp);
    return DepositorListModel(
      decodedJson.map((mapItem) => DepositorModel.fromMap(mapItem)).toList(),
    );
  }
}
