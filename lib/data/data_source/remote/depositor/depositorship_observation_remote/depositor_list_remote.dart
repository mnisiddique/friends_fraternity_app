import 'package:friends_fraternity_app/core/params/params.dart';
import 'package:friends_fraternity_app/data/model/model.dart';

abstract class DepositorListRemote {
  Future<DepositorListModel> call(Params params);
}

class DepositorListRemoteImpl implements DepositorListRemote {
  @override
  Future<DepositorListModel> call(Params params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
