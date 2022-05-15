import 'package:flutter/rendering.dart';

class Member {
  final String name;
  final String nid;
  final String mobileNo;
  final String firstInstallationDate;
  final bool isMemberActive;

  Member({
    required this.name,
    required this.nid,
    required this.mobileNo,
    required this.firstInstallationDate,
    this.isMemberActive = true,
  });
}

class MemberInstallment {
  final num amount;
  final num penalty;

  MemberInstallment({
    required this.amount,
    required this.penalty,
  });
}

class MemberEmiTotal {
  final String nid;
  final num emiTotal;
  final num emiTotalWithPenalty;

  MemberEmiTotal({
    required this.nid,
    required this.emiTotal,
    required this.emiTotalWithPenalty,
  });
}
