import 'package:friends_fraternity_app/core/params/param_exporter.dart';
import 'package:friends_fraternity_app/data/model/model.dart';

abstract class DepositorListLocal {
  Future<DepositorListModel> call(Params params);
}

class DepositorshipCancelLocalImpl implements DepositorListLocal {
  @override
  Future<DepositorListModel> call(Params params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
