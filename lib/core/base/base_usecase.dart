import 'package:friends_fraternity_app/core/base/base_params.dart';

abstract class BaseUseCase<T extends BaseParams> {
  void call(T);
}

abstract class BaseUseCaseAsync<T extends BaseParams> {
  Future<void> call(T);
}
