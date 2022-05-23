class DepositorRegistration {
  final String name;
  final String nid;
  final DateTime firstDepositDate;
  final String mobileNo;
  final bool isActive;

  DepositorRegistration({
    required this.name,
    required this.nid,
    required this.mobileNo,
    required this.firstDepositDate,
    this.isActive = true,
  });
}

class Depositor {
  final String nid;
  final String name;
  final String mobileNo;
  final DateTime firstDepositDate;
  final DateTime lastDepositDate;
  final num totalDeposit;
  final num totalDepositWithPenalty;
  final bool isActive;

  Depositor({
    required this.nid,
    required this.name,
    required this.mobileNo,
    required this.firstDepositDate,
    required this.lastDepositDate,
    required this.totalDeposit,
    required this.totalDepositWithPenalty,
    required this.isActive,
  });
}

class DepositPolicy {
  final num amount;
  final num penalty;
  final num depositorshipRevocationTimeLimit;

  DepositPolicy({
    required this.amount,
    required this.penalty,
    required this.depositorshipRevocationTimeLimit,
  });
}

class EachMonthDeposit {
  final String depositorNID;
  final String depositDate;
  final num depositAmount;
  final num penalty;

  EachMonthDeposit({
    required this.depositorNID,
    required this.depositDate,
    required this.depositAmount,
    required this.penalty,
  });
}

class DepositorshipCancelStatus {
  final bool isCancelled;
  final String message;

  DepositorshipCancelStatus(this.isCancelled, this.message);
}

class DepositorshipObservation {
  final List<Depositor> observedDepositors;
  final List<String> cancelledDepositors;

  DepositorshipObservation({
    required this.observedDepositors,
    required this.cancelledDepositors,
  });
}
