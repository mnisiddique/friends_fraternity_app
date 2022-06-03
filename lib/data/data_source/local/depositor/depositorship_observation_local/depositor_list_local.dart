import 'package:friends_fraternity_app/core/params/export_param.dart';
import 'package:friends_fraternity_app/data/export_model.dart';

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
