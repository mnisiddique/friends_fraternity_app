import 'package:friends_fraternity_app/core/params/param_exporter.dart';
import 'package:friends_fraternity_app/data/model/model.dart';

abstract class DepositorListLocal {
  Future<DepositorListModel> retrieveDepositorList(Params params);
  Future<void> saveDepositorList(Params params);
}

class DepositorListLocalImpl implements DepositorListLocal {
  @override
  Future<DepositorListModel> retrieveDepositorList(Params params) {
    // TODO: implement call
    throw UnimplementedError();
  }

  @override
  Future<bool> saveDepositorList(Params params) {
    // TODO: implement saveDepositorList
    throw UnimplementedError();
  }
}
