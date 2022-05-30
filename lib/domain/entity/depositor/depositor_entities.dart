import 'package:equatable/equatable.dart';

class DepositorRegistration extends Equatable {
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

  @override
  List<Object?> get props => [
        name,
        nid,
        mobileNo,
        firstDepositDate,
        isActive,
      ];
}

class Depositor extends Equatable {
  final int dueMonths;
  final int monthsDepositInAdvance;
  final String nid;
  final String name;
  final String mobileNo;
  final String firstDepositDate;
  final String lastDepositDate;
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
    required this.dueMonths,
    required this.monthsDepositInAdvance,
  });

  @override
  List<Object?> get props => [
        nid,
        name,
        mobileNo,
        firstDepositDate,
        lastDepositDate,
        totalDeposit,
        totalDepositWithPenalty,
        isActive
      ];
}

class DepositPolicy extends Equatable {
  final num amount;
  final num penalty;
  final num depositorshipRevocationTimeLimit;

  DepositPolicy({
    required this.amount,
    required this.penalty,
    required this.depositorshipRevocationTimeLimit,
  });

  @override
  List<Object?> get props => [
        amount,
        penalty,
        depositorshipRevocationTimeLimit,
      ];
}

class EachMonthDeposit extends Equatable {
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

  @override
  List<Object?> get props => [
        depositorNID,
        depositDate,
        depositAmount,
        penalty,
      ];
}

class DepositorshipCancelStatus extends Equatable {
  final bool isCancelled;
  final String message;

  DepositorshipCancelStatus(this.isCancelled, this.message);

  @override
  List<Object?> get props => [isCancelled, message];
}

class DepositorshipObservation extends Equatable {
  final List<Depositor> observedDepositors;
  final List<String> cancelledDepositors;

  DepositorshipObservation({
    required this.observedDepositors,
    required this.cancelledDepositors,
  });

  @override
  List<Object?> get props => [observedDepositors, cancelledDepositors];
}
