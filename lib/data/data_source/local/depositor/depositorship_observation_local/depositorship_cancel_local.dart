import 'package:friends_fraternity_app/core/params/export_param.dart';
import 'package:friends_fraternity_app/data/model/model.dart';

abstract class DepositorshipCancelLocal {
  Future<DepositorshipCancelStatusModel> call(Params params);
}

class DepositorshipCancelLocalImpl implements DepositorshipCancelLocal {
  @override
  Future<DepositorshipCancelStatusModel> call(Params params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
