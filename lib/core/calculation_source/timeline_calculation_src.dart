import 'package:friends_fraternity_app/core/params/export_param.dart';

abstract class TimelineObserverRepo {
  int workoutDueMonth(Params params);
  int workoutAdvanceMonth(Params params);
}
