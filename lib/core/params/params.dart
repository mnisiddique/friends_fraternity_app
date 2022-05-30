abstract class Params {}

abstract class TimelineParam extends Params {
  String get firstDate;
  String get lastDate;
  num get totalAmount;
}

class NoParams implements Params {}
