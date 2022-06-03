import 'package:friends_fraternity_app/core/params/params.dart';
import 'package:friends_fraternity_app/data/export_model.dart';

abstract class DepositorshipCancelRemote {
  Future<DepositorshipCancelStatusModel> call(Params params);
}

class DepositorshipCancelRemoteImpl implements DepositorshipCancelRemote {
  @override
  Future<DepositorshipCancelStatusModel> call(Params params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
