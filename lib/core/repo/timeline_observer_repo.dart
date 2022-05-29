import 'package:friends_fraternity_app/core/params/param_exporter.dart';

abstract class TimelineObserverRepo {
  int workoutDueMonth(Params params);
  int workoutAdvanceMonth(Params params);
}
